CC32=riscv32-unknown-elf
10K-CCFLAGS=-march=rv32imf -mabi=ilp32f -Os -fno-math-errno -T ../linksc-10000.ld -lm -nostartfiles -ffunction-sections -fdata-sections -Wl,--gc-sections -g -ggdb -o fputest2.elf

build:
	$(CC32)-gcc fputest2.c ../crt0-10000.s $(10K-CCFLAGS)
	$(CC32)-objcopy -O binary -j .init -j .text -j .rodata -j .sdata fputest2.elf fputest2.bin
	../rom_generator fputest2.bin
	cp fputest2.data ../memory_contents


