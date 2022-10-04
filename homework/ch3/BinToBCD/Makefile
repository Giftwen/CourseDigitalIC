

$(shell find $(abspath ./src) $(abspath ./sim) -name "*.v" > ./sim/filelist_sim.f)
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
SIMTOP= $(BUILD_DIR)/simtop
LOG_PATH = $(BUILD_DIR)/log
TIMESCALE:=1ns/1ps  
$(shell mkdir -p $(LOG_PATH))

VCS:=vcs +v2k -full64 +define+M2 -debug_acc+all -debug_region+cell+encrypt 	-LDFLAGS -Wl,--no-as-needed  	-timescale=${TIMESCALE} 	   	-o $(SIMTOP)                   	-l ${LOG_PATH}/report.log      	-P $(VERDI_HOME)/share/PLI/VCS/LINUXAMD64/novas.tab 	$(VERDI_HOME)/share/PLI/VCS/LINUXAMD64/pli.a         
compile:$(VSRC)
	${VCS} $^
	./${SIMTOP} -l ${LOG_PATH}/run.log          

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
	verdi -f ./sim/filelist_sim.f -ssf $(BUILD_DIR)/simtop.fsdb &

syn:
	@cd work && dc_shell -f ../syn/script/SynFlow.tcl  -output_log_file ../syn/log/top_syn.log

clean:
	rm -rf  verdiLog novas.* vcd2fsdbLog $(BUILD_DIR) csrc novas_dump.log ucli.key 

default: all 

.PHONY: clean v2f all run syn verdi sim compile

    
