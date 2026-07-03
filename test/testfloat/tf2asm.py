#!/usr/bin/env python3
# Convert Berkeley testfloat_gen output into chunked RISC-V assembly tests.
#
#   tf2asm.py <vectors.txt> <op-mnemonic> <num-operands> [cases-per-chunk] [frm]
#
#   vectors.txt      output of testfloat_gen (one case per line, hex fields:
#                    operands... expected flags)
#   op-mnemonic      e.g. fadd.s / fdiv.s / fsqrt.s
#   num-operands     2 for add/sub/mul/div, 1 for sqrt
#   cases-per-chunk  cases per generated .S file (default 1500)
#   frm              rounding mode written to frm at start (default 0 = RNE;
#                    1 = RTZ, 2 = RDN, 3 = RUP, 4 = RMM). Must match the -r
#                    flag given to testfloat_gen.
#
# Only the operands are embedded; results/flags are checked by the existing
# RTL-vs-Spike trace diff. Every 4th case feeds the previous result back in
# as an operand so corner values also stress back-to-back forwarding.

import sys

vecfile, op, nops = sys.argv[1], sys.argv[2], int(sys.argv[3])
chunk = int(sys.argv[4]) if len(sys.argv) > 4 else 1500
frm = int(sys.argv[5]) if len(sys.argv) > 5 else 0

lines = [l.split() for l in open(vecfile) if l.strip()]
prefix = "tf_" + op.replace(".", "_")

for ci in range(0, len(lines), chunk):
    cases = lines[ci:ci + chunk]
    name = f"{prefix}_{ci // chunk:03d}.S"
    with open(name, "w") as f:
        f.write(".section .rodata\n.align 2\nvecs:\n")
        for c in cases:
            for w in c[:nops]:
                f.write(f"    .word 0x{w}\n")
        f.write(f"""
.text
.globl main
main:
    la    t0, vecs
    li    t1, {len(cases)}
    li    t2, {frm}
    csrw  frm, t2
    fmv.w.x fa2, zero
loop:
    flw   fa0, 0(t0)
""")
        if nops == 2:
            f.write(f"""    flw   fa1, 4(t0)
    {op} fa2, fa0, fa1
    addi  t0, t0, 8
    andi  t3, t1, 3            # every 4th case: reuse the result as an
    bnez  t3, 1f               # operand -> dependent back-to-back FP ops
    {op} fa2, fa2, fa1
1:
""")
        else:
            f.write(f"""    {op} fa2, fa0
    addi  t0, t0, 4
    andi  t3, t1, 3            # every 4th case: dependent back-to-back op
    bnez  t3, 1f
    {op} fa2, fa2
1:
""")
        f.write("""    fmv.x.w a0, fa2            # make the result visible in the trace
    addi  t1, t1, -1
    bnez  t1, loop
    ret
""")
    print(f"{name}: {len(cases)} cases")
