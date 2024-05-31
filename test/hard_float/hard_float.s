	.file	"hard_float.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (gc891d8dc23e) version 13.2.0 (riscv64-unknown-elf)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=ilp32f -mtune=rocket -misa-spec=20191213 -march=rv32imf_zicsr
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32	#,,
	sw	s0,28(sp)	#,
	addi	s0,sp,32	#,,
# hard_float.c:4:     volatile float a = 773495.367;
	lui	a5,%hi(.LC0)	# tmp140,
	flw	fa5,%lo(.LC0)(a5)	# tmp141,
	fsw	fa5,-24(s0)	# tmp141, a
# hard_float.c:5:     volatile float b = 253.0538;
	lui	a5,%hi(.LC1)	# tmp142,
	flw	fa5,%lo(.LC1)(a5)	# tmp143,
	fsw	fa5,-28(s0)	# tmp143, b
# hard_float.c:6:     volatile float c = a/b;
	flw	fa4,-24(s0)	# a.0_1, a
	flw	fa5,-28(s0)	# b.1_2, b
	fdiv.s	fa5,fa4,fa5	# _3, a.0_1, b.1_2
# hard_float.c:6:     volatile float c = a/b;
	fsw	fa5,-32(s0)	# _3, c
# hard_float.c:8:     int *addr_ptr = DEBUG_IF_ADDR;
	li	a5,8192		# tmp145,
	addi	a5,a5,16	#, tmp144, tmp145
	sw	a5,-20(s0)	# tmp144, addr_ptr
# hard_float.c:9:     if(c == 3056.644043f)
	flw	fa4,-32(s0)	# c.2_4, c
# hard_float.c:9:     if(c == 3056.644043f)
	lui	a5,%hi(.LC2)	# tmp147,
	flw	fa5,%lo(.LC2)(a5)	# tmp146,
	feq.s	a5,fa4,fa5	#, tmp148, c.2_4, tmp146
	beq	a5,zero,.L2	#, tmp148,,
# hard_float.c:12:         *addr_ptr = 1;
	lw	a5,-20(s0)		# tmp149, addr_ptr
	li	a4,1		# tmp150,
	sw	a4,0(a5)	# tmp150, *addr_ptr_10
	j	.L3		#
.L2:
# hard_float.c:17:         *addr_ptr = 0;
	lw	a5,-20(s0)		# tmp151, addr_ptr
	sw	zero,0(a5)	#, *addr_ptr_10
.L3:
# hard_float.c:20:     return 0;
	li	a5,0		# _13,
# hard_float.c:21: }
	mv	a0,a5	#, <retval>
	lw	s0,28(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
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
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
