CC32=riscv32-unknown-elf
CCFLAGS=-march=rv32imf -mabi=ilp32f -O3 -fno-math-errno -T ../linksc.ld -lm -nostartfiles -ffunction-sections -fdata-sections -Wl,--gc-sections -o fpu_test.elf
10K-CCFLAGS=-march=rv32imf -mabi=ilp32f -O3 -fno-math-errno -T ../linksc-10000.ld -lm -nostartfiles -ffunction-sections -fdata-sections -Wl,--gc-sections -o fpu_test-10000.elf

build:
	$(CC32)-gcc fpu_test.c ../crt0.s $(CCFLAGS)
	$(CC32)-gcc fpu_test.c ../crt0-10000.s $(10K-CCFLAGS)
	$(CC32)-objcopy -O binary -j .init -j .text -j .rodata -j .sdata fpu_test.elf fpu_test.bin
	$(CC32)-objcopy -O binary -j .init -j .text -j .rodata -j .sdata fpu_test-10000.elf fpu_test-10000.bin
	../rom_generator fpu_test.bin
	../rom_generator fpu_test-10000.bin
	cp fpu_test.data ../memory_contents
	cp fpu_test-10000.data ../memory_contents


