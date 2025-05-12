CC32=riscv32-unknown-elf
CCFLAGS=-march=rv32imf -mabi=ilp32f -Og -T ../linksc-10000.ld -lm -nostartfiles -ffunction-sections -fdata-sections -fno-math-errno -ffp-contract=off -Wl,--gc-sections -g -ggdb -o paranoia.elf

build:
	$(CC32)-gcc paranoia.c ../crt0.s $(CCFLAGS)
	$(CC32)-objcopy -O binary -j .init -j .text -j .rodata -j .sdata paranoia.elf paranoia.bin
	../rom_generator paranoia.bin
	cp paranoia.data ../memory_contents


