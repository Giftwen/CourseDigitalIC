###################################################################

# Created by write_sdc on Wed Sep 21 18:28:02 2022

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_area 0
set_load -pin_load 0.2 [get_ports result]
set_ideal_network -no_propagate  [get_ports rst_n]
create_clock [get_ports clk]  -period 1.9  -waveform {0 0.95}
set_clock_latency -max 0.19  [get_clocks clk]
set_clock_latency -source 0.19  [get_clocks clk]
set_clock_uncertainty 0.095  [get_clocks clk]
set_clock_transition -max -rise 0.019 [get_clocks clk]
set_clock_transition -max -fall 0.019 [get_clocks clk]
set_clock_transition -min -rise 0.019 [get_clocks clk]
set_clock_transition -min -fall 0.019 [get_clocks clk]
set_false_path   -from [get_ports rst_n]
set_input_delay -clock clk  -max 0.76  [get_ports rst_n]
set_input_delay -clock clk  -min 0  [get_ports rst_n]
set_input_delay -clock clk  -max 0.76  [get_ports din]
set_input_delay -clock clk  -min 0  [get_ports din]
set_output_delay -clock clk  -max 0.76  [get_ports result]
set_output_delay -clock clk  -min 0  [get_ports result]
