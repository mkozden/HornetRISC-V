.section .init, "ax"
.global _start
_start:
    .cfi_startproc
    la sp, __stack_top
    add s0, sp, zero
	#bitmask with bit 13 set to 1
	li t0, 0x2000
	#load value to mstatus CSR to set mstatus.FS to 1
	csrrs x0, mstatus, t0
    #Return address is stored at x1, which is 0x10000 in this case
    li x1, 0x10000
    jal zero, main
    .cfi_endproc
    .end
