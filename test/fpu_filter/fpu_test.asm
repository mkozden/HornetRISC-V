
fpu_test.elf:     file format elf32-littleriscv


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
   10020:	2107a707          	flw	fa4,528(a5) # 10210 <__SDATA_BEGIN__>
   10024:	000107b7          	lui	a5,0x10
   10028:	2147a787          	flw	fa5,532(a5) # 10214 <__SDATA_BEGIN__+0x4>
   1002c:	f7010113          	addi	sp,sp,-144
   10030:	000107b7          	lui	a5,0x10
   10034:	00e12427          	fsw	fa4,8(sp)
   10038:	2187a687          	flw	fa3,536(a5) # 10218 <__SDATA_BEGIN__+0x8>
   1003c:	000107b7          	lui	a5,0x10
   10040:	00f12627          	fsw	fa5,12(sp)
   10044:	21c7a707          	flw	fa4,540(a5) # 1021c <__SDATA_BEGIN__+0xc>
   10048:	000107b7          	lui	a5,0x10
   1004c:	00012823          	sw	zero,16(sp)
   10050:	2207a787          	flw	fa5,544(a5) # 10220 <__SDATA_BEGIN__+0x10>
   10054:	000107b7          	lui	a5,0x10
   10058:	00d12a27          	fsw	fa3,20(sp)
   1005c:	2247a687          	flw	fa3,548(a5) # 10224 <__SDATA_BEGIN__+0x14>
   10060:	000107b7          	lui	a5,0x10
   10064:	00e12c27          	fsw	fa4,24(sp)
   10068:	2287a707          	flw	fa4,552(a5) # 10228 <__SDATA_BEGIN__+0x18>
   1006c:	000107b7          	lui	a5,0x10
   10070:	00f12e27          	fsw	fa5,28(sp)
   10074:	22c7a787          	flw	fa5,556(a5) # 1022c <__SDATA_BEGIN__+0x1c>
   10078:	02d12027          	fsw	fa3,32(sp)
   1007c:	000107b7          	lui	a5,0x10
   10080:	02e12227          	fsw	fa4,36(sp)
   10084:	18c78793          	addi	a5,a5,396 # 1018c <main+0x170>
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
   100c0:	0007a603          	lw	a2,0(a5)
   100c4:	0047a683          	lw	a3,4(a5)
   100c8:	0087a783          	lw	a5,8(a5)
   100cc:	00c72023          	sw	a2,0(a4)
   100d0:	00d72223          	sw	a3,4(a4)
   100d4:	00f72423          	sw	a5,8(a4)
   100d8:	02012623          	sw	zero,44(sp)
   100dc:	03410793          	addi	a5,sp,52
   100e0:	02012823          	sw	zero,48(sp)
   100e4:	0007a787          	flw	fa5,0(a5)
   100e8:	09010713          	addi	a4,sp,144
   100ec:	00478793          	addi	a5,a5,4
   100f0:	02f12627          	fsw	fa5,44(sp)
   100f4:	00812787          	flw	fa5,8(sp)
   100f8:	02c12607          	flw	fa2,44(sp)
   100fc:	01812707          	flw	fa4,24(sp)
   10100:	01c12687          	flw	fa3,28(sp)
   10104:	10c7f7d3          	fmul.s	fa5,fa5,fa2
   10108:	00c12607          	flw	fa2,12(sp)
   1010c:	10d77753          	fmul.s	fa4,fa4,fa3
   10110:	02012507          	flw	fa0,32(sp)
   10114:	01012687          	flw	fa3,16(sp)
   10118:	02412587          	flw	fa1,36(sp)
   1011c:	10a67653          	fmul.s	fa2,fa2,fa0
   10120:	00e7f7d3          	fadd.s	fa5,fa5,fa4
   10124:	10b6f6d3          	fmul.s	fa3,fa3,fa1
   10128:	01412707          	flw	fa4,20(sp)
   1012c:	02812587          	flw	fa1,40(sp)
   10130:	00c7f7d3          	fadd.s	fa5,fa5,fa2
   10134:	10b77753          	fmul.s	fa4,fa4,fa1
   10138:	08d7f7d3          	fsub.s	fa5,fa5,fa3
   1013c:	08e7f7d3          	fsub.s	fa5,fa5,fa4
   10140:	02f12827          	fsw	fa5,48(sp)
   10144:	02c12787          	flw	fa5,44(sp)
   10148:	00c12687          	flw	fa3,12(sp)
   1014c:	03012707          	flw	fa4,48(sp)
   10150:	10d7f7d3          	fmul.s	fa5,fa5,fa3
   10154:	10e7f7d3          	fmul.s	fa5,fa5,fa4
   10158:	02f12827          	fsw	fa5,48(sp)
   1015c:	01c12787          	flw	fa5,28(sp)
   10160:	02f12027          	fsw	fa5,32(sp)
   10164:	02c12787          	flw	fa5,44(sp)
   10168:	00f12e27          	fsw	fa5,28(sp)
   1016c:	02412787          	flw	fa5,36(sp)
   10170:	02f12427          	fsw	fa5,40(sp)
   10174:	03012787          	flw	fa5,48(sp)
   10178:	02f12227          	fsw	fa5,36(sp)
   1017c:	f6e794e3          	bne	a5,a4,100e4 <main+0xc8>
   10180:	00000513          	li	a0,0
   10184:	09010113          	addi	sp,sp,144
   10188:	00008067          	ret
