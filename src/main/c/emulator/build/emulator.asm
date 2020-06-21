
build/emulator.elf:     file format elf32-littleriscv


Disassembly of section .init:

80000000 <_start>:
80000000:	00001117          	auipc	sp,0x1
80000004:	17810113          	addi	sp,sp,376 # 80001178 <_sp>
80000008:	00001517          	auipc	a0,0x1
8000000c:	8d050513          	addi	a0,a0,-1840 # 800008d8 <_data>
80000010:	00001597          	auipc	a1,0x1
80000014:	8c858593          	addi	a1,a1,-1848 # 800008d8 <_data>
80000018:	00001617          	auipc	a2,0x1
8000001c:	96060613          	addi	a2,a2,-1696 # 80000978 <__bss_start>
80000020:	00c5fc63          	bgeu	a1,a2,80000038 <_start+0x38>
80000024:	00052283          	lw	t0,0(a0)
80000028:	0055a023          	sw	t0,0(a1)
8000002c:	00450513          	addi	a0,a0,4
80000030:	00458593          	addi	a1,a1,4
80000034:	fec5e8e3          	bltu	a1,a2,80000024 <_start+0x24>
80000038:	00001517          	auipc	a0,0x1
8000003c:	94050513          	addi	a0,a0,-1728 # 80000978 <__bss_start>
80000040:	00001597          	auipc	a1,0x1
80000044:	93858593          	addi	a1,a1,-1736 # 80000978 <__bss_start>
80000048:	00b57863          	bgeu	a0,a1,80000058 <_start+0x58>
8000004c:	00052023          	sw	zero,0(a0)
80000050:	00450513          	addi	a0,a0,4
80000054:	feb56ce3          	bltu	a0,a1,8000004c <_start+0x4c>
80000058:	7e4000ef          	jal	ra,8000083c <__libc_init_array>
8000005c:	178000ef          	jal	ra,800001d4 <init>
80000060:	00000097          	auipc	ra,0x0
80000064:	01408093          	addi	ra,ra,20 # 80000074 <done>
80000068:	00000513          	li	a0,0
8000006c:	c30005b7          	lui	a1,0xc3000
80000070:	30200073          	mret

80000074 <done>:
80000074:	0000006f          	j	80000074 <done>

80000078 <_init>:
80000078:	00008067          	ret

8000007c <trapEntry>:
8000007c:	34011173          	csrrw	sp,mscratch,sp
80000080:	00112223          	sw	ra,4(sp)
80000084:	00312623          	sw	gp,12(sp)
80000088:	00412823          	sw	tp,16(sp)
8000008c:	00512a23          	sw	t0,20(sp)
80000090:	00612c23          	sw	t1,24(sp)
80000094:	00712e23          	sw	t2,28(sp)
80000098:	02812023          	sw	s0,32(sp)
8000009c:	02912223          	sw	s1,36(sp)
800000a0:	02a12423          	sw	a0,40(sp)
800000a4:	02b12623          	sw	a1,44(sp)
800000a8:	02c12823          	sw	a2,48(sp)
800000ac:	02d12a23          	sw	a3,52(sp)
800000b0:	02e12c23          	sw	a4,56(sp)
800000b4:	02f12e23          	sw	a5,60(sp)
800000b8:	05012023          	sw	a6,64(sp)
800000bc:	05112223          	sw	a7,68(sp)
800000c0:	05212423          	sw	s2,72(sp)
800000c4:	05312623          	sw	s3,76(sp)
800000c8:	05412823          	sw	s4,80(sp)
800000cc:	05512a23          	sw	s5,84(sp)
800000d0:	05612c23          	sw	s6,88(sp)
800000d4:	05712e23          	sw	s7,92(sp)
800000d8:	07812023          	sw	s8,96(sp)
800000dc:	07912223          	sw	s9,100(sp)
800000e0:	07a12423          	sw	s10,104(sp)
800000e4:	07b12623          	sw	s11,108(sp)
800000e8:	07c12823          	sw	t3,112(sp)
800000ec:	07d12a23          	sw	t4,116(sp)
800000f0:	07e12c23          	sw	t5,120(sp)
800000f4:	07f12e23          	sw	t6,124(sp)
800000f8:	2c4000ef          	jal	ra,800003bc <trap>
800000fc:	00412083          	lw	ra,4(sp)
80000100:	00c12183          	lw	gp,12(sp)
80000104:	01012203          	lw	tp,16(sp)
80000108:	01412283          	lw	t0,20(sp)
8000010c:	01812303          	lw	t1,24(sp)
80000110:	01c12383          	lw	t2,28(sp)
80000114:	02012403          	lw	s0,32(sp)
80000118:	02412483          	lw	s1,36(sp)
8000011c:	02812503          	lw	a0,40(sp)
80000120:	02c12583          	lw	a1,44(sp)
80000124:	03012603          	lw	a2,48(sp)
80000128:	03412683          	lw	a3,52(sp)
8000012c:	03812703          	lw	a4,56(sp)
80000130:	03c12783          	lw	a5,60(sp)
80000134:	04012803          	lw	a6,64(sp)
80000138:	04412883          	lw	a7,68(sp)
8000013c:	04812903          	lw	s2,72(sp)
80000140:	04c12983          	lw	s3,76(sp)
80000144:	05012a03          	lw	s4,80(sp)
80000148:	05412a83          	lw	s5,84(sp)
8000014c:	05812b03          	lw	s6,88(sp)
80000150:	05c12b83          	lw	s7,92(sp)
80000154:	06012c03          	lw	s8,96(sp)
80000158:	06412c83          	lw	s9,100(sp)
8000015c:	06812d03          	lw	s10,104(sp)
80000160:	06c12d83          	lw	s11,108(sp)
80000164:	07012e03          	lw	t3,112(sp)
80000168:	07412e83          	lw	t4,116(sp)
8000016c:	07812f03          	lw	t5,120(sp)
80000170:	07c12f83          	lw	t6,124(sp)
80000174:	34011173          	csrrw	sp,mscratch,sp
80000178:	30200073          	mret

