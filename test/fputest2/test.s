.global main
main:
	li a1, 0x00000001
loop:
	fmv.w.x fa1, a1
	fsqrt.s fa1, fa1
	addi a1, a1, 1
	j loop