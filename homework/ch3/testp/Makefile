
$(shell find $(abspath ./src) -name "*.v" > ./sim/filelist_sim.f)
$(shell find $(abspath ./src) -name "*.v" > ./syn/filelist_syn.f)
CSRCS = $(shell find $(abspath ./sim) -name "*.c" -or -name "*.cc" -or -name "*.cpp")
VSRC = $(shell cat ./sim/filelist_sim.f)
path = $(OBJ_DIR)/testprj.vcd
$(echo $(VSRC))
CPPFLAGS =
ifeq ($(trace), 1)  
CPPFLAGS += -DTRACE_ON 
endif
TOPNAME = top
BUILD_DIR = ./build
OBJ_DIR = $(BUILD_DIR)/obj_dir
BIN = $(BUILD_DIR)/V$(TOPNAME)
$(shell mkdir -p $(BUILD_DIR))
all: $(VSRC)
	verilator  -cc -exe --build +define+USE_RF_DEBUG+SNPS_FAST_SIM_FFV  main.cpp $^ -top-module top --trace -CFLAGS "$(CPPFLAGS)"  -Wno-WIDTH -Wno-CMPCONST -Wno-REDEFMACRO --timescale-override 1ns/1ps
	-$(BUILD_DIR)/Vtop  



sim: $(VSRC) $(CSRCS)
	rm -rf $(OBJ_DIR)
	verilator  -cc -exe --build -Wall   $^ -top-module top --trace -CFLAGS "$(CPPFLAGS) -DSIM_ON "  -Wno-WIDTH -Wno-CMPCONST -Wno-REDEFMACRO --Mdir $(OBJ_DIR) --timescale-override 1ns/1ps -o $(abspath $(BIN))
	-$(BUILD_DIR)/Vtop


v2f: 
	@if [ -f $(path) ];  then cd $(OBJ_DIR);  vcd2fsdb  ./testprj.vcd ; fi;

verdi: $(VSRC)
	verdi -f ./filelist_sim.f -ssf $(OBJ_DIR)/testprj.vcd.fsdb &

syn:
	cd work && dc_shell -f ../syn/script/SynFlow.tcl -gui -output_log_file ../syn/log/top_syn.log

clean:
	rm -rf  verdiLog novas.* vcd2fsdbLog $(BUILD_DIR)

default: all 

.PHONY: clean v2f all run syn verdi sim

    

    