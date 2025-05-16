
fpu_filter.elf:     file format elf32-littleriscv


Disassembly of section .init:

00000000 <_start>:
   0:	00008117          	auipc	sp,0x8
   4:	ffc10113          	addi	sp,sp,-4 # 7ffc <__stack_top>
   8:	00010433          	add	s0,sp,zero
   c:	000022b7          	lui	t0,0x2
  10:	3002a073          	csrs	mstatus,t0
  14:	0040006f          	j	18 <main>

Disassembly of section .text:

00000018 <main>:
  18:	e6010113          	addi	sp,sp,-416
  1c:	2c800793          	li	a5,712
  20:	18112e23          	sw	ra,412(sp)
  24:	19078693          	addi	a3,a5,400
  28:	00010713          	mv	a4,sp
  2c:	0007a803          	lw	a6,0(a5)
  30:	0047a503          	lw	a0,4(a5)
  34:	0087a583          	lw	a1,8(a5)
  38:	00c7a603          	lw	a2,12(a5)
  3c:	01072023          	sw	a6,0(a4)
  40:	00a72223          	sw	a0,4(a4)
  44:	00b72423          	sw	a1,8(a4)
  48:	00c72623          	sw	a2,12(a4)
  4c:	01078793          	addi	a5,a5,16
  50:	01070713          	addi	a4,a4,16
  54:	fcd79ce3          	bne	a5,a3,2c <main+0x14>
  58:	00010513          	mv	a0,sp
  5c:	00000593          	li	a1,0
  60:	014000ef          	jal	74 <dijkstra>
  64:	19c12083          	lw	ra,412(sp)
  68:	00000513          	li	a0,0
  6c:	1a010113          	addi	sp,sp,416
  70:	00008067          	ret

