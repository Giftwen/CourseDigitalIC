###################################################################

# Created by write_sdc on Wed Sep 21 09:12:13 2022

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_area 0
set_load -pin_load 0.2 [get_ports {pos_out[5]}]
set_load -pin_load 0.2 [get_ports {pos_out[4]}]
set_load -pin_load 0.2 [get_ports {pos_out[3]}]
set_load -pin_load 0.2 [get_ports {pos_out[2]}]
set_load -pin_load 0.2 [get_ports {pos_out[1]}]
set_load -pin_load 0.2 [get_ports {pos_out[0]}]
set_ideal_network -no_propagate  [get_ports rst]
create_clock [get_ports clk]  -period 2.2  -waveform {0 1.1}
set_clock_latency -max 0.22  [get_clocks clk]
set_clock_latency -source 0.22  [get_clocks clk]
set_clock_uncertainty 0.11  [get_clocks clk]
set_clock_transition -max -rise 0.022 [get_clocks clk]
set_clock_transition -max -fall 0.022 [get_clocks clk]
set_clock_transition -min -rise 0.022 [get_clocks clk]
set_clock_transition -min -fall 0.022 [get_clocks clk]
set_false_path   -from [get_ports rst]
set_input_delay -clock clk  -max 0.88  [get_ports rst]
set_input_delay -clock clk  -min 0  [get_ports rst]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[31]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[31]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[30]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[30]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[29]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[29]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[28]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[28]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[27]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[27]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[26]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[26]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[25]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[25]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[24]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[24]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[23]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[23]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[22]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[22]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[21]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[21]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[20]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[20]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[19]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[19]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[18]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[18]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[17]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[17]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[16]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[16]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[15]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[15]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[14]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[14]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[13]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[13]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[12]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[12]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[11]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[11]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[10]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[10]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[9]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[9]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[8]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[8]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[7]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[7]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[6]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[6]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[5]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[5]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[4]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[4]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[3]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[3]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[2]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[2]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[1]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[1]}]
set_input_delay -clock clk  -max 0.88  [get_ports {data_in[0]}]
set_input_delay -clock clk  -min 0  [get_ports {data_in[0]}]
set_output_delay -clock clk  -max 0.88  [get_ports {pos_out[5]}]
set_output_delay -clock clk  -min 0  [get_ports {pos_out[5]}]
set_output_delay -clock clk  -max 0.88  [get_ports {pos_out[4]}]
set_output_delay -clock clk  -min 0  [get_ports {pos_out[4]}]
set_output_delay -clock clk  -max 0.88  [get_ports {pos_out[3]}]
set_output_delay -clock clk  -min 0  [get_ports {pos_out[3]}]
set_output_delay -clock clk  -max 0.88  [get_ports {pos_out[2]}]
set_output_delay -clock clk  -min 0  [get_ports {pos_out[2]}]
set_output_delay -clock clk  -max 0.88  [get_ports {pos_out[1]}]
set_output_delay -clock clk  -min 0  [get_ports {pos_out[1]}]
set_output_delay -clock clk  -max 0.88  [get_ports {pos_out[0]}]
set_output_delay -clock clk  -min 0  [get_ports {pos_out[0]}]
