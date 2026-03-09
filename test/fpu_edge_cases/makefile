CC32=riscv32-unknown-elf
10K-CCFLAGS=-march=rv32imf -mabi=ilp32f -Os -fno-math-errno -T ../linksc-10000.ld -lm -nostartfiles -ffunction-sections -fdata-sections -Wl,--gc-sections -g -ggdb -o fpu_edge_cases.elf

build:
	$(CC32)-gcc fpu_edge_cases.s ../crt0.s $(10K-CCFLAGS)
	$(CC32)-objcopy -O binary -j .init -j .text -j .rodata -j .sdata fpu_edge_cases.elf fpu_edge_cases.bin
	../rom_generator fpu_edge_cases.bin
	cp fpu_edge_cases.data ../memory_contents/instruction.data