Disassembly of section .text:

8000017c <putString>:
8000017c:	ff010113          	addi	sp,sp,-16
80000180:	00812423          	sw	s0,8(sp)
80000184:	00112623          	sw	ra,12(sp)
80000188:	00050413          	mv	s0,a0
8000018c:	00054503          	lbu	a0,0(a0)
80000190:	00050a63          	beqz	a0,800001a4 <putString+0x28>
80000194:	00140413          	addi	s0,s0,1
80000198:	668000ef          	jal	ra,80000800 <putC>
8000019c:	00044503          	lbu	a0,0(s0)
800001a0:	fe051ae3          	bnez	a0,80000194 <putString+0x18>
800001a4:	00c12083          	lw	ra,12(sp)
800001a8:	00812403          	lw	s0,8(sp)
800001ac:	01010113          	addi	sp,sp,16
800001b0:	00008067          	ret

800001b4 <setup_pmp>:
800001b4:	01f00793          	li	a5,31
800001b8:	fff00713          	li	a4,-1
800001bc:	00000297          	auipc	t0,0x0
800001c0:	01428293          	addi	t0,t0,20 # 800001d0 <setup_pmp+0x1c>
800001c4:	30529073          	csrw	mtvec,t0
800001c8:	3b071073          	csrw	pmpaddr0,a4
800001cc:	3a079073          	csrw	pmpcfg0,a5
800001d0:	00008067          	ret

800001d4 <init>:
800001d4:	ff010113          	addi	sp,sp,-16
800001d8:	00112623          	sw	ra,12(sp)
800001dc:	00812423          	sw	s0,8(sp)
800001e0:	01f00793          	li	a5,31
800001e4:	fff00713          	li	a4,-1
800001e8:	00000297          	auipc	t0,0x0
800001ec:	01428293          	addi	t0,t0,20 # 800001fc <init+0x28>
800001f0:	30529073          	csrw	mtvec,t0
800001f4:	3b071073          	csrw	pmpaddr0,a4
800001f8:	3a079073          	csrw	pmpcfg0,a5
800001fc:	80001437          	lui	s0,0x80001
80000200:	638000ef          	jal	ra,80000838 <halInit>
80000204:	8d840413          	addi	s0,s0,-1832 # 800008d8 <_sp+0xfffff760>
80000208:	02a00513          	li	a0,42
8000020c:	00140413          	addi	s0,s0,1
80000210:	5f0000ef          	jal	ra,80000800 <putC>
80000214:	00044503          	lbu	a0,0(s0)
80000218:	fe051ae3          	bnez	a0,8000020c <init+0x38>
8000021c:	800007b7          	lui	a5,0x80000
80000220:	07c78793          	addi	a5,a5,124 # 8000007c <_sp+0xffffef04>
80000224:	30579073          	csrw	mtvec,a5
80000228:	800017b7          	lui	a5,0x80001
8000022c:	0f878793          	addi	a5,a5,248 # 800010f8 <_sp+0xffffff80>
80000230:	34079073          	csrw	mscratch,a5
80000234:	000017b7          	lui	a5,0x1
80000238:	88078793          	addi	a5,a5,-1920 # 880 <__stack_size+0x80>
8000023c:	30079073          	csrw	mstatus,a5
80000240:	30405073          	csrwi	mie,0
80000244:	c00007b7          	lui	a5,0xc0000
80000248:	34179073          	csrw	mepc,a5
8000024c:	0000b7b7          	lui	a5,0xb
80000250:	10078793          	addi	a5,a5,256 # b100 <__stack_size+0xa900>
80000254:	30279073          	csrw	medeleg,a5
80000258:	22200793          	li	a5,546
8000025c:	30379073          	csrw	mideleg,a5
80000260:	14305073          	csrwi	stval,0
80000264:	80001437          	lui	s0,0x80001
80000268:	8f040413          	addi	s0,s0,-1808 # 800008f0 <_sp+0xfffff778>
8000026c:	02a00513          	li	a0,42
80000270:	00140413          	addi	s0,s0,1
80000274:	58c000ef          	jal	ra,80000800 <putC>
80000278:	00044503          	lbu	a0,0(s0)
8000027c:	fe051ae3          	bnez	a0,80000270 <init+0x9c>
80000280:	00c12083          	lw	ra,12(sp)
80000284:	00812403          	lw	s0,8(sp)
80000288:	01010113          	addi	sp,sp,16
8000028c:	00008067          	ret

