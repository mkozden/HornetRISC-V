# Sourceable fish environment for running test/riscv-dv/run.sh (USE_RISCVDV=1 path).
# Usage: source test/riscv-dv/env.fish

set -l script_dir (dirname (status --current-filename))

set -gx RISCV_GCC (which riscv32-unknown-elf-gcc)
set -gx RISCV_OBJCOPY (which riscv32-unknown-elf-objcopy)
set -gx SPIKE_PATH (dirname (which spike))

source "$script_dir/.venv/bin/activate.fish"
