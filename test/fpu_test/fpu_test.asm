
fpu_test.elf:     file format elf32-littleriscv


Disassembly of section .init:

00000000 <_start>:
   0:	00008117          	auipc	sp,0x8
   4:	ffc10113          	addi	sp,sp,-4 # 7ffc <__stack_top>
   8:	00010433          	add	s0,sp,zero
   c:	0040006f          	j	10 <main>

Disassembly of section .text:

00000010 <main>:
  10:	fa010113          	addi	sp,sp,-96
  14:	1cc00793          	li	a5,460
  18:	05078693          	addi	a3,a5,80
  1c:	00410713          	addi	a4,sp,4
  20:	0007a803          	lw	a6,0(a5)
  24:	0047a503          	lw	a0,4(a5)
  28:	0087a583          	lw	a1,8(a5)
  2c:	00c7a603          	lw	a2,12(a5)
  30:	01072023          	sw	a6,0(a4)
  34:	00a72223          	sw	a0,4(a4)
  38:	00b72423          	sw	a1,8(a4)
  3c:	00c72623          	sw	a2,12(a4)
  40:	01078793          	addi	a5,a5,16
  44:	01070713          	addi	a4,a4,16
  48:	fcd79ce3          	bne	a5,a3,20 <main+0x10>
  4c:	f0000053          	fmv.w.x	ft0,zero
  50:	0007a283          	lw	t0,0(a5)
  54:	0047af83          	lw	t6,4(a5)
  58:	0087af03          	lw	t5,8(a5)
  5c:	200005d3          	fmv.s	fa1,ft0
  60:	20000753          	fmv.s	fa4,ft0
  64:	20000653          	fmv.s	fa2,ft0
  68:	20000253          	fmv.s	ft4,ft0
  6c:	25002187          	flw	ft3,592(zero) # 250 <__SDATA_BEGIN__>
  70:	25402107          	flw	ft2,596(zero) # 254 <__SDATA_BEGIN__+0x4>
  74:	25802087          	flw	ft1,600(zero) # 258 <__SDATA_BEGIN__+0x8>
  78:	25c02287          	flw	ft5,604(zero) # 25c <__SDATA_BEGIN__+0xc>
  7c:	26002307          	flw	ft6,608(zero) # 260 <__SDATA_BEGIN__+0x10>
  80:	26402387          	flw	ft7,612(zero) # 264 <__SDATA_BEGIN__+0x14>
  84:	26802807          	flw	fa6,616(zero) # 268 <__SDATA_BEGIN__+0x18>
  88:	26c02887          	flw	fa7,620(zero) # 26c <__SDATA_BEGIN__+0x1c>
  8c:	000086b7          	lui	a3,0x8
  90:	00410793          	addi	a5,sp,4
  94:	00572023          	sw	t0,0(a4)
  98:	01f72223          	sw	t6,4(a4)
  9c:	01e72423          	sw	t5,8(a4)
  a0:	01068693          	addi	a3,a3,16 # 8010 <__stack_top+0x14>
  a4:	103677d3          	fmul.s	fa5,fa2,ft3
  a8:	0007a507          	flw	fa0,0(a5)
  ac:	00e77753          	fadd.s	fa4,fa4,fa4
  b0:	1045f6d3          	fmul.s	fa3,fa1,ft4
  b4:	06100713          	li	a4,97
  b8:	00a7f7d3          	fadd.s	fa5,fa5,fa0
  bc:	00e7f7d3          	fadd.s	fa5,fa5,fa4
  c0:	08d7f7d3          	fsub.s	fa5,fa5,fa3
  c4:	0807f7d3          	fsub.s	fa5,fa5,ft0
  c8:	0827f753          	fsub.s	fa4,fa5,ft2
  cc:	20e72753          	fabs.s	fa4,fa4
  d0:	a0171653          	flt.s	a2,fa4,ft1
  d4:	06061e63          	bnez	a2,150 <main+0x140>
  d8:	0027f753          	fadd.s	fa4,fa5,ft2
  dc:	06200713          	li	a4,98
  e0:	20e72753          	fabs.s	fa4,fa4
  e4:	a0171653          	flt.s	a2,fa4,ft1
  e8:	06061463          	bnez	a2,150 <main+0x140>
  ec:	0057f753          	fadd.s	fa4,fa5,ft5
  f0:	06300713          	li	a4,99
  f4:	20e72753          	fabs.s	fa4,fa4
  f8:	a0171653          	flt.s	a2,fa4,ft1
  fc:	04061a63          	bnez	a2,150 <main+0x140>
 100:	0867f753          	fsub.s	fa4,fa5,ft6
 104:	06400713          	li	a4,100
 108:	20e72753          	fabs.s	fa4,fa4
 10c:	a0171653          	flt.s	a2,fa4,ft1
 110:	04061063          	bnez	a2,150 <main+0x140>
 114:	0877f753          	fsub.s	fa4,fa5,ft7
 118:	06500713          	li	a4,101
 11c:	20e72753          	fabs.s	fa4,fa4
 120:	a0171653          	flt.s	a2,fa4,ft1
 124:	02061663          	bnez	a2,150 <main+0x140>
 128:	0907f753          	fsub.s	fa4,fa5,fa6
 12c:	06600713          	li	a4,102
 130:	20e72753          	fabs.s	fa4,fa4
 134:	a0171653          	flt.s	a2,fa4,ft1
 138:	00061c63          	bnez	a2,150 <main+0x140>
 13c:	0117f753          	fadd.s	fa4,fa5,fa7
 140:	06700713          	li	a4,103
 144:	20e72753          	fabs.s	fa4,fa4
 148:	a0171653          	flt.s	a2,fa4,ft1
 14c:	02060a63          	beqz	a2,180 <main+0x170>
 150:	00e68023          	sb	a4,0(a3)
 154:	00478793          	addi	a5,a5,4
 158:	06010713          	addi	a4,sp,96
 15c:	20c60753          	fmv.s	fa4,fa2
 160:	20b58053          	fmv.s	ft0,fa1
 164:	00e78863          	beq	a5,a4,174 <main+0x164>
 168:	20f785d3          	fmv.s	fa1,fa5
 16c:	20a50653          	fmv.s	fa2,fa0
 170:	f35ff06f          	j	a4 <main+0x94>
 174:	00000513          	li	a0,0
 178:	06010113          	addi	sp,sp,96
 17c:	00008067          	ret
 180:	27002707          	flw	fa4,624(zero) # 270 <__SDATA_BEGIN__+0x20>
 184:	06800713          	li	a4,104
 188:	08e7f753          	fsub.s	fa4,fa5,fa4
 18c:	20e72753          	fabs.s	fa4,fa4
 190:	a0171653          	flt.s	a2,fa4,ft1
 194:	fa061ee3          	bnez	a2,150 <main+0x140>
 198:	27402707          	flw	fa4,628(zero) # 274 <__SDATA_BEGIN__+0x24>
 19c:	06900713          	li	a4,105
 1a0:	08e7f753          	fsub.s	fa4,fa5,fa4
 1a4:	20e72753          	fabs.s	fa4,fa4
 1a8:	a0171653          	flt.s	a2,fa4,ft1
 1ac:	fa0612e3          	bnez	a2,150 <main+0x140>
 1b0:	0857f753          	fsub.s	fa4,fa5,ft5
 1b4:	20e72753          	fabs.s	fa4,fa4
 1b8:	a0171753          	flt.s	a4,fa4,ft1
 1bc:	40e00733          	neg	a4,a4
 1c0:	ffc77713          	andi	a4,a4,-4
 1c4:	06e70713          	addi	a4,a4,110
 1c8:	f89ff06f          	j	150 <main+0x140>