80000290 <readRegister>:
80000290:	800017b7          	lui	a5,0x80001
80000294:	0f878793          	addi	a5,a5,248 # 800010f8 <_sp+0xffffff80>
80000298:	00251513          	slli	a0,a0,0x2
8000029c:	00f50533          	add	a0,a0,a5
800002a0:	00052503          	lw	a0,0(a0)
800002a4:	00008067          	ret

800002a8 <writeRegister>:
800002a8:	800017b7          	lui	a5,0x80001
800002ac:	00251513          	slli	a0,a0,0x2
800002b0:	0f878793          	addi	a5,a5,248 # 800010f8 <_sp+0xffffff80>
800002b4:	00f50533          	add	a0,a0,a5
800002b8:	00b52023          	sw	a1,0(a0)
800002bc:	00008067          	ret

800002c0 <redirectTrap>:
800002c0:	ff010113          	addi	sp,sp,-16
800002c4:	00112623          	sw	ra,12(sp)
800002c8:	530000ef          	jal	ra,800007f8 <stopSim>
800002cc:	343027f3          	csrr	a5,mtval
800002d0:	14379073          	csrw	stval,a5
800002d4:	341027f3          	csrr	a5,mepc
800002d8:	14179073          	csrw	sepc,a5
800002dc:	342027f3          	csrr	a5,mcause
800002e0:	14279073          	csrw	scause,a5
800002e4:	105027f3          	csrr	a5,stvec
800002e8:	34179073          	csrw	mepc,a5
800002ec:	00c12083          	lw	ra,12(sp)
800002f0:	01010113          	addi	sp,sp,16
800002f4:	00008067          	ret

800002f8 <emulationTrapToSupervisorTrap>:
800002f8:	800007b7          	lui	a5,0x80000
800002fc:	07c78793          	addi	a5,a5,124 # 8000007c <_sp+0xffffef04>
80000300:	30579073          	csrw	mtvec,a5
80000304:	343027f3          	csrr	a5,mtval
80000308:	14379073          	csrw	stval,a5
8000030c:	342027f3          	csrr	a5,mcause
80000310:	14279073          	csrw	scause,a5
80000314:	14151073          	csrw	sepc,a0
80000318:	105027f3          	csrr	a5,stvec
8000031c:	34179073          	csrw	mepc,a5
80000320:	0035d793          	srli	a5,a1,0x3
80000324:	00459713          	slli	a4,a1,0x4
80000328:	02077713          	andi	a4,a4,32
8000032c:	1007f793          	andi	a5,a5,256
80000330:	00e7e7b3          	or	a5,a5,a4
80000334:	ffffe737          	lui	a4,0xffffe
80000338:	6dd70713          	addi	a4,a4,1757 # ffffe6dd <_sp+0x7fffd565>
8000033c:	00e5f5b3          	and	a1,a1,a4
80000340:	00001737          	lui	a4,0x1
80000344:	00b7e7b3          	or	a5,a5,a1
80000348:	88070713          	addi	a4,a4,-1920 # 880 <__stack_size+0x80>
8000034c:	00e7e7b3          	or	a5,a5,a4
80000350:	30079073          	csrw	mstatus,a5
80000354:	00008067          	ret

