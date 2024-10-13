CC32=riscv32-unknown-elf
CCFLAGS=-march=rv32imf -mabi=ilp32f -O3 -fno-math-errno -T ../linksc.ld -lm -nostartfiles -ffunction-sections -fdata-sections -Wl,--gc-sections -o fpu_test.elf
SPIKE-CCFLAGS=-march=rv32imf -mabi=ilp32f -O3 -fno-math-errno -T ../spike-linksc.ld -lm -nostartfiles -ffunction-sections -fdata-sections -Wl,--gc-sections -o fpu_test-spike.elf

build:
	$(CC32)-gcc fpu_test.c ../crt0.s $(CCFLAGS)
	$(CC32)-gcc fpu_test.c ../spike-crt0.s $(SPIKE-CCFLAGS)
	$(CC32)-objcopy -O binary -j .init -j .text -j .rodata -j .sdata fpu_test.elf fpu_test.bin
	../rom_generator fpu_test.bin
	cp fpu_test.data ../memory_contents


