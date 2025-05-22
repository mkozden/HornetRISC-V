.global main
main:
	li a1, 0x007fffff
	li a2, 0x00431144
loop:
	fmv.w.x fa1, a1
	fmv.w.x fa2, a2
	fdiv.s fa3, fa1, fa2
	srli a1, a1, 1
	j loop