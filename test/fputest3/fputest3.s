.global main
main:
	li a1, 0x00000001
loop:
	fmv.w.x fa1, a1
	fsqrt.s fa2, fa1, rup
	fsqrt.s fa3, fa1, rne
	feq.s a2, fa3, fa2
	beq a2, zero, diff
	addi a1, a1, 1
	j loop
diff:
	li a2, 0x00008010
	li a3, 0x01
	sb a3, 0(a2)
	addi a1, a1, 1
	j loop