80000358 <readWord>:
80000358:	00050793          	mv	a5,a0
8000035c:	000206b7          	lui	a3,0x20
80000360:	3006a073          	csrs	mstatus,a3
80000364:	00000697          	auipc	a3,0x0
80000368:	01868693          	addi	a3,a3,24 # 8000037c <readWord+0x24>
8000036c:	30569073          	csrw	mtvec,a3
80000370:	00100513          	li	a0,1
80000374:	0007a703          	lw	a4,0(a5)
80000378:	00000513          	li	a0,0
8000037c:	000206b7          	lui	a3,0x20
80000380:	3006b073          	csrc	mstatus,a3
80000384:	00e5a023          	sw	a4,0(a1) # c3000000 <_sp+0x42ffee88>
80000388:	00008067          	ret

8000038c <writeWord>:
8000038c:	00050793          	mv	a5,a0
80000390:	00020737          	lui	a4,0x20
80000394:	30072073          	csrs	mstatus,a4
80000398:	00000717          	auipc	a4,0x0
8000039c:	01870713          	addi	a4,a4,24 # 800003b0 <writeWord+0x24>
800003a0:	30571073          	csrw	mtvec,a4
800003a4:	00100513          	li	a0,1
800003a8:	00b7a023          	sw	a1,0(a5)
800003ac:	00000513          	li	a0,0
800003b0:	00020737          	lui	a4,0x20
800003b4:	30073073          	csrc	mstatus,a4
800003b8:	00008067          	ret

