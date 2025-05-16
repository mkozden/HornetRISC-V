# Configuration
PROJECT_DIR := /home/deniz/riscv-dv
UVM_HOME := $(PROJECT_DIR)/uvm-1.2
OUT_DIR := $(PROJECT_DIR)/out_2025-05-09
SEED ?= $(shell echo $$RANDOM)
UVM_TESTNAME ?= my_test

# Verilator configuration
VERILATOR := verilator
VERILATOR_FLAGS := \
	--binary \
	--build \
	--cc \
	--exe \
	-j $(shell nproc) \
	-Wall \
	--trace \
	--bbox-unsup \
	--vpi \
	-Wno-lint \
	-Wno-style \
	-Wno-SYMRSVDWORD \
	-Mdir $(OUT_DIR)/verilator_obj

INCLUDES := \
	-I$(PROJECT_DIR)/target/rv32imc \
	-I$(PROJECT_DIR)/user_extension \
	-I$(PROJECT_DIR)/src \
	-I$(PROJECT_DIR)/src/isa \
	-I$(PROJECT_DIR)/test \
	-I$(UVM_HOME)/src \
	-I$(UVM_HOME)/src/base

CFLAGS := -I$(UVM_HOME)/src -I$(UVM_HOME)/src/base
LDFLAGS := -L$(UVM_HOME)/lib -luvm

# File lists
FILES_F := $(PROJECT_DIR)/files.f
SIM_EXEC := $(OUT_DIR)/simv
COMPILE_LOG := $(OUT_DIR)/compile.log

.PHONY: all compile simulate clean

all: compile simulate

compile: 
	@echo "Compiling with Verilator..."
	@mkdir -p $(OUT_DIR)
	$(VERILATOR) $(VERILATOR_FLAGS) \
		-f $(FILES_F) \
		$(INCLUDES) \
		-CFLAGS "$(CFLAGS)" \
		-LDFLAGS "$(LDFLAGS)" \
		-o $(SIM_EXEC) \
		> $(COMPILE_LOG) 2>&1
	@if [ $$? -ne 0 ]; then \
		echo "Compilation failed! Check $(COMPILE_LOG)"; \
		exit 1; \
	fi
	@echo "Compilation successful. Output: $(SIM_EXEC)"

simulate:
	@if [ ! -f $(SIM_EXEC) ]; then \
		echo "Error: Simulation executable not found. Run 'make compile' first."; \
		exit 1; \
	fi
	@echo "Running simulation with seed $(SEED)..."
	@UVM_HOME=$(UVM_HOME) \
	$(SIM_EXEC) \
		+verilator+seed=$(SEED) \
		+UVM_TESTNAME=$(UVM_TESTNAME)

clean:
	@rm -rf $(OUT_DIR)/verilator_obj $(SIM_EXEC) $(COMPILE_LOG)
	@echo "Clean complete"

help:
	@echo "Usage:"
	@echo "  make compile      - Compile the design"
	@echo "  make simulate     - Run simulation (SEED=1234 UVM_TESTNAME=my_test)"
	@echo "  make all          - Compile and run simulation"
	@echo "  make clean        - Remove build artifacts"
	@echo "  make uvm_lib      - Build UVM library separately"
