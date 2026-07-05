# Hornet RISC-V Core
Hornet is a simple, fully open-source, FPGA-proven 32-bit RISC-V core.

## Highlights
* RV32IMF instructions (base integer, multiply/divide, and single-precision floating point)
* Machine mode support
* 5-stage pipelined microarchitecture, with a pipelined (F1/F2/F3) FPU add/sub datapath and a snapshot register that cuts the mul/div/sqrt completion-cone critical path
* Misaligned access support
* FPGA proven

In this repo, in addition to the core itself, you can also find supporting peripherals, software and SoC examples to help you get started.

We also provide a reference manual that explains how the core is designed and how it works, in detail; and a user guide that describes how
you can use the core.

|<span style="font-size:1.5em;">Simplified Pipeline Diagram</span>
|:---:
|![Simplified Pipeline Diagram](/simplified_pipeline.png) |

## Simulation & Testing

RTL correctness is checked by simulating the core with Vivado (xsim) and comparing its execution trace, instruction-by-instruction (including fflags/CSR state), against a golden [Spike](https://github.com/riscv-software-src/riscv-isa-sim) reference run of the same program.

### Requirements
* Vivado, with a local project at `HornetRISCV-vivado/HornetRISCV-vivado.xpr` (gitignored — this is a generated, machine-local project; its sources reference the RTL under `core/` directly).
* A RV32IMF toolchain (`riscv32-unknown-elf-gcc`/`-objcopy`) on `PATH`.
* `spike`, built with support for the `rv32imf` ISA, on `PATH` (or point `SPIKE_PATH` at its directory).
* Python 3, only for the randomized `riscv-dv` flow (see below).

### Directed tests
Each directed test lives under `test/<test_name>/` (e.g. `test/fpu_edge_cases`, `test/fputest3`). To run one:
```sh
cd test/riscv-dv
./run.sh
```
`run.sh` has `TEST` and `USE_RISCVDV` variables at the top; with `USE_RISCVDV=0`, it builds and runs whatever directed test `TEST` names, then compares the RTL trace against Spike with `scripts/compare.py`.

#### TestFloat-driven FPU tests
`test/testfloat` feeds Berkeley TestFloat's corner-biased operand vectors (subnormals, rounding ties, NaN payloads, overflow boundaries) through the FPU as directed ROM images — see `test/testfloat/README.md` for how chunks are generated (`test/testfloat/makefile` + `tf2asm.py`). Each chunk is a standalone test named `tf_<op>_s_NNN` (e.g. `tf_fdiv_s_000`, `tf_fdiv_s_001`, ...).

There are two ways to drive this from `run.sh` (`USE_RISCVDV=0` in both cases):

1. **Single prebuilt chunk** — point `TEST` at one chunk's exact name:
   ```sh
   TEST="tf_fdiv_s_000"
   ```
   `run.sh`'s directed branch falls back to `test/testfloat/` (and skips recompilation, since this chunk's `.elf` is expected to already be built) whenever a dedicated `test/<TEST>/` directory doesn't exist.

2. **Full regression for one op** — point `TEST` at the RISC-V mnemonic prefixed with `tf_` (note the dot, e.g. `fdiv.s` not `fdiv_s`):
   ```sh
   TEST="tf_fdiv.s"   # also: tf_fadd.s, tf_fsub.s, tf_fmul.s, tf_fsqrt.s
   ```
   This drives `run.sh`'s dedicated `tf_*` branch, which on every invocation:
   - runs `make gen-mixed` in `test/testfloat/`, regenerating TestFloat vectors for **all 5 IEEE rounding modes** (near_even/minMag/min/max/near_maxMag) and re-chunking them — each output chunk is independently, randomly assigned one rounding mode (seeded by `TF_SEED`, so a given seed reproduces the same chunk-to-mode assignment; the vector file's expected results are never used since Spike is the actual golden reference, so mixing rounding modes across chunks doesn't affect correctness checking),
   - runs `make build` to compile every chunk to a ROM image,
   - loops over every chunk in order: loads it into `test/memory_contents/instruction.data`, runs Spike, runs the Vivado sim, and diffs the trace — printing each chunk's name and rounding mode (e.g. `=== Running chunk tf_fdiv_s_014 (rounding mode: minMag (frm=1)) ===`),
   - **stops at the first mismatching chunk** (leaving its `instruction.data`/`spike.log`/`combined.csv` in place for debugging) rather than running the whole set and summarizing.

   Config knobs at the top of `run.sh`: `TF_SEED` (chunk-to-rounding-mode seed, default `1`), `TF_LEVEL` (TestFloat test level, 1 or 2), `TF_CHUNK` (cases per chunk, default 1500), `TF_VIVADO_DURATION` (sim duration per chunk, default `400ms`).

### Randomized tests (riscv-dv)
Setting `USE_RISCVDV=1` instead drives [riscv-dv](https://github.com/chipsalliance/riscv-dv) to generate a random instruction stream (`TEST` then names one of the registered riscv-dv tests, e.g. `riscv_floating_point_arithmetic_test` — see `test/riscv-dv/target/rv32imc/testlist.yaml` and `test/riscv-dv/yaml/base_testlist.yaml` for the full list), simulates it, and compares against Spike the same way. On a clean pass it repeats automatically (up to 1000 iterations) to build up confidence with fresh random seeds each time.

This flow needs a Python virtualenv with `test/riscv-dv/requirements.txt` installed:
```sh
cd test/riscv-dv
uv venv .venv
uv pip install -r requirements.txt   # or: pip install -r requirements.txt, if not using uv
```
It also needs a few environment variables set (`RISCV_GCC`, `RISCV_OBJCOPY`, `SPIKE_PATH`) and the venv activated. `test/riscv-dv/env.fish` (fish) and `test/riscv-dv/env.sh` (bash) do both in one step:
```sh
cd test/riscv-dv
source env.fish   # or: source env.sh
./run.sh
```

### Known issues
* A handful of FPU ops leave the cumulative `fflags` CSR diverged from Spike's while the computed result value itself stays bit-identical (e.g. dense `fdiv.s` corner-case runs report ~500 such warnings). Also not yet root-caused; observed both before and after the pipelining work.

## Troubleshooting, Bugs & Suggestions
Feel free to create an issue on GitHub.
