# TestFloat-driven FPU tests

Feeds Berkeley TestFloat's corner-biased operand vectors (subnormals, rounding
ties, NaN payloads, overflow boundaries) through the FPU as small directed ROM
images, checked by the existing RTL-vs-Spike trace diff. TestFloat itself never
runs on the core — `testfloat_gen` runs on the host and only the operand tables
are embedded (Spike computes the golden results, so expected values/flags from
the vector file are not needed on target).

A prebuilt `testfloat_gen` binary lives alongside this makefile (source:
https://github.com/ucb-bar/berkeley-testfloat-3, built with SoftFloat-3).
Override with `make gen TFGEN=<path>` if you rebuild it elsewhere.

## Flow

```sh
make gen                 # f32_div, RNE, level 1 by default
make build               # every chunk -> .elf -> .bin -> .data
make install-000         # copy chunk 000 to ../memory_contents/instruction.data
# run the simulation + spike diff as usual, repeat for each chunk
```

Other ops / rounding modes:

```sh
make gen build TFOP=f32_add  OP=fadd.s  NOPS=2
make gen build TFOP=f32_mul  OP=fmul.s  NOPS=2
make gen build TFOP=f32_sqrt OP=fsqrt.s NOPS=1
make gen build TFOP=f32_div  OP=fdiv.s  NOPS=2 RM=minMag FRM=1   # RTZ
```

`RM` (testfloat_gen's `-r` flag) and `FRM` (the frm CSR value baked into the
test) must agree: near_even/0, minMag/1, min/2, max/3, near_maxMag/4.

Each chunk holds `CHUNK` (default 1500) cases: ~12 KB of `.rodata` + a small
loop, sized for the 28 KB ROM. Every 4th case reuses the previous result as an
operand, so the corner values also exercise dependent back-to-back FP ops
(forwarding + the FPU stall FSM handoff). Level-1 suites are tens of thousands
of cases per op → a few dozen chunks; `LEVEL=2` is far larger — script the
chunk loop (see `runall`) before using it.

Priority for the pipeline work: `f32_div` and `f32_sqrt` with subnormal-heavy
vectors — those exercise the phase-3 snapshot consumers (`q_preNorm_exp`,
`q_offSetA/B`, `is_exp_underFlow`).
