#!/usr/bin/env bash
# Sourceable bash environment for running test/riscv-dv/run.sh (USE_RISCVDV=1 path).
# Usage: source test/riscv-dv/env.sh

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

export RISCV_GCC="$(which riscv32-unknown-elf-gcc)"
export RISCV_OBJCOPY="$(which riscv32-unknown-elf-objcopy)"
export SPIKE_PATH="$(dirname "$(which spike)")"

source "$script_dir/.venv/bin/activate"
