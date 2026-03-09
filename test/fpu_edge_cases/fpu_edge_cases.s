.section .text
.global main

main:

# Load float constants via integer registers
li  t0, 0x40600000      # 3.5
li  t1, 0x40100000      # 2.25
li  t2, 0x3F800000      # 1.0

fmv.w.x f0, t0
fmv.w.x f1, t1
fmv.w.x f2, t2


############################################
# MUL -> MUL
############################################

fmul.s f3, f0, f2
fmul.s f4, f0, f2
nop
nop
nop

fmul.s f3, f0, f2
fmul.s f4, f0, f1
nop
nop
nop

fmul.s f3, f0, f1
fmul.s f4, f0, f1
nop
nop
nop


############################################
# MUL -> DIV
############################################

fmul.s f3, f0, f2
fdiv.s f4, f0, f2
nop
nop
nop

fmul.s f3, f0, f2
fdiv.s f4, f0, f1
nop
nop
nop

fmul.s f3, f0, f1
fdiv.s f4, f0, f1
nop
nop
nop


############################################
# MUL -> SQRT
############################################

fmul.s f3, f0, f2
fsqrt.s f4, f2
nop
nop
nop

fmul.s f3, f0, f2
fsqrt.s f4, f0
nop
nop
nop

fmul.s f3, f0, f1
fsqrt.s f4, f0
nop
nop
nop


############################################
# DIV -> MUL
############################################

fdiv.s f3, f0, f2
fmul.s f4, f0, f2
nop
nop
nop

fdiv.s f3, f0, f2
fmul.s f4, f0, f1
nop
nop
nop

fdiv.s f3, f0, f1
fmul.s f4, f0, f1
nop
nop
nop


############################################
# DIV -> DIV
############################################

fdiv.s f3, f0, f2
fdiv.s f4, f0, f2
nop
nop
nop

fdiv.s f3, f0, f2
fdiv.s f4, f0, f1
nop
nop
nop

fdiv.s f3, f0, f1
fdiv.s f4, f0, f1
nop
nop
nop


############################################
# DIV -> SQRT
############################################

fdiv.s f3, f0, f2
fsqrt.s f4, f2
nop
nop
nop

fdiv.s f3, f0, f2
fsqrt.s f4, f0
nop
nop
nop

fdiv.s f3, f0, f1
fsqrt.s f4, f0
nop
nop
nop


############################################
# SQRT -> MUL
############################################

fsqrt.s f3, f2
fmul.s  f4, f0, f2
nop
nop
nop

fsqrt.s f3, f2
fmul.s  f4, f0, f1
nop
nop
nop

fsqrt.s f3, f0
fmul.s  f4, f0, f1
nop
nop
nop


############################################
# SQRT -> DIV
############################################

fsqrt.s f3, f2
fdiv.s  f4, f0, f2
nop
nop
nop

fsqrt.s f3, f2
fdiv.s  f4, f0, f1
nop
nop
nop

fsqrt.s f3, f0
fdiv.s  f4, f0, f1
nop
nop
nop


############################################
# SQRT -> SQRT
############################################

fsqrt.s f3, f2
fsqrt.s f4, f2
nop
nop
nop

fsqrt.s f3, f2
fsqrt.s f4, f0
nop
nop
nop

fsqrt.s f3, f0
fsqrt.s f4, f0
nop
nop
nop


end:
  ret
