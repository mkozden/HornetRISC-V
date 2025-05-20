.global main
main:
	li a1, 0xff7fffff
	li a2, 0x7f7fffff
	fmv.w.x fa1, a1
	fmv.w.x fa2, a2
	fadd.s fa3, fa1, fa2, rne
	fadd.s fa4, fa2, fa1, rne
	fadd.s fa3, fa1, fa2, rtz
	fadd.s fa4, fa2, fa1, rtz
	fadd.s fa3, fa1, fa2, rdn
	fadd.s fa4, fa2, fa1, rdn
	fadd.s fa3, fa1, fa2, rup
	fadd.s fa4, fa2, fa1, rup
	fsub.s fa5, fa1, fa1, rne
	fsub.s fa5, fa2, fa2, rne
	fsub.s fa5, fa1, fa1, rtz
	fsub.s fa5, fa2, fa2, rtz
	fsub.s fa5, fa1, fa1, rdn
	fsub.s fa5, fa2, fa2, rdn
	fsub.s fa5, fa1, fa1, rup
	fsub.s fa5, fa2, fa2, rup
