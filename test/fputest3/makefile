CC32=riscv32-unknown-elf
10K-CCFLAGS=-march=rv32imf -mabi=ilp32f -Os -fno-math-errno -T ../linksc-10000.ld -lm -nostartfiles -ffunction-sections -fdata-sections -Wl,--gc-sections -g -ggdb -o fputest3.elf

build:
	$(CC32)-gcc fputest3.s ../crt0.s $(10K-CCFLAGS)
	$(CC32)-objcopy -O binary -j .init -j .text -j .rodata -j .sdata fputest3.elf fputest3.bin
	../rom_generator fputest3.bin
	cp fputest3.data ../memory_contents/instruction.data


