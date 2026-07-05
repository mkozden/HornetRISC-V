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
`test/testfloat` feeds Berkeley TestFloat's corner-biased operand vectors (subnormals, rounding ties, NaN payloads, overflow boundaries) through the FPU as prebuilt directed ROM images — see `test/testfloat/README.md` for how new chunks are generated. Each chunk is a standalone test named `tf_<op>_s_NNN` (e.g. `tf_fdiv_s_000`, `tf_fdiv_s_001`, ...); point `run.sh` at one the same way as any other directed test:
```sh
TEST="tf_fdiv_s_000"
```
`run.sh`'s directed branch falls back to `test/testfloat/` (and skips recompilation, since these chunks' `.elf`s are prebuilt by testfloat's own makefile) whenever a dedicated `test/<TEST>/` directory doesn't exist.

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