00000074 <dijkstra>:
  74:	f8010113          	addi	sp,sp,-128
  78:	00259793          	slli	a5,a1,0x2
  7c:	00810293          	addi	t0,sp,8
  80:	05810893          	addi	a7,sp,88
  84:	00578733          	add	a4,a5,t0
  88:	fff00793          	li	a5,-1
  8c:	0ff00f13          	li	t5,255
  90:	00f8a223          	sw	a5,4(a7)
  94:	03010813          	addi	a6,sp,48
  98:	02012823          	sw	zero,48(sp)
  9c:	04f12c23          	sw	a5,88(sp)
  a0:	01e12423          	sw	t5,8(sp)
  a4:	01e12623          	sw	t5,12(sp)
  a8:	01e12823          	sw	t5,16(sp)
  ac:	01e12a23          	sw	t5,20(sp)
  b0:	01e12c23          	sw	t5,24(sp)
  b4:	01e12e23          	sw	t5,28(sp)
  b8:	03e12023          	sw	t5,32(sp)
  bc:	03e12223          	sw	t5,36(sp)
  c0:	03e12423          	sw	t5,40(sp)
  c4:	03e12623          	sw	t5,44(sp)
  c8:	00072023          	sw	zero,0(a4)
  cc:	00082223          	sw	zero,4(a6)
  d0:	00082423          	sw	zero,8(a6)
  d4:	00082623          	sw	zero,12(a6)
  d8:	00082823          	sw	zero,16(a6)
  dc:	00082a23          	sw	zero,20(a6)
  e0:	00082c23          	sw	zero,24(a6)
  e4:	00082e23          	sw	zero,28(a6)
  e8:	02082023          	sw	zero,32(a6)
  ec:	02082223          	sw	zero,36(a6)
  f0:	00f8a423          	sw	a5,8(a7)
  f4:	00f8a623          	sw	a5,12(a7)
  f8:	00f8a823          	sw	a5,16(a7)
  fc:	00f8aa23          	sw	a5,20(a7)
 100:	00f8ac23          	sw	a5,24(a7)
 104:	00f8ae23          	sw	a5,28(a7)
 108:	02f8a023          	sw	a5,32(a7)
 10c:	02f8a223          	sw	a5,36(a7)
 110:	00900f93          	li	t6,9
 114:	00100393          	li	t2,1
 118:	03012e03          	lw	t3,48(sp)
 11c:	000e1863          	bnez	t3,12c <dijkstra+0xb8>
 120:	00812783          	lw	a5,8(sp)
 124:	00000693          	li	a3,0
 128:	00ff5863          	bge	t5,a5,138 <dijkstra+0xc4>
 12c:	fd800693          	li	a3,-40
 130:	fff00e13          	li	t3,-1
 134:	0ff00793          	li	a5,255
 138:	03412703          	lw	a4,52(sp)
 13c:	00071c63          	bnez	a4,154 <dijkstra+0xe0>
 140:	00c12703          	lw	a4,12(sp)
 144:	00e7c863          	blt	a5,a4,154 <dijkstra+0xe0>
 148:	00070793          	mv	a5,a4
 14c:	02800693          	li	a3,40
 150:	00100e13          	li	t3,1
 154:	03812703          	lw	a4,56(sp)
 158:	00071c63          	bnez	a4,170 <dijkstra+0xfc>
 15c:	01012703          	lw	a4,16(sp)
 160:	00e7c863          	blt	a5,a4,170 <dijkstra+0xfc>
 164:	00070793          	mv	a5,a4
 168:	05000693          	li	a3,80
 16c:	00200e13          	li	t3,2
 170:	03c12703          	lw	a4,60(sp)
 174:	00071c63          	bnez	a4,18c <dijkstra+0x118>
 178:	01412703          	lw	a4,20(sp)
 17c:	00e7c863          	blt	a5,a4,18c <dijkstra+0x118>
 180:	00070793          	mv	a5,a4
 184:	07800693          	li	a3,120
 188:	00300e13          	li	t3,3
 18c:	04012703          	lw	a4,64(sp)
 190:	00071c63          	bnez	a4,1a8 <dijkstra+0x134>
 194:	01812703          	lw	a4,24(sp)
 198:	00e7c863          	blt	a5,a4,1a8 <dijkstra+0x134>
 19c:	00070793          	mv	a5,a4
 1a0:	0a000693          	li	a3,160
 1a4:	00400e13          	li	t3,4
 1a8:	04412703          	lw	a4,68(sp)
 1ac:	00071c63          	bnez	a4,1c4 <dijkstra+0x150>
 1b0:	01c12703          	lw	a4,28(sp)
 1b4:	00e7c863          	blt	a5,a4,1c4 <dijkstra+0x150>
 1b8:	00070793          	mv	a5,a4
 1bc:	0c800693          	li	a3,200
 1c0:	00500e13          	li	t3,5
 1c4:	04812703          	lw	a4,72(sp)
 1c8:	00071c63          	bnez	a4,1e0 <dijkstra+0x16c>
 1cc:	02012703          	lw	a4,32(sp)
 1d0:	00e7c863          	blt	a5,a4,1e0 <dijkstra+0x16c>
 1d4:	00070793          	mv	a5,a4
 1d8:	0f000693          	li	a3,240
 1dc:	00600e13          	li	t3,6
 1e0:	04c12703          	lw	a4,76(sp)
 1e4:	00071c63          	bnez	a4,1fc <dijkstra+0x188>
 1e8:	02412703          	lw	a4,36(sp)
 1ec:	00e7c863          	blt	a5,a4,1fc <dijkstra+0x188>
 1f0:	00070793          	mv	a5,a4
 1f4:	11800693          	li	a3,280
 1f8:	00700e13          	li	t3,7
 1fc:	05012703          	lw	a4,80(sp)
 200:	00071c63          	bnez	a4,218 <dijkstra+0x1a4>
 204:	02812703          	lw	a4,40(sp)
 208:	00e7c863          	blt	a5,a4,218 <dijkstra+0x1a4>
 20c:	00070793          	mv	a5,a4
 210:	14000693          	li	a3,320
 214:	00800e13          	li	t3,8
 218:	05412703          	lw	a4,84(sp)
 21c:	00071a63          	bnez	a4,230 <dijkstra+0x1bc>
 220:	02c12703          	lw	a4,44(sp)
 224:	00e7c663          	blt	a5,a4,230 <dijkstra+0x1bc>
 228:	16800693          	li	a3,360
 22c:	00900e13          	li	t3,9
 230:	002e1e93          	slli	t4,t3,0x2
 234:	01d807b3          	add	a5,a6,t4
 238:	0077a023          	sw	t2,0(a5)
 23c:	00d506b3          	add	a3,a0,a3
 240:	005e8eb3          	add	t4,t4,t0
 244:	00080713          	mv	a4,a6
 248:	00028793          	mv	a5,t0
 24c:	00088613          	mv	a2,a7
 250:	00072583          	lw	a1,0(a4)
 254:	00470713          	addi	a4,a4,4
 258:	02059463          	bnez	a1,280 <dijkstra+0x20c>
 25c:	0006a583          	lw	a1,0(a3)
 260:	02058063          	beqz	a1,280 <dijkstra+0x20c>
 264:	000ea303          	lw	t1,0(t4)
 268:	006585b3          	add	a1,a1,t1
 26c:	01e30a63          	beq	t1,t5,280 <dijkstra+0x20c>
 270:	0007a303          	lw	t1,0(a5)
 274:	0065d663          	bge	a1,t1,280 <dijkstra+0x20c>
 278:	00b7a023          	sw	a1,0(a5)
 27c:	01c62023          	sw	t3,0(a2)
 280:	00478793          	addi	a5,a5,4
 284:	00468693          	addi	a3,a3,4
 288:	00460613          	addi	a2,a2,4
 28c:	fcf812e3          	bne	a6,a5,250 <dijkstra+0x1dc>
 290:	ffff8f93          	addi	t6,t6,-1
 294:	e80f92e3          	bnez	t6,118 <dijkstra+0xa4>
 298:	00000693          	li	a3,0
 29c:	fff00713          	li	a4,-1
 2a0:	00a00613          	li	a2,10
 2a4:	00068793          	mv	a5,a3
 2a8:	00279793          	slli	a5,a5,0x2
 2ac:	00f887b3          	add	a5,a7,a5
 2b0:	0007a783          	lw	a5,0(a5)
 2b4:	fee79ae3          	bne	a5,a4,2a8 <dijkstra+0x234>
 2b8:	00168693          	addi	a3,a3,1
 2bc:	fec694e3          	bne	a3,a2,2a4 <dijkstra+0x230>
 2c0:	08010113          	addi	sp,sp,128
 2c4:	00008067          	ret