800003bc <trap>:
800003bc:	fe010113          	addi	sp,sp,-32
800003c0:	00112e23          	sw	ra,28(sp)
800003c4:	00812c23          	sw	s0,24(sp)
800003c8:	00912a23          	sw	s1,20(sp)
800003cc:	01212823          	sw	s2,16(sp)
800003d0:	01312623          	sw	s3,12(sp)
800003d4:	342027f3          	csrr	a5,mcause
800003d8:	0807cc63          	bltz	a5,80000470 <trap+0xb4>
800003dc:	00200713          	li	a4,2
800003e0:	0ce78463          	beq	a5,a4,800004a8 <trap+0xec>
800003e4:	00900693          	li	a3,9
800003e8:	04d79463          	bne	a5,a3,80000430 <trap+0x74>
800003ec:	80001437          	lui	s0,0x80001
800003f0:	17840413          	addi	s0,s0,376 # 80001178 <_sp+0x0>
800003f4:	fc442783          	lw	a5,-60(s0)
800003f8:	00100693          	li	a3,1
800003fc:	fa842503          	lw	a0,-88(s0)
80000400:	2cd78063          	beq	a5,a3,800006c0 <trap+0x304>
80000404:	2ce78a63          	beq	a5,a4,800006d8 <trap+0x31c>
80000408:	2e078463          	beqz	a5,800006f0 <trap+0x334>
8000040c:	01812403          	lw	s0,24(sp)
80000410:	01c12083          	lw	ra,28(sp)
80000414:	01412483          	lw	s1,20(sp)
80000418:	01012903          	lw	s2,16(sp)
8000041c:	00c12983          	lw	s3,12(sp)
80000420:	02010113          	addi	sp,sp,32
80000424:	3d40006f          	j	800007f8 <stopSim>
80000428:	0074f493          	andi	s1,s1,7
8000042c:	16f48063          	beq	s1,a5,8000058c <trap+0x1d0>
80000430:	3c8000ef          	jal	ra,800007f8 <stopSim>
80000434:	343027f3          	csrr	a5,mtval
80000438:	14379073          	csrw	stval,a5
8000043c:	341027f3          	csrr	a5,mepc
80000440:	14179073          	csrw	sepc,a5
80000444:	342027f3          	csrr	a5,mcause
80000448:	14279073          	csrw	scause,a5
8000044c:	105027f3          	csrr	a5,stvec
80000450:	34179073          	csrw	mepc,a5
80000454:	01c12083          	lw	ra,28(sp)
80000458:	01812403          	lw	s0,24(sp)
8000045c:	01412483          	lw	s1,20(sp)
80000460:	01012903          	lw	s2,16(sp)
80000464:	00c12983          	lw	s3,12(sp)
80000468:	02010113          	addi	sp,sp,32
8000046c:	00008067          	ret
80000470:	0ff7f793          	andi	a5,a5,255
80000474:	00700713          	li	a4,7
80000478:	fae79ce3          	bne	a5,a4,80000430 <trap+0x74>
8000047c:	02000793          	li	a5,32
80000480:	1447a073          	csrs	sip,a5
80000484:	08000793          	li	a5,128
80000488:	3047b073          	csrc	mie,a5
8000048c:	01c12083          	lw	ra,28(sp)
80000490:	01812403          	lw	s0,24(sp)
80000494:	01412483          	lw	s1,20(sp)
80000498:	01012903          	lw	s2,16(sp)
8000049c:	00c12983          	lw	s3,12(sp)
800004a0:	02010113          	addi	sp,sp,32
800004a4:	00008067          	ret
800004a8:	341029f3          	csrr	s3,mepc
800004ac:	30002673          	csrr	a2,mstatus
800004b0:	34302473          	csrr	s0,mtval
800004b4:	02f00693          	li	a3,47
800004b8:	07f47713          	andi	a4,s0,127
800004bc:	00c45493          	srli	s1,s0,0xc
800004c0:	f6d704e3          	beq	a4,a3,80000428 <trap+0x6c>
800004c4:	07300693          	li	a3,115
800004c8:	f6d714e3          	bne	a4,a3,80000430 <trap+0x74>
800004cc:	0034f493          	andi	s1,s1,3
800004d0:	14f48063          	beq	s1,a5,80000610 <trap+0x254>
800004d4:	00300793          	li	a5,3
800004d8:	12f48c63          	beq	s1,a5,80000610 <trap+0x254>
800004dc:	00100793          	li	a5,1
800004e0:	02f48463          	beq	s1,a5,80000508 <trap+0x14c>
800004e4:	314000ef          	jal	ra,800007f8 <stopSim>
800004e8:	343027f3          	csrr	a5,mtval
800004ec:	14379073          	csrw	stval,a5
800004f0:	341027f3          	csrr	a5,mepc
800004f4:	14179073          	csrw	sepc,a5
800004f8:	342027f3          	csrr	a5,mcause
800004fc:	14279073          	csrw	scause,a5
80000500:	105027f3          	csrr	a5,stvec
80000504:	34179073          	csrw	mepc,a5
80000508:	00001737          	lui	a4,0x1
8000050c:	01445793          	srli	a5,s0,0x14
80000510:	c0270693          	addi	a3,a4,-1022 # c02 <__stack_size+0x402>
80000514:	04f6f463          	bgeu	a3,a5,8000055c <trap+0x1a0>
80000518:	fffff737          	lui	a4,0xfffff
8000051c:	38070713          	addi	a4,a4,896 # fffff380 <_sp+0x7fffe208>
80000520:	00e787b3          	add	a5,a5,a4
80000524:	00200713          	li	a4,2
80000528:	02f76e63          	bltu	a4,a5,80000564 <trap+0x1a8>
8000052c:	2ec000ef          	jal	ra,80000818 <rdtimeh>
80000530:	00050913          	mv	s2,a0
80000534:	1e049263          	bnez	s1,80000718 <trap+0x35c>
80000538:	00545413          	srli	s0,s0,0x5
8000053c:	800017b7          	lui	a5,0x80001
80000540:	0f878793          	addi	a5,a5,248 # 800010f8 <_sp+0xffffff80>
80000544:	07c47413          	andi	s0,s0,124
80000548:	00f40433          	add	s0,s0,a5
8000054c:	01242023          	sw	s2,0(s0)
80000550:	00498993          	addi	s3,s3,4
80000554:	34199073          	csrw	mepc,s3
80000558:	efdff06f          	j	80000454 <trap+0x98>
8000055c:	bff70713          	addi	a4,a4,-1025
80000560:	0af76263          	bltu	a4,a5,80000604 <trap+0x248>
80000564:	294000ef          	jal	ra,800007f8 <stopSim>
80000568:	343027f3          	csrr	a5,mtval
8000056c:	14379073          	csrw	stval,a5
80000570:	341027f3          	csrr	a5,mepc
80000574:	14179073          	csrw	sepc,a5
80000578:	342027f3          	csrr	a5,mcause
8000057c:	14279073          	csrw	scause,a5
80000580:	105027f3          	csrr	a5,stvec
80000584:	34179073          	csrw	mepc,a5
80000588:	fadff06f          	j	80000534 <trap+0x178>
8000058c:	00d45713          	srli	a4,s0,0xd
80000590:	01245793          	srli	a5,s0,0x12
80000594:	800016b7          	lui	a3,0x80001
80000598:	0f868693          	addi	a3,a3,248 # 800010f8 <_sp+0xffffff80>
8000059c:	07c77713          	andi	a4,a4,124
800005a0:	07c7f793          	andi	a5,a5,124
800005a4:	00d70733          	add	a4,a4,a3
800005a8:	00d787b3          	add	a5,a5,a3
800005ac:	00072703          	lw	a4,0(a4)
800005b0:	0007a583          	lw	a1,0(a5)
800005b4:	00020837          	lui	a6,0x20
800005b8:	30082073          	csrs	mstatus,a6
800005bc:	00000817          	auipc	a6,0x0
800005c0:	01880813          	addi	a6,a6,24 # 800005d4 <trap+0x218>
800005c4:	30581073          	csrw	mtvec,a6
800005c8:	00100793          	li	a5,1
800005cc:	00072503          	lw	a0,0(a4)
800005d0:	00000793          	li	a5,0
800005d4:	00020837          	lui	a6,0x20
800005d8:	30083073          	csrc	mstatus,a6
800005dc:	16079263          	bnez	a5,80000740 <trap+0x384>
800005e0:	01b45793          	srli	a5,s0,0x1b
800005e4:	01c00813          	li	a6,28
800005e8:	e4f864e3          	bltu	a6,a5,80000430 <trap+0x74>
800005ec:	80001837          	lui	a6,0x80001
800005f0:	00279793          	slli	a5,a5,0x2
800005f4:	90480813          	addi	a6,a6,-1788 # 80000904 <_sp+0xfffff78c>
800005f8:	010787b3          	add	a5,a5,a6
800005fc:	0007a783          	lw	a5,0(a5)
80000600:	00078067          	jr	a5
80000604:	20c000ef          	jal	ra,80000810 <rdtime>
80000608:	00050913          	mv	s2,a0
8000060c:	f29ff06f          	j	80000534 <trap+0x178>
80000610:	00f45493          	srli	s1,s0,0xf
80000614:	01f4f493          	andi	s1,s1,31
80000618:	009034b3          	snez	s1,s1
8000061c:	eedff06f          	j	80000508 <trap+0x14c>
80000620:	00a5f463          	bgeu	a1,a0,80000628 <trap+0x26c>
80000624:	00050593          	mv	a1,a0
80000628:	00020837          	lui	a6,0x20
8000062c:	30082073          	csrs	mstatus,a6
80000630:	00000817          	auipc	a6,0x0
80000634:	01880813          	addi	a6,a6,24 # 80000648 <trap+0x28c>
80000638:	30581073          	csrw	mtvec,a6
8000063c:	00100793          	li	a5,1
80000640:	00b72023          	sw	a1,0(a4)
80000644:	00000793          	li	a5,0
80000648:	00020837          	lui	a6,0x20
8000064c:	30083073          	csrc	mstatus,a6
80000650:	80000737          	lui	a4,0x80000
80000654:	07c70713          	addi	a4,a4,124 # 8000007c <_sp+0xffffef04>
80000658:	14079463          	bnez	a5,800007a0 <trap+0x3e4>
8000065c:	00545793          	srli	a5,s0,0x5
80000660:	07c7f793          	andi	a5,a5,124
80000664:	00d786b3          	add	a3,a5,a3
80000668:	00a6a023          	sw	a0,0(a3)
8000066c:	00498993          	addi	s3,s3,4
80000670:	34199073          	csrw	mepc,s3
80000674:	30571073          	csrw	mtvec,a4
80000678:	dddff06f          	j	80000454 <trap+0x98>
8000067c:	00a5c5b3          	xor	a1,a1,a0
80000680:	fa9ff06f          	j	80000628 <trap+0x26c>
80000684:	faa5d2e3          	bge	a1,a0,80000628 <trap+0x26c>
80000688:	00050593          	mv	a1,a0
8000068c:	f9dff06f          	j	80000628 <trap+0x26c>
80000690:	f8b55ce3          	bge	a0,a1,80000628 <trap+0x26c>
80000694:	00050593          	mv	a1,a0
80000698:	f91ff06f          	j	80000628 <trap+0x26c>
8000069c:	00a5f5b3          	and	a1,a1,a0
800006a0:	f89ff06f          	j	80000628 <trap+0x26c>
800006a4:	00a5e5b3          	or	a1,a1,a0
800006a8:	f81ff06f          	j	80000628 <trap+0x26c>
800006ac:	f6b57ee3          	bgeu	a0,a1,80000628 <trap+0x26c>
800006b0:	00050593          	mv	a1,a0
800006b4:	f75ff06f          	j	80000628 <trap+0x26c>
800006b8:	00a585b3          	add	a1,a1,a0
800006bc:	f6dff06f          	j	80000628 <trap+0x26c>
800006c0:	0ff57513          	andi	a0,a0,255
800006c4:	13c000ef          	jal	ra,80000800 <putC>
800006c8:	341027f3          	csrr	a5,mepc
800006cc:	00478793          	addi	a5,a5,4
800006d0:	34179073          	csrw	mepc,a5
800006d4:	d81ff06f          	j	80000454 <trap+0x98>
800006d8:	130000ef          	jal	ra,80000808 <getC>
800006dc:	faa42423          	sw	a0,-88(s0)
800006e0:	341027f3          	csrr	a5,mepc
800006e4:	00478793          	addi	a5,a5,4
800006e8:	34179073          	csrw	mepc,a5
800006ec:	d69ff06f          	j	80000454 <trap+0x98>
800006f0:	fac42583          	lw	a1,-84(s0)
800006f4:	12c000ef          	jal	ra,80000820 <setMachineTimerCmp>
800006f8:	08000793          	li	a5,128
800006fc:	3047a073          	csrs	mie,a5
80000700:	02000793          	li	a5,32
80000704:	1447b073          	csrc	sip,a5
80000708:	341027f3          	csrr	a5,mepc
8000070c:	00478793          	addi	a5,a5,4
80000710:	34179073          	csrw	mepc,a5
80000714:	d41ff06f          	j	80000454 <trap+0x98>
80000718:	0e0000ef          	jal	ra,800007f8 <stopSim>
8000071c:	343027f3          	csrr	a5,mtval
80000720:	14379073          	csrw	stval,a5
80000724:	341027f3          	csrr	a5,mepc
80000728:	14179073          	csrw	sepc,a5
8000072c:	342027f3          	csrr	a5,mcause
80000730:	14279073          	csrw	scause,a5
80000734:	105027f3          	csrr	a5,stvec
80000738:	34179073          	csrw	mepc,a5
8000073c:	dfdff06f          	j	80000538 <trap+0x17c>
80000740:	800007b7          	lui	a5,0x80000
80000744:	07c78793          	addi	a5,a5,124 # 8000007c <_sp+0xffffef04>
80000748:	30579073          	csrw	mtvec,a5
8000074c:	343027f3          	csrr	a5,mtval
80000750:	14379073          	csrw	stval,a5
80000754:	342027f3          	csrr	a5,mcause
80000758:	14279073          	csrw	scause,a5
8000075c:	14199073          	csrw	sepc,s3
80000760:	105027f3          	csrr	a5,stvec
80000764:	34179073          	csrw	mepc,a5
80000768:	00365793          	srli	a5,a2,0x3
8000076c:	00461713          	slli	a4,a2,0x4
80000770:	02077713          	andi	a4,a4,32
80000774:	1007f793          	andi	a5,a5,256
80000778:	00e7e7b3          	or	a5,a5,a4
8000077c:	ffffe737          	lui	a4,0xffffe
80000780:	6dd70713          	addi	a4,a4,1757 # ffffe6dd <_sp+0x7fffd565>
80000784:	00e67633          	and	a2,a2,a4
80000788:	00001737          	lui	a4,0x1
8000078c:	00c7e7b3          	or	a5,a5,a2
80000790:	88070713          	addi	a4,a4,-1920 # 880 <__stack_size+0x80>
80000794:	00e7e7b3          	or	a5,a5,a4
80000798:	30079073          	csrw	mstatus,a5
8000079c:	cb9ff06f          	j	80000454 <trap+0x98>
800007a0:	30571073          	csrw	mtvec,a4
800007a4:	343027f3          	csrr	a5,mtval
800007a8:	14379073          	csrw	stval,a5
800007ac:	342027f3          	csrr	a5,mcause
800007b0:	14279073          	csrw	scause,a5
800007b4:	14199073          	csrw	sepc,s3
800007b8:	105027f3          	csrr	a5,stvec
800007bc:	34179073          	csrw	mepc,a5
800007c0:	00365793          	srli	a5,a2,0x3
800007c4:	00461713          	slli	a4,a2,0x4
800007c8:	02077713          	andi	a4,a4,32
800007cc:	1007f793          	andi	a5,a5,256
800007d0:	00e7e7b3          	or	a5,a5,a4
800007d4:	ffffe737          	lui	a4,0xffffe
800007d8:	6dd70713          	addi	a4,a4,1757 # ffffe6dd <_sp+0x7fffd565>
800007dc:	00e67633          	and	a2,a2,a4
800007e0:	00c7e633          	or	a2,a5,a2
800007e4:	000017b7          	lui	a5,0x1
800007e8:	88078793          	addi	a5,a5,-1920 # 880 <__stack_size+0x80>
800007ec:	00f667b3          	or	a5,a2,a5
800007f0:	30079073          	csrw	mstatus,a5
800007f4:	c61ff06f          	j	80000454 <trap+0x98>

