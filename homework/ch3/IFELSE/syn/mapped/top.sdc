###################################################################

# Created by write_sdc on Fri Sep 30 16:32:18 2022

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_area 0
set_load -pin_load 0.2 [get_ports {out1[1]}]
set_load -pin_load 0.2 [get_ports {out1[0]}]
set_load -pin_load 0.2 [get_ports {out2[1]}]
set_load -pin_load 0.2 [get_ports {out2[0]}]
set_ideal_network -no_propagate  [get_ports rst]
create_clock [get_ports clk]  -period 9.5  -waveform {0 4.75}
set_clock_latency -max 0.95  [get_clocks clk]
set_clock_latency -source 0.95  [get_clocks clk]
set_clock_uncertainty 0.475  [get_clocks clk]
set_clock_transition -max -rise 0.095 [get_clocks clk]
set_clock_transition -max -fall 0.095 [get_clocks clk]
set_clock_transition -min -rise 0.095 [get_clocks clk]
set_clock_transition -min -fall 0.095 [get_clocks clk]
set_false_path   -from [get_ports rst]
set_input_delay -clock clk  -max 3.8  [get_ports rst]
set_input_delay -clock clk  -min 0  [get_ports rst]
set_input_delay -clock clk  -max 3.8  [get_ports in1]
set_input_delay -clock clk  -min 0  [get_ports in1]
set_input_delay -clock clk  -max 3.8  [get_ports in2]
set_input_delay -clock clk  -min 0  [get_ports in2]
set_output_delay -clock clk  -max 3.8  [get_ports {out1[1]}]
set_output_delay -clock clk  -min 0  [get_ports {out1[1]}]
set_output_delay -clock clk  -max 3.8  [get_ports {out1[0]}]
set_output_delay -clock clk  -min 0  [get_ports {out1[0]}]
set_output_delay -clock clk  -max 3.8  [get_ports {out2[1]}]
set_output_delay -clock clk  -min 0  [get_ports {out2[1]}]
set_output_delay -clock clk  -max 3.8  [get_ports {out2[0]}]
set_output_delay -clock clk  -min 0  [get_ports {out2[0]}]