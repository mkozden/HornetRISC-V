CC32=riscv32-unknown-elf
CCFLAGS=-march=rv32imf -mabi=ilp32f -Os -fno-math-errno -T ../linksc-10000.ld -lm -nostartfiles -ffunction-sections -fdata-sections -Wl,--gc-sections -g -ggdb

# ---- TestFloat parameters (override on the command line) --------------------
# make gen TFOP=f32_sqrt OP=fsqrt.s NOPS=1 RM=minMag FRM=1
TFOP=f32_div# testfloat_gen operation
OP=fdiv.s# RISC-V mnemonic
NOPS=2# operand count (2 = add/sub/mul/div, 1 = sqrt)
RM=near_even# testfloat_gen -r flag (near_even/minMag/min/max/near_maxMag)
FRM=0# frm CSR value, must match RM (0=RNE 1=RTZ 2=RDN 3=RUP 4=RMM)
LEVEL=1# testfloat_gen test level (1 or 2; 2 is much larger)
CHUNK=1500# cases per ROM image
TFGEN=./testfloat_gen# testfloat_gen binary (bundled; or set TFGEN=testfloat_gen for PATH)
# -----------------------------------------------------------------------------

VECS=$(TFOP)_$(RM).txt
PREFIX=tf_$(subst .,_,$(OP))
DATAS=$(patsubst %.S,%.data,$(wildcard $(PREFIX)_*.S))

# Step 1: generate vectors on the host and chunk them into .S files.
# Re-run `make build` afterwards (the wildcard above is evaluated at parse time).
gen:
	$(TFGEN) -r$(RM) -level $(LEVEL) $(TFOP) > $(VECS)
	python3 tf2asm.py $(VECS) $(OP) $(NOPS) $(CHUNK) $(FRM)

# Step 2: build every chunk into a ROM image (.data)
build: $(DATAS)

%.elf: %.S
	$(CC32)-gcc $< ../crt0.s $(CCFLAGS) -o $@

%.bin: %.elf
	$(CC32)-objcopy -O binary -j .init -j .text -j .rodata -j .sdata $< $@

%.data: %.bin
	../rom_generator $<

# Step 3: load one chunk into the simulation ROM, e.g. `make install-000`
install-%: $(PREFIX)_%.data
	cp $< ../memory_contents/instruction.data

# Or iterate over all chunks; put your sim + spike-diff invocation in the loop.
runall: build
	for d in $(PREFIX)_*.data; do \
		cp $$d ../memory_contents/instruction.data; \
		echo "=== $$d loaded — run sim + spike diff here ==="; \
	done

clean:
	rm -f $(PREFIX)_*.S *.elf *.bin *.data $(VECS)

.PRECIOUS: %.elf %.bin
.PHONY: gen build runall clean