800007f8 <stopSim>:
800007f8:	fe002e23          	sw	zero,-4(zero) # fffffffc <_sp+0x7fffee84>
800007fc:	0000006f          	j	800007fc <stopSim+0x4>

80000800 <putC>:
80000800:	fea02c23          	sw	a0,-8(zero) # fffffff8 <_sp+0x7fffee80>
80000804:	00008067          	ret

80000808 <getC>:
80000808:	ff802503          	lw	a0,-8(zero) # fffffff8 <_sp+0x7fffee80>
8000080c:	00008067          	ret

80000810 <rdtime>:
80000810:	fe002503          	lw	a0,-32(zero) # ffffffe0 <_sp+0x7fffee68>
80000814:	00008067          	ret

80000818 <rdtimeh>:
80000818:	fe402503          	lw	a0,-28(zero) # ffffffe4 <_sp+0x7fffee6c>
8000081c:	00008067          	ret

80000820 <setMachineTimerCmp>:
80000820:	fec00793          	li	a5,-20
80000824:	fff00713          	li	a4,-1
80000828:	00e7a023          	sw	a4,0(a5)
8000082c:	fea02423          	sw	a0,-24(zero) # ffffffe8 <_sp+0x7fffee70>
80000830:	00b7a023          	sw	a1,0(a5)
80000834:	00008067          	ret

