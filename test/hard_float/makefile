CC32=riscv32-unknown-elf
CC64=riscv64-unknown-elf
CCFLAGS=-march=rv32imf -mabi=ilp32f -O3 -T ../linksc.ld -lm -nostartfiles -ffunction-sections -fdata-sections -Wl,--gc-sections -o hard_float.elf

build:
	$(CC32)-gcc hard_float.c ../crt0.s $(CCFLAGS)
	$(CC32)-objcopy -O binary -j .init -j .text -j .rodata -j .sdata hard_float.elf hard_float.bin
	../rom_generator hard_float.bin
	cp hard_float.data ../memory_contents


