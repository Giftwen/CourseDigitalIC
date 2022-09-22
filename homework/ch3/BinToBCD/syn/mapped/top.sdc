###################################################################

# Created by write_sdc on Wed Sep 21 13:17:48 2022

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_area 0
set_load -pin_load 0.2 [get_ports flag]
set_load -pin_load 0.2 [get_ports {bcd_out[9]}]
set_load -pin_load 0.2 [get_ports {bcd_out[8]}]
set_load -pin_load 0.2 [get_ports {bcd_out[7]}]
set_load -pin_load 0.2 [get_ports {bcd_out[6]}]
set_load -pin_load 0.2 [get_ports {bcd_out[5]}]
set_load -pin_load 0.2 [get_ports {bcd_out[4]}]
set_load -pin_load 0.2 [get_ports {bcd_out[3]}]
set_load -pin_load 0.2 [get_ports {bcd_out[2]}]
set_load -pin_load 0.2 [get_ports {bcd_out[1]}]
set_load -pin_load 0.2 [get_ports {bcd_out[0]}]
set_ideal_network -no_propagate  [get_ports rst]
create_clock [get_ports clk]  -period 4.75  -waveform {0 2.375}
set_clock_latency -max 0.475  [get_clocks clk]
set_clock_latency -source 0.475  [get_clocks clk]
set_clock_uncertainty 0.2375  [get_clocks clk]
set_clock_transition -max -rise 0.0475 [get_clocks clk]
set_clock_transition -max -fall 0.0475 [get_clocks clk]
set_clock_transition -min -rise 0.0475 [get_clocks clk]
set_clock_transition -min -fall 0.0475 [get_clocks clk]
set_false_path   -from [get_ports rst]
set_input_delay -clock clk  -max 1.9  [get_ports rst]
set_input_delay -clock clk  -min 0  [get_ports rst]
set_input_delay -clock clk  -max 1.9  [get_ports {bin_in[7]}]
set_input_delay -clock clk  -min 0  [get_ports {bin_in[7]}]
set_input_delay -clock clk  -max 1.9  [get_ports {bin_in[6]}]
set_input_delay -clock clk  -min 0  [get_ports {bin_in[6]}]
set_input_delay -clock clk  -max 1.9  [get_ports {bin_in[5]}]
set_input_delay -clock clk  -min 0  [get_ports {bin_in[5]}]
set_input_delay -clock clk  -max 1.9  [get_ports {bin_in[4]}]
set_input_delay -clock clk  -min 0  [get_ports {bin_in[4]}]
set_input_delay -clock clk  -max 1.9  [get_ports {bin_in[3]}]
set_input_delay -clock clk  -min 0  [get_ports {bin_in[3]}]
set_input_delay -clock clk  -max 1.9  [get_ports {bin_in[2]}]
set_input_delay -clock clk  -min 0  [get_ports {bin_in[2]}]
set_input_delay -clock clk  -max 1.9  [get_ports {bin_in[1]}]
set_input_delay -clock clk  -min 0  [get_ports {bin_in[1]}]
set_input_delay -clock clk  -max 1.9  [get_ports {bin_in[0]}]
set_input_delay -clock clk  -min 0  [get_ports {bin_in[0]}]
set_input_delay -clock clk  -max 1.9  [get_ports sampling]
set_input_delay -clock clk  -min 0  [get_ports sampling]
set_output_delay -clock clk  -max 1.9  [get_ports flag]
set_output_delay -clock clk  -min 0  [get_ports flag]
set_output_delay -clock clk  -max 1.9  [get_ports {bcd_out[9]}]
set_output_delay -clock clk  -min 0  [get_ports {bcd_out[9]}]
set_output_delay -clock clk  -max 1.9  [get_ports {bcd_out[8]}]
set_output_delay -clock clk  -min 0  [get_ports {bcd_out[8]}]
set_output_delay -clock clk  -max 1.9  [get_ports {bcd_out[7]}]
set_output_delay -clock clk  -min 0  [get_ports {bcd_out[7]}]
set_output_delay -clock clk  -max 1.9  [get_ports {bcd_out[6]}]
set_output_delay -clock clk  -min 0  [get_ports {bcd_out[6]}]
set_output_delay -clock clk  -max 1.9  [get_ports {bcd_out[5]}]
set_output_delay -clock clk  -min 0  [get_ports {bcd_out[5]}]
set_output_delay -clock clk  -max 1.9  [get_ports {bcd_out[4]}]
set_output_delay -clock clk  -min 0  [get_ports {bcd_out[4]}]
set_output_delay -clock clk  -max 1.9  [get_ports {bcd_out[3]}]
set_output_delay -clock clk  -min 0  [get_ports {bcd_out[3]}]
set_output_delay -clock clk  -max 1.9  [get_ports {bcd_out[2]}]
set_output_delay -clock clk  -min 0  [get_ports {bcd_out[2]}]
set_output_delay -clock clk  -max 1.9  [get_ports {bcd_out[1]}]
set_output_delay -clock clk  -min 0  [get_ports {bcd_out[1]}]
set_output_delay -clock clk  -max 1.9  [get_ports {bcd_out[0]}]
set_output_delay -clock clk  -min 0  [get_ports {bcd_out[0]}]