80000838 <halInit>:
80000838:	00008067          	ret

8000083c <__libc_init_array>:
8000083c:	ff010113          	addi	sp,sp,-16
80000840:	00812423          	sw	s0,8(sp)
80000844:	01212023          	sw	s2,0(sp)
80000848:	80001437          	lui	s0,0x80001
8000084c:	80001937          	lui	s2,0x80001
80000850:	8d840793          	addi	a5,s0,-1832 # 800008d8 <_sp+0xfffff760>
80000854:	8d890913          	addi	s2,s2,-1832 # 800008d8 <_sp+0xfffff760>
80000858:	40f90933          	sub	s2,s2,a5
8000085c:	00112623          	sw	ra,12(sp)
80000860:	00912223          	sw	s1,4(sp)
80000864:	40295913          	srai	s2,s2,0x2
80000868:	02090063          	beqz	s2,80000888 <__libc_init_array+0x4c>
8000086c:	8d840413          	addi	s0,s0,-1832
80000870:	00000493          	li	s1,0
80000874:	00042783          	lw	a5,0(s0)
80000878:	00148493          	addi	s1,s1,1
8000087c:	00440413          	addi	s0,s0,4
80000880:	000780e7          	jalr	a5
80000884:	fe9918e3          	bne	s2,s1,80000874 <__libc_init_array+0x38>
80000888:	80001437          	lui	s0,0x80001
8000088c:	80001937          	lui	s2,0x80001
80000890:	8d840793          	addi	a5,s0,-1832 # 800008d8 <_sp+0xfffff760>
80000894:	8d890913          	addi	s2,s2,-1832 # 800008d8 <_sp+0xfffff760>
80000898:	40f90933          	sub	s2,s2,a5
8000089c:	40295913          	srai	s2,s2,0x2
800008a0:	02090063          	beqz	s2,800008c0 <__libc_init_array+0x84>
800008a4:	8d840413          	addi	s0,s0,-1832
800008a8:	00000493          	li	s1,0
800008ac:	00042783          	lw	a5,0(s0)
800008b0:	00148493          	addi	s1,s1,1
800008b4:	00440413          	addi	s0,s0,4
800008b8:	000780e7          	jalr	a5
800008bc:	fe9918e3          	bne	s2,s1,800008ac <__libc_init_array+0x70>
800008c0:	00c12083          	lw	ra,12(sp)
800008c4:	00812403          	lw	s0,8(sp)
800008c8:	00412483          	lw	s1,4(sp)
800008cc:	00012903          	lw	s2,0(sp)
800008d0:	01010113          	addi	sp,sp,16
800008d4:	00008067          	ret
