#!/usr/bin/env python3
# Convert Berkeley testfloat_gen output into chunked RISC-V assembly tests.
#
#   tf2asm.py <op-mnemonic> <num-operands> [cases-per-chunk] [seed] <vectors.txt>...
#
#   op-mnemonic      e.g. fadd.s / fdiv.s / fsqrt.s
#   num-operands     2 for add/sub/mul/div, 1 for sqrt
#   cases-per-chunk  cases per generated .S file (default 1500)
#   seed             random seed controlling chunk-to-rounding-mode assignment
#                    (default 1)
#   vectors.txt...   one or more testfloat_gen output files, each named
#                     <TFOP>_<rm>.txt (e.g. f32_div_near_even.txt) so its
#                     rounding mode can be inferred from the filename
#
# Only the operands are embedded; results/flags are checked by the existing
# RTL-vs-Spike trace diff. Every 4th case feeds the previous result back in
# as an operand so corner values also stress back-to-back forwarding.
#
# Each output chunk draws its cases from a single, randomly chosen input
# vector file, so its rounding mode (and the frm CSR value baked into the
# chunk) varies chunk-to-chunk across the whole regression.

import random
import sys

RM_TO_FRM = {
    "near_even": 0,
    "minMag": 1,
    "min": 2,
    "max": 3,
    "near_maxMag": 4,
}


def rm_for(vecfile):
    stem = vecfile.rsplit(".", 1)[0]
    for rm in RM_TO_FRM:
        if stem.endswith(rm):
            return rm
    raise ValueError(f"could not infer rounding mode from filename: {vecfile}")


def write_chunk(name, cases, op, nops, frm, rm):
    with open(name, "w") as f:
        f.write(f"# ROUNDING_MODE: {rm} (frm={frm})\n")
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


op, nops = sys.argv[1], int(sys.argv[2])
chunk = int(sys.argv[3]) if len(sys.argv) > 3 else 1500
seed = int(sys.argv[4]) if len(sys.argv) > 4 else 1
vecfiles = sys.argv[5:]

random.seed(seed)
prefix = "tf_" + op.replace(".", "_")

pools = []
for vecfile in vecfiles:
    rm = rm_for(vecfile)
    lines = [l.split() for l in open(vecfile) if l.strip()]
    pools.append({"rm": rm, "frm": RM_TO_FRM[rm], "lines": lines, "cursor": 0})

chunk_idx = 0
while True:
    candidates = [p for p in pools if p["cursor"] < len(p["lines"])]
    if not candidates:
        break
    pool = random.choice(candidates)
    cases = pool["lines"][pool["cursor"]:pool["cursor"] + chunk]
    pool["cursor"] += len(cases)
    write_chunk(f"{prefix}_{chunk_idx:03d}.S", cases, op, nops, pool["frm"], pool["rm"])
    chunk_idx += 1
