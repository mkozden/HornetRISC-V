	.file	"soft_float.c"
	.option nopic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	__divsf3
	.globl	__eqsf2
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	lui	a5,%hi(.LC0)
	lw	a5,%lo(.LC0)(a5)
	sw	a5,-24(s0)
	lui	a5,%hi(.LC1)
	lw	a5,%lo(.LC1)(a5)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	__divsf3
	mv	a5,a0
	sw	a5,-32(s0)
	li	a5,8192
	addi	a5,a5,16
	sw	a5,-20(s0)
	lw	a4,-32(s0)
	lui	a5,%hi(.LC2)
	lw	a1,%lo(.LC2)(a5)
	mv	a0,a4
	call	__eqsf2
	mv	a5,a0
	bne	a5,zero,.L7
	lw	a5,-20(s0)
	li	a4,1
	sw	a4,0(a5)
	j	.L4
.L7:
	lw	a5,-20(s0)
	sw	zero,0(a5)
.L4:
	li	a5,0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	2
.LC0:
	.word	1228724086
	.align	2
.LC1:
	.word	1132268998
	.align	2
.LC2:
	.word	1161759310
	.ident	"GCC: () 13.2.0"
