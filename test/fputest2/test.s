.global main
main:
	li a1, 0x00000002
	li a2, 0x00000001
	fmv.w.x fa1, a1
	fmv.w.x fa2, a2
	fadd.s fa3, fa1, fa2, rne
	fadd.s fa4, fa1, fa2, rup
	fsub.s fa5, fa1, fa2, rne
	fsub.s fa6, fa1, fa2, rdn
	fsub.s fa7, fa1, fa2, rtz