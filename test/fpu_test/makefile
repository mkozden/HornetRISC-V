CC64=riscv64-unknown-elf
CCFLAGS=-march=rv32imf -mabi=ilp32f -O3 -T ../linksc.ld -lm -nostartfiles -ffunction-sections -fdata-sections -Wl,--gc-sections -o fpu_test.elf

build:
	$(CC64)-gcc fpu_test.c ../crt0.s $(CCFLAGS)
	$(CC64)-objcopy -O binary -j .init -j .text -j .rodata -j .sdata fpu_test.elf fpu_test.bin
	../rom_generator fpu_test.bin
	cp fpu_test.data ../memory_contents


