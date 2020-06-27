package vexriscv.plugin

import vexriscv._
import spinal.core._
import spinal.lib._

import scala.collection.mutable


trait RegFileReadKind
object ASYNC extends RegFileReadKind
object SYNC extends RegFileReadKind


class RegFilePlugin(regFileReadyKind : RegFileReadKind,
                    zeroBoot : Boolean = false,
                    x0Init : Boolean = true,
                    writeRfInMemoryStage : Boolean = false,
                    readInExecute : Boolean = false,
                    syncUpdateOnStall : Boolean = true,
                    withShadow : Boolean = false //shadow registers aren't transition hazard free
                   ) extends Plugin[VexRiscv] with RegFileService{
  /*cxzzzz:shadow register(影子寄存器),减小的中断切换上下文时的开销(仅需要切换物理寄存器，而不需要重新load store一遍)
    https://stackoverflow.com/questions/31422246/what-are-shadow-registers-in-mips-and-how-are-they-used
  */
  import Riscv._

  override def readStage(): Stage = if(readInExecute) pipeline.execute else pipeline.decode

  override def setup(pipeline: VexRiscv): Unit = {
    import pipeline.config._
    val decoderService = pipeline.service(classOf[DecoderService])
    decoderService.addDefault(RS1_USE,False)
    decoderService.addDefault(RS2_USE,False)
    decoderService.addDefault(REGFILE_WRITE_VALID,False)
  }

  override def build(pipeline: VexRiscv): Unit = {
    import pipeline._
    import pipeline.config._

    val readStage = if(readInExecute) execute else decode
    val writeStage = if(writeRfInMemoryStage) memory else stages.last

    val global = pipeline plug new Area{
      val regFileSize = if(withShadow) 64 else 32
      val regFile = Mem(Bits(32 bits),regFileSize) addAttribute(Verilator.public)
      if(zeroBoot) regFile.init(List.fill(regFileSize)(B(0, 32 bits)))

      //cxzzzz:定义影子寄存器，并将其使用与否交由csr的0x7C0寄存器配置
      val shadow = ifGen(withShadow)(new Area{
        val write, read, clear = RegInit(False)

        read  clearWhen(clear && !readStage.arbitration.isStuck)
        write clearWhen(clear && !writeStage.arbitration.isStuck)

        //cxzzzz:0x7C0-0x7FF Non-standard read/write(0x7C0由vexriscv定制,但并非所有CPU都如此，在rocket-chip中0x7C0用于设定branch-prediction mode)
        val csrService = pipeline.service(classOf[CsrInterface])
        csrService.w(0x7C0,2 -> clear, 1 -> read, 0 -> write)
      })
    }

    //Disable rd0 write in decoding stage
    when(decode.input(INSTRUCTION)(rdRange) === 0) {
      decode.input(REGFILE_WRITE_VALID) := False
    }

    //Read register file
    readStage plug new Area{
      import readStage._

      //read register file
      //cxzzzz:backticks在scala中的作用:1、避免与保留字冲突2、在match中指定与原变量匹配(而不是声明一个新的同名变量) https://stackoverflow.com/questions/6576594/need-clarification-on-scala-literal-identifiers-backticks
      val srcInstruction = regFileReadyKind match{
        case `ASYNC` => input(INSTRUCTION)
        case `SYNC` if !readInExecute =>  input(INSTRUCTION_ANTICIPATED)
        case `SYNC` if readInExecute =>   if(syncUpdateOnStall) Mux(execute.arbitration.isStuck, execute.input(INSTRUCTION), decode.input(INSTRUCTION)) else  decode.input(INSTRUCTION)
      }

      def shadowPrefix(that : Bits) = if(withShadow) global.shadow.read ## that else that
      val regFileReadAddress1 = U(shadowPrefix(srcInstruction(Riscv.rs1Range)))
      val regFileReadAddress2 = U(shadowPrefix(srcInstruction(Riscv.rs2Range)))

      val (rs1Data,rs2Data) = regFileReadyKind match{
        case `ASYNC` => (global.regFile.readAsync(regFileReadAddress1),global.regFile.readAsync(regFileReadAddress2))
        case `SYNC` =>
          val enable = if(!syncUpdateOnStall) !readStage.arbitration.isStuck else null
          (global.regFile.readSync(regFileReadAddress1, enable),global.regFile.readSync(regFileReadAddress2, enable))
      }

      insert(RS1) := rs1Data
      insert(RS2) := rs2Data
    }

    //Write register file
    writeStage plug new Area {
      import writeStage._

      def shadowPrefix(that : Bits) = if(withShadow) global.shadow.write ## that else that
      val regFileWrite = global.regFile.writePort.addAttribute(Verilator.public).setName("lastStageRegFileWrite")
      regFileWrite.valid := output(REGFILE_WRITE_VALID) && arbitration.isFiring
      regFileWrite.address := U(shadowPrefix(output(INSTRUCTION)(rdRange)))
      regFileWrite.data := output(REGFILE_WRITE_DATA)

      //Ensure no boot glitches modify X0
      if(!x0Init && zeroBoot) when(regFileWrite.address === 0){
        regFileWrite.valid := False
      }

      //CPU will initialise constant register zero in the first cycle
      if(x0Init) {
        val boot = RegNext(False) init (True)
        regFileWrite.valid setWhen (boot)
        //cxzzzz:-?:为什么要区分writeStage==execute的情况?
        if (writeStage != execute) {
          inputInit[Bits](REGFILE_WRITE_DATA, 0)
          inputInit[Bits](INSTRUCTION, 0)
        } else {
          when(boot) {
            regFileWrite.address := 0
            regFileWrite.data := 0
          }
        }
      }
    }
  }
}