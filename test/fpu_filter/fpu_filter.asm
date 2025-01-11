
fpu_filter.elf:     file format elf32-littleriscv


Disassembly of section .init:

00010000 <_start>:
   10000:	00008117          	auipc	sp,0x8
   10004:	ffc10113          	addi	sp,sp,-4 # 17ffc <__stack_top>
   10008:	00010433          	add	s0,sp,zero
   1000c:	000022b7          	lui	t0,0x2
   10010:	3002a073          	csrs	mstatus,t0
   10014:	000100b7          	lui	ra,0x10
   10018:	0040006f          	j	1001c <main>

Disassembly of section .text:

0001001c <main>:
   1001c:	000107b7          	lui	a5,0x10
   10020:	4d47a707          	flw	fa4,1236(a5) # 104d4 <__SDATA_BEGIN__>
   10024:	000107b7          	lui	a5,0x10
   10028:	4d87a787          	flw	fa5,1240(a5) # 104d8 <__SDATA_BEGIN__+0x4>
   1002c:	f7010113          	addi	sp,sp,-144
   10030:	000107b7          	lui	a5,0x10
   10034:	00e12427          	fsw	fa4,8(sp)
   10038:	4dc7a687          	flw	fa3,1244(a5) # 104dc <__SDATA_BEGIN__+0x8>
   1003c:	000107b7          	lui	a5,0x10
   10040:	00f12627          	fsw	fa5,12(sp)
   10044:	4e07a707          	flw	fa4,1248(a5) # 104e0 <__SDATA_BEGIN__+0xc>
   10048:	000107b7          	lui	a5,0x10
   1004c:	00012823          	sw	zero,16(sp)
   10050:	4e47a787          	flw	fa5,1252(a5) # 104e4 <__SDATA_BEGIN__+0x10>
   10054:	000107b7          	lui	a5,0x10
   10058:	00d12a27          	fsw	fa3,20(sp)
   1005c:	4e87a687          	flw	fa3,1256(a5) # 104e8 <__SDATA_BEGIN__+0x14>
   10060:	000107b7          	lui	a5,0x10
   10064:	00e12c27          	fsw	fa4,24(sp)
   10068:	4ec7a707          	flw	fa4,1260(a5) # 104ec <__SDATA_BEGIN__+0x18>
   1006c:	000107b7          	lui	a5,0x10
   10070:	00f12e27          	fsw	fa5,28(sp)
   10074:	4f07a787          	flw	fa5,1264(a5) # 104f0 <__SDATA_BEGIN__+0x1c>
   10078:	02d12027          	fsw	fa3,32(sp)
   1007c:	000107b7          	lui	a5,0x10
   10080:	02e12227          	fsw	fa4,36(sp)
   10084:	45078793          	addi	a5,a5,1104 # 10450 <main+0x434>
   10088:	02f12427          	fsw	fa5,40(sp)
   1008c:	05078693          	addi	a3,a5,80
   10090:	03410713          	addi	a4,sp,52
   10094:	0007a803          	lw	a6,0(a5)
   10098:	0047a503          	lw	a0,4(a5)
   1009c:	0087a583          	lw	a1,8(a5)
   100a0:	00c7a603          	lw	a2,12(a5)
   100a4:	01072023          	sw	a6,0(a4)
   100a8:	00a72223          	sw	a0,4(a4)
   100ac:	00b72423          	sw	a1,8(a4)
   100b0:	00c72623          	sw	a2,12(a4)
   100b4:	01078793          	addi	a5,a5,16
   100b8:	01070713          	addi	a4,a4,16
   100bc:	fcd79ce3          	bne	a5,a3,10094 <main+0x78>
   100c0:	0007af03          	lw	t5,0(a5)
   100c4:	0047ae83          	lw	t4,4(a5)
   100c8:	0087ae03          	lw	t3,8(a5)
   100cc:	00010337          	lui	t1,0x10
   100d0:	000105b7          	lui	a1,0x10
   100d4:	000108b7          	lui	a7,0x10
   100d8:	00010837          	lui	a6,0x10
   100dc:	00010537          	lui	a0,0x10
   100e0:	00010637          	lui	a2,0x10
   100e4:	000106b7          	lui	a3,0x10
   100e8:	01e72023          	sw	t5,0(a4)
   100ec:	01d72223          	sw	t4,4(a4)
   100f0:	01c72423          	sw	t3,8(a4)
   100f4:	4f432507          	flw	fa0,1268(t1) # 104f4 <__SDATA_BEGIN__+0x20>
   100f8:	4f85a587          	flw	fa1,1272(a1) # 104f8 <__SDATA_BEGIN__+0x24>
   100fc:	4fc8a007          	flw	ft0,1276(a7) # 104fc <__SDATA_BEGIN__+0x28>
   10100:	50082087          	flw	ft1,1280(a6) # 10500 <__SDATA_BEGIN__+0x2c>
   10104:	50452107          	flw	ft2,1284(a0) # 10504 <__SDATA_BEGIN__+0x30>
   10108:	50862187          	flw	ft3,1288(a2) # 10508 <__SDATA_BEGIN__+0x34>
   1010c:	000107b7          	lui	a5,0x10
   10110:	50c6a207          	flw	ft4,1292(a3) # 1050c <__SDATA_BEGIN__+0x38>
   10114:	02012623          	sw	zero,44(sp)
   10118:	000086b7          	lui	a3,0x8
   1011c:	5107a287          	flw	ft5,1296(a5) # 10510 <__SDATA_BEGIN__+0x3c>
   10120:	02012823          	sw	zero,48(sp)
   10124:	03410793          	addi	a5,sp,52
   10128:	01068693          	addi	a3,a3,16 # 8010 <_start-0x7ff0>
   1012c:	0007a787          	flw	fa5,0(a5)
   10130:	06100713          	li	a4,97
   10134:	02f12627          	fsw	fa5,44(sp)
   10138:	00812787          	flw	fa5,8(sp)
   1013c:	02c12607          	flw	fa2,44(sp)
   10140:	01812707          	flw	fa4,24(sp)
   10144:	01c12687          	flw	fa3,28(sp)
   10148:	10c7f7d3          	fmul.s	fa5,fa5,fa2
   1014c:	00c12607          	flw	fa2,12(sp)
   10150:	10d77753          	fmul.s	fa4,fa4,fa3
   10154:	02012387          	flw	ft7,32(sp)
   10158:	01012687          	flw	fa3,16(sp)
   1015c:	02412307          	flw	ft6,36(sp)
   10160:	10767653          	fmul.s	fa2,fa2,ft7
   10164:	00e7f7d3          	fadd.s	fa5,fa5,fa4
   10168:	1066f6d3          	fmul.s	fa3,fa3,ft6
   1016c:	01412707          	flw	fa4,20(sp)
   10170:	02812307          	flw	ft6,40(sp)
   10174:	00c7f7d3          	fadd.s	fa5,fa5,fa2
   10178:	10677753          	fmul.s	fa4,fa4,ft6
   1017c:	08d7f7d3          	fsub.s	fa5,fa5,fa3
   10180:	08e7f7d3          	fsub.s	fa5,fa5,fa4
   10184:	02f12827          	fsw	fa5,48(sp)
   10188:	02c12787          	flw	fa5,44(sp)
   1018c:	00c12687          	flw	fa3,12(sp)
   10190:	03012707          	flw	fa4,48(sp)
   10194:	10d7f7d3          	fmul.s	fa5,fa5,fa3
   10198:	10e7f7d3          	fmul.s	fa5,fa5,fa4
   1019c:	02f12827          	fsw	fa5,48(sp)
   101a0:	03012787          	flw	fa5,48(sp)
   101a4:	00a7f7d3          	fadd.s	fa5,fa5,fa0
   101a8:	20f7a7d3          	fabs.s	fa5,fa5
   101ac:	a0b79653          	flt.s	a2,fa5,fa1
   101b0:	26061263          	bnez	a2,10414 <main+0x3f8>
   101b4:	03012787          	flw	fa5,48(sp)
   101b8:	06200713          	li	a4,98
   101bc:	0807f7d3          	fsub.s	fa5,fa5,ft0
   101c0:	20f7a7d3          	fabs.s	fa5,fa5
   101c4:	a0b79653          	flt.s	a2,fa5,fa1
   101c8:	24061663          	bnez	a2,10414 <main+0x3f8>
   101cc:	03012787          	flw	fa5,48(sp)
   101d0:	06300713          	li	a4,99
   101d4:	0817f7d3          	fsub.s	fa5,fa5,ft1
   101d8:	20f7a7d3          	fabs.s	fa5,fa5
   101dc:	a0b79653          	flt.s	a2,fa5,fa1
   101e0:	22061a63          	bnez	a2,10414 <main+0x3f8>
   101e4:	03012787          	flw	fa5,48(sp)
   101e8:	06400713          	li	a4,100
   101ec:	0027f7d3          	fadd.s	fa5,fa5,ft2
   101f0:	20f7a7d3          	fabs.s	fa5,fa5
   101f4:	a0b79653          	flt.s	a2,fa5,fa1
   101f8:	20061e63          	bnez	a2,10414 <main+0x3f8>
   101fc:	03012787          	flw	fa5,48(sp)
   10200:	06500713          	li	a4,101
   10204:	0837f7d3          	fsub.s	fa5,fa5,ft3
   10208:	20f7a7d3          	fabs.s	fa5,fa5
   1020c:	a0b79653          	flt.s	a2,fa5,fa1
   10210:	20061263          	bnez	a2,10414 <main+0x3f8>
   10214:	03012787          	flw	fa5,48(sp)
   10218:	06600713          	li	a4,102
   1021c:	0847f7d3          	fsub.s	fa5,fa5,ft4
   10220:	20f7a7d3          	fabs.s	fa5,fa5
   10224:	a0b79653          	flt.s	a2,fa5,fa1
   10228:	1e061663          	bnez	a2,10414 <main+0x3f8>
   1022c:	03012787          	flw	fa5,48(sp)
   10230:	06700713          	li	a4,103
   10234:	0857f7d3          	fsub.s	fa5,fa5,ft5
   10238:	20f7a7d3          	fabs.s	fa5,fa5
   1023c:	a0b79653          	flt.s	a2,fa5,fa1
   10240:	1c061a63          	bnez	a2,10414 <main+0x3f8>
   10244:	00010737          	lui	a4,0x10
   10248:	51472707          	flw	fa4,1300(a4) # 10514 <__SDATA_BEGIN__+0x40>
   1024c:	03012787          	flw	fa5,48(sp)
   10250:	06800713          	li	a4,104
   10254:	00e7f7d3          	fadd.s	fa5,fa5,fa4
   10258:	20f7a7d3          	fabs.s	fa5,fa5
   1025c:	a0b79653          	flt.s	a2,fa5,fa1
   10260:	1a061a63          	bnez	a2,10414 <main+0x3f8>
   10264:	00010737          	lui	a4,0x10
   10268:	51872707          	flw	fa4,1304(a4) # 10518 <__SDATA_BEGIN__+0x44>
   1026c:	03012787          	flw	fa5,48(sp)
   10270:	06900713          	li	a4,105
   10274:	08e7f7d3          	fsub.s	fa5,fa5,fa4
   10278:	20f7a7d3          	fabs.s	fa5,fa5
   1027c:	a0b79653          	flt.s	a2,fa5,fa1
   10280:	18061a63          	bnez	a2,10414 <main+0x3f8>
   10284:	00010737          	lui	a4,0x10
   10288:	51c72707          	flw	fa4,1308(a4) # 1051c <__SDATA_BEGIN__+0x48>
   1028c:	03012787          	flw	fa5,48(sp)
   10290:	06a00713          	li	a4,106
   10294:	08e7f7d3          	fsub.s	fa5,fa5,fa4
   10298:	20f7a7d3          	fabs.s	fa5,fa5
   1029c:	a0b79653          	flt.s	a2,fa5,fa1
   102a0:	16061a63          	bnez	a2,10414 <main+0x3f8>
   102a4:	00010737          	lui	a4,0x10
   102a8:	52072687          	flw	fa3,1312(a4) # 10520 <__SDATA_BEGIN__+0x4c>
   102ac:	03012707          	flw	fa4,48(sp)
   102b0:	4f85a787          	flw	fa5,1272(a1)
   102b4:	06b00713          	li	a4,107
   102b8:	08d77753          	fsub.s	fa4,fa4,fa3
   102bc:	20e72753          	fabs.s	fa4,fa4
   102c0:	a0f71653          	flt.s	a2,fa4,fa5
   102c4:	14061863          	bnez	a2,10414 <main+0x3f8>
   102c8:	00010737          	lui	a4,0x10
   102cc:	52472687          	flw	fa3,1316(a4) # 10524 <__SDATA_BEGIN__+0x50>
   102d0:	03012707          	flw	fa4,48(sp)
   102d4:	06c00713          	li	a4,108
   102d8:	00d77753          	fadd.s	fa4,fa4,fa3
   102dc:	20e72753          	fabs.s	fa4,fa4
   102e0:	a0f71653          	flt.s	a2,fa4,fa5
   102e4:	12061863          	bnez	a2,10414 <main+0x3f8>
   102e8:	00010737          	lui	a4,0x10
   102ec:	52872687          	flw	fa3,1320(a4) # 10528 <__SDATA_BEGIN__+0x54>
   102f0:	03012707          	flw	fa4,48(sp)
   102f4:	06d00713          	li	a4,109
   102f8:	08d77753          	fsub.s	fa4,fa4,fa3
   102fc:	20e72753          	fabs.s	fa4,fa4
   10300:	a0f71653          	flt.s	a2,fa4,fa5
   10304:	10061863          	bnez	a2,10414 <main+0x3f8>
   10308:	00010737          	lui	a4,0x10
   1030c:	52c72687          	flw	fa3,1324(a4) # 1052c <__SDATA_BEGIN__+0x58>
   10310:	03012707          	flw	fa4,48(sp)
   10314:	06e00713          	li	a4,110
   10318:	08d77753          	fsub.s	fa4,fa4,fa3
   1031c:	20e72753          	fabs.s	fa4,fa4
   10320:	a0f71653          	flt.s	a2,fa4,fa5
   10324:	0e061863          	bnez	a2,10414 <main+0x3f8>
   10328:	00010737          	lui	a4,0x10
   1032c:	53072607          	flw	fa2,1328(a4) # 10530 <__SDATA_BEGIN__+0x5c>
   10330:	03012707          	flw	fa4,48(sp)
   10334:	06f00713          	li	a4,111
   10338:	08c77753          	fsub.s	fa4,fa4,fa2
   1033c:	20e72753          	fabs.s	fa4,fa4
   10340:	a0f71653          	flt.s	a2,fa4,fa5
   10344:	0c061863          	bnez	a2,10414 <main+0x3f8>
   10348:	03012707          	flw	fa4,48(sp)
   1034c:	07000713          	li	a4,112
   10350:	00d77753          	fadd.s	fa4,fa4,fa3
   10354:	20e72753          	fabs.s	fa4,fa4
   10358:	a0f71653          	flt.s	a2,fa4,fa5
   1035c:	0a061c63          	bnez	a2,10414 <main+0x3f8>
   10360:	00010737          	lui	a4,0x10
   10364:	53472687          	flw	fa3,1332(a4) # 10534 <__SDATA_BEGIN__+0x60>
   10368:	03012707          	flw	fa4,48(sp)
   1036c:	07100713          	li	a4,113
   10370:	00d77753          	fadd.s	fa4,fa4,fa3
   10374:	20e72753          	fabs.s	fa4,fa4
   10378:	a0f71653          	flt.s	a2,fa4,fa5
   1037c:	08061c63          	bnez	a2,10414 <main+0x3f8>
   10380:	00010637          	lui	a2,0x10
   10384:	53862687          	flw	fa3,1336(a2) # 10538 <__SDATA_BEGIN__+0x64>
   10388:	03012707          	flw	fa4,48(sp)
   1038c:	07200713          	li	a4,114
   10390:	08d77753          	fsub.s	fa4,fa4,fa3
   10394:	20e72753          	fabs.s	fa4,fa4
   10398:	a0f71553          	flt.s	a0,fa4,fa5
   1039c:	06051c63          	bnez	a0,10414 <main+0x3f8>
   103a0:	00010537          	lui	a0,0x10
   103a4:	53c52607          	flw	fa2,1340(a0) # 1053c <__SDATA_BEGIN__+0x68>
   103a8:	03012707          	flw	fa4,48(sp)
   103ac:	07300713          	li	a4,115
   103b0:	00c77753          	fadd.s	fa4,fa4,fa2
   103b4:	20e72753          	fabs.s	fa4,fa4
   103b8:	a0f71853          	flt.s	a6,fa4,fa5
   103bc:	04081c63          	bnez	a6,10414 <main+0x3f8>
   103c0:	03012707          	flw	fa4,48(sp)
   103c4:	07400713          	li	a4,116
   103c8:	00d77753          	fadd.s	fa4,fa4,fa3
   103cc:	20e72753          	fabs.s	fa4,fa4
   103d0:	a0f71853          	flt.s	a6,fa4,fa5
   103d4:	04081063          	bnez	a6,10414 <main+0x3f8>
   103d8:	03012787          	flw	fa5,48(sp)
   103dc:	4f85a707          	flw	fa4,1272(a1)
   103e0:	07500713          	li	a4,117
   103e4:	08c7f7d3          	fsub.s	fa5,fa5,fa2
   103e8:	20f7a7d3          	fabs.s	fa5,fa5
   103ec:	a0e79553          	flt.s	a0,fa5,fa4
   103f0:	02051263          	bnez	a0,10414 <main+0x3f8>
   103f4:	03012787          	flw	fa5,48(sp)
   103f8:	53862687          	flw	fa3,1336(a2)
   103fc:	08d7f7d3          	fsub.s	fa5,fa5,fa3
   10400:	20f7a7d3          	fabs.s	fa5,fa5
   10404:	a0e79753          	flt.s	a4,fa5,fa4
   10408:	40e00733          	neg	a4,a4
   1040c:	01e77713          	andi	a4,a4,30
   10410:	05870713          	addi	a4,a4,88
   10414:	00e68023          	sb	a4,0(a3)
   10418:	01c12787          	flw	fa5,28(sp)
   1041c:	00478793          	addi	a5,a5,4
   10420:	09010713          	addi	a4,sp,144
   10424:	02f12027          	fsw	fa5,32(sp)
   10428:	02c12787          	flw	fa5,44(sp)
   1042c:	00f12e27          	fsw	fa5,28(sp)
   10430:	02412787          	flw	fa5,36(sp)
   10434:	02f12427          	fsw	fa5,40(sp)
   10438:	03012787          	flw	fa5,48(sp)
   1043c:	02f12227          	fsw	fa5,36(sp)
   10440:	cee796e3          	bne	a5,a4,1012c <main+0x110>
   10444:	00000513          	li	a0,0
   10448:	09010113          	addi	sp,sp,144
   1044c:	00008067          	ret
