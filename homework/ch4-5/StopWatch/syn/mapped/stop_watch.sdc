###################################################################

# Created by write_sdc on Sun Oct 23 23:13:47 2022

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_area 0
set_load -pin_load 0.2 [get_ports {hr_h[3]}]
set_load -pin_load 0.2 [get_ports {hr_h[2]}]
set_load -pin_load 0.2 [get_ports {hr_h[1]}]
set_load -pin_load 0.2 [get_ports {hr_h[0]}]
set_load -pin_load 0.2 [get_ports {hr_l[3]}]
set_load -pin_load 0.2 [get_ports {hr_l[2]}]
set_load -pin_load 0.2 [get_ports {hr_l[1]}]
set_load -pin_load 0.2 [get_ports {hr_l[0]}]
set_load -pin_load 0.2 [get_ports {min_h[3]}]
set_load -pin_load 0.2 [get_ports {min_h[2]}]
set_load -pin_load 0.2 [get_ports {min_h[1]}]
set_load -pin_load 0.2 [get_ports {min_h[0]}]
set_load -pin_load 0.2 [get_ports {min_l[3]}]
set_load -pin_load 0.2 [get_ports {min_l[2]}]
set_load -pin_load 0.2 [get_ports {min_l[1]}]
set_load -pin_load 0.2 [get_ports {min_l[0]}]
set_load -pin_load 0.2 [get_ports {sec_h[3]}]
set_load -pin_load 0.2 [get_ports {sec_h[2]}]
set_load -pin_load 0.2 [get_ports {sec_h[1]}]
set_load -pin_load 0.2 [get_ports {sec_h[0]}]
set_load -pin_load 0.2 [get_ports {sec_l[3]}]
set_load -pin_load 0.2 [get_ports {sec_l[2]}]
set_load -pin_load 0.2 [get_ports {sec_l[1]}]
set_load -pin_load 0.2 [get_ports {sec_l[0]}]
set_ideal_network -no_propagate  [get_ports rst_n]
create_clock [get_ports clk]  -period 9.5  -waveform {0 4.75}
set_clock_latency -max 0.95  [get_clocks clk]
set_clock_latency -source 0.95  [get_clocks clk]
set_clock_uncertainty 0.475  [get_clocks clk]
set_clock_transition -max -rise 0.095 [get_clocks clk]
set_clock_transition -max -fall 0.095 [get_clocks clk]
set_clock_transition -min -rise 0.095 [get_clocks clk]
set_clock_transition -min -fall 0.095 [get_clocks clk]
set_false_path   -from [get_ports rst_n]
set_input_delay -clock clk  -max 3.8  [get_ports rst_n]
set_input_delay -clock clk  -min 0  [get_ports rst_n]
set_input_delay -clock clk  -max 3.8  [get_ports clear]
set_input_delay -clock clk  -min 0  [get_ports clear]
set_input_delay -clock clk  -max 3.8  [get_ports start_stop]
set_input_delay -clock clk  -min 0  [get_ports start_stop]
set_output_delay -clock clk  -max 3.8  [get_ports {hr_h[3]}]
set_output_delay -clock clk  -min 0  [get_ports {hr_h[3]}]
set_output_delay -clock clk  -max 3.8  [get_ports {hr_h[2]}]
set_output_delay -clock clk  -min 0  [get_ports {hr_h[2]}]
set_output_delay -clock clk  -max 3.8  [get_ports {hr_h[1]}]
set_output_delay -clock clk  -min 0  [get_ports {hr_h[1]}]
set_output_delay -clock clk  -max 3.8  [get_ports {hr_h[0]}]
set_output_delay -clock clk  -min 0  [get_ports {hr_h[0]}]
set_output_delay -clock clk  -max 3.8  [get_ports {hr_l[3]}]
set_output_delay -clock clk  -min 0  [get_ports {hr_l[3]}]
set_output_delay -clock clk  -max 3.8  [get_ports {hr_l[2]}]
set_output_delay -clock clk  -min 0  [get_ports {hr_l[2]}]
set_output_delay -clock clk  -max 3.8  [get_ports {hr_l[1]}]
set_output_delay -clock clk  -min 0  [get_ports {hr_l[1]}]
set_output_delay -clock clk  -max 3.8  [get_ports {hr_l[0]}]
set_output_delay -clock clk  -min 0  [get_ports {hr_l[0]}]
set_output_delay -clock clk  -max 3.8  [get_ports {min_h[3]}]
set_output_delay -clock clk  -min 0  [get_ports {min_h[3]}]
set_output_delay -clock clk  -max 3.8  [get_ports {min_h[2]}]
set_output_delay -clock clk  -min 0  [get_ports {min_h[2]}]
set_output_delay -clock clk  -max 3.8  [get_ports {min_h[1]}]
set_output_delay -clock clk  -min 0  [get_ports {min_h[1]}]
set_output_delay -clock clk  -max 3.8  [get_ports {min_h[0]}]
set_output_delay -clock clk  -min 0  [get_ports {min_h[0]}]
set_output_delay -clock clk  -max 3.8  [get_ports {min_l[3]}]
set_output_delay -clock clk  -min 0  [get_ports {min_l[3]}]
set_output_delay -clock clk  -max 3.8  [get_ports {min_l[2]}]
set_output_delay -clock clk  -min 0  [get_ports {min_l[2]}]
set_output_delay -clock clk  -max 3.8  [get_ports {min_l[1]}]
set_output_delay -clock clk  -min 0  [get_ports {min_l[1]}]
set_output_delay -clock clk  -max 3.8  [get_ports {min_l[0]}]
set_output_delay -clock clk  -min 0  [get_ports {min_l[0]}]
set_output_delay -clock clk  -max 3.8  [get_ports {sec_h[3]}]
set_output_delay -clock clk  -min 0  [get_ports {sec_h[3]}]
set_output_delay -clock clk  -max 3.8  [get_ports {sec_h[2]}]
set_output_delay -clock clk  -min 0  [get_ports {sec_h[2]}]
set_output_delay -clock clk  -max 3.8  [get_ports {sec_h[1]}]
set_output_delay -clock clk  -min 0  [get_ports {sec_h[1]}]
set_output_delay -clock clk  -max 3.8  [get_ports {sec_h[0]}]
set_output_delay -clock clk  -min 0  [get_ports {sec_h[0]}]
set_output_delay -clock clk  -max 3.8  [get_ports {sec_l[3]}]
set_output_delay -clock clk  -min 0  [get_ports {sec_l[3]}]
set_output_delay -clock clk  -max 3.8  [get_ports {sec_l[2]}]
set_output_delay -clock clk  -min 0  [get_ports {sec_l[2]}]
set_output_delay -clock clk  -max 3.8  [get_ports {sec_l[1]}]
set_output_delay -clock clk  -min 0  [get_ports {sec_l[1]}]
set_output_delay -clock clk  -max 3.8  [get_ports {sec_l[0]}]
set_output_delay -clock clk  -min 0  [get_ports {sec_l[0]}]
