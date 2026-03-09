.global main
main:
	li a1, 0x00000000
	li a2, 0x00001000
loop:
	beq a1, a2, end
	fmv.w.x fa1, a1
	fsqrt.s fa2, fa1, rup
	fsqrt.s fa2, fa1, rne
	addi a1, a1, 1
	j loop
end:
	ret
