###################################################################

# Created by write_sdc on Sun Oct 23 22:57:45 2022

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_area 0
set_load -pin_load 0.2 [get_ports {sum[16]}]
set_load -pin_load 0.2 [get_ports {sum[15]}]
set_load -pin_load 0.2 [get_ports {sum[14]}]
set_load -pin_load 0.2 [get_ports {sum[13]}]
set_load -pin_load 0.2 [get_ports {sum[12]}]
set_load -pin_load 0.2 [get_ports {sum[11]}]
set_load -pin_load 0.2 [get_ports {sum[10]}]
set_load -pin_load 0.2 [get_ports {sum[9]}]
set_load -pin_load 0.2 [get_ports {sum[8]}]
set_load -pin_load 0.2 [get_ports {sum[7]}]
set_load -pin_load 0.2 [get_ports {sum[6]}]
set_load -pin_load 0.2 [get_ports {sum[5]}]
set_load -pin_load 0.2 [get_ports {sum[4]}]
set_load -pin_load 0.2 [get_ports {sum[3]}]
set_load -pin_load 0.2 [get_ports {sum[2]}]
set_load -pin_load 0.2 [get_ports {sum[1]}]
set_load -pin_load 0.2 [get_ports {sum[0]}]
set_ideal_network -no_propagate  [get_ports rst_n]
create_clock [get_ports clk]  -period 2.375  -waveform {0 1.1875}
set_clock_latency -max 0.2375  [get_clocks clk]
set_clock_latency -source 0.2375  [get_clocks clk]
set_clock_uncertainty 0.11875  [get_clocks clk]
set_clock_transition -max -rise 0.02375 [get_clocks clk]
set_clock_transition -max -fall 0.02375 [get_clocks clk]
set_clock_transition -min -rise 0.02375 [get_clocks clk]
set_clock_transition -min -fall 0.02375 [get_clocks clk]
set_false_path   -from [get_ports rst_n]
set_input_delay -clock clk  -max 0.95  [get_ports rst_n]
set_input_delay -clock clk  -min 0  [get_ports rst_n]
set_input_delay -clock clk  -max 0.95  [get_ports {a[15]}]
set_input_delay -clock clk  -min 0  [get_ports {a[15]}]
set_input_delay -clock clk  -max 0.95  [get_ports {a[14]}]
set_input_delay -clock clk  -min 0  [get_ports {a[14]}]
set_input_delay -clock clk  -max 0.95  [get_ports {a[13]}]
set_input_delay -clock clk  -min 0  [get_ports {a[13]}]
set_input_delay -clock clk  -max 0.95  [get_ports {a[12]}]
set_input_delay -clock clk  -min 0  [get_ports {a[12]}]
set_input_delay -clock clk  -max 0.95  [get_ports {a[11]}]
set_input_delay -clock clk  -min 0  [get_ports {a[11]}]
set_input_delay -clock clk  -max 0.95  [get_ports {a[10]}]
set_input_delay -clock clk  -min 0  [get_ports {a[10]}]
set_input_delay -clock clk  -max 0.95  [get_ports {a[9]}]
set_input_delay -clock clk  -min 0  [get_ports {a[9]}]
set_input_delay -clock clk  -max 0.95  [get_ports {a[8]}]
set_input_delay -clock clk  -min 0  [get_ports {a[8]}]
set_input_delay -clock clk  -max 0.95  [get_ports {a[7]}]
set_input_delay -clock clk  -min 0  [get_ports {a[7]}]
set_input_delay -clock clk  -max 0.95  [get_ports {a[6]}]
set_input_delay -clock clk  -min 0  [get_ports {a[6]}]
set_input_delay -clock clk  -max 0.95  [get_ports {a[5]}]
set_input_delay -clock clk  -min 0  [get_ports {a[5]}]
set_input_delay -clock clk  -max 0.95  [get_ports {a[4]}]
set_input_delay -clock clk  -min 0  [get_ports {a[4]}]
set_input_delay -clock clk  -max 0.95  [get_ports {a[3]}]
set_input_delay -clock clk  -min 0  [get_ports {a[3]}]
set_input_delay -clock clk  -max 0.95  [get_ports {a[2]}]
set_input_delay -clock clk  -min 0  [get_ports {a[2]}]
set_input_delay -clock clk  -max 0.95  [get_ports {a[1]}]
set_input_delay -clock clk  -min 0  [get_ports {a[1]}]
set_input_delay -clock clk  -max 0.95  [get_ports {a[0]}]
set_input_delay -clock clk  -min 0  [get_ports {a[0]}]
set_input_delay -clock clk  -max 0.95  [get_ports {b[15]}]
set_input_delay -clock clk  -min 0  [get_ports {b[15]}]
set_input_delay -clock clk  -max 0.95  [get_ports {b[14]}]
set_input_delay -clock clk  -min 0  [get_ports {b[14]}]
set_input_delay -clock clk  -max 0.95  [get_ports {b[13]}]
set_input_delay -clock clk  -min 0  [get_ports {b[13]}]
set_input_delay -clock clk  -max 0.95  [get_ports {b[12]}]
set_input_delay -clock clk  -min 0  [get_ports {b[12]}]
set_input_delay -clock clk  -max 0.95  [get_ports {b[11]}]
set_input_delay -clock clk  -min 0  [get_ports {b[11]}]
set_input_delay -clock clk  -max 0.95  [get_ports {b[10]}]
set_input_delay -clock clk  -min 0  [get_ports {b[10]}]
set_input_delay -clock clk  -max 0.95  [get_ports {b[9]}]
set_input_delay -clock clk  -min 0  [get_ports {b[9]}]
set_input_delay -clock clk  -max 0.95  [get_ports {b[8]}]
set_input_delay -clock clk  -min 0  [get_ports {b[8]}]
set_input_delay -clock clk  -max 0.95  [get_ports {b[7]}]
set_input_delay -clock clk  -min 0  [get_ports {b[7]}]
set_input_delay -clock clk  -max 0.95  [get_ports {b[6]}]
set_input_delay -clock clk  -min 0  [get_ports {b[6]}]
set_input_delay -clock clk  -max 0.95  [get_ports {b[5]}]
set_input_delay -clock clk  -min 0  [get_ports {b[5]}]
set_input_delay -clock clk  -max 0.95  [get_ports {b[4]}]
set_input_delay -clock clk  -min 0  [get_ports {b[4]}]
set_input_delay -clock clk  -max 0.95  [get_ports {b[3]}]
set_input_delay -clock clk  -min 0  [get_ports {b[3]}]
set_input_delay -clock clk  -max 0.95  [get_ports {b[2]}]
set_input_delay -clock clk  -min 0  [get_ports {b[2]}]
set_input_delay -clock clk  -max 0.95  [get_ports {b[1]}]
set_input_delay -clock clk  -min 0  [get_ports {b[1]}]
set_input_delay -clock clk  -max 0.95  [get_ports {b[0]}]
set_input_delay -clock clk  -min 0  [get_ports {b[0]}]
set_output_delay -clock clk  -max 0.95  [get_ports {sum[16]}]
set_output_delay -clock clk  -min 0  [get_ports {sum[16]}]
set_output_delay -clock clk  -max 0.95  [get_ports {sum[15]}]
set_output_delay -clock clk  -min 0  [get_ports {sum[15]}]
set_output_delay -clock clk  -max 0.95  [get_ports {sum[14]}]
set_output_delay -clock clk  -min 0  [get_ports {sum[14]}]
set_output_delay -clock clk  -max 0.95  [get_ports {sum[13]}]
set_output_delay -clock clk  -min 0  [get_ports {sum[13]}]
set_output_delay -clock clk  -max 0.95  [get_ports {sum[12]}]
set_output_delay -clock clk  -min 0  [get_ports {sum[12]}]
set_output_delay -clock clk  -max 0.95  [get_ports {sum[11]}]
set_output_delay -clock clk  -min 0  [get_ports {sum[11]}]
set_output_delay -clock clk  -max 0.95  [get_ports {sum[10]}]
set_output_delay -clock clk  -min 0  [get_ports {sum[10]}]
set_output_delay -clock clk  -max 0.95  [get_ports {sum[9]}]
set_output_delay -clock clk  -min 0  [get_ports {sum[9]}]
set_output_delay -clock clk  -max 0.95  [get_ports {sum[8]}]
set_output_delay -clock clk  -min 0  [get_ports {sum[8]}]
set_output_delay -clock clk  -max 0.95  [get_ports {sum[7]}]
set_output_delay -clock clk  -min 0  [get_ports {sum[7]}]
set_output_delay -clock clk  -max 0.95  [get_ports {sum[6]}]
set_output_delay -clock clk  -min 0  [get_ports {sum[6]}]
set_output_delay -clock clk  -max 0.95  [get_ports {sum[5]}]
set_output_delay -clock clk  -min 0  [get_ports {sum[5]}]
set_output_delay -clock clk  -max 0.95  [get_ports {sum[4]}]
set_output_delay -clock clk  -min 0  [get_ports {sum[4]}]
set_output_delay -clock clk  -max 0.95  [get_ports {sum[3]}]
set_output_delay -clock clk  -min 0  [get_ports {sum[3]}]
set_output_delay -clock clk  -max 0.95  [get_ports {sum[2]}]
set_output_delay -clock clk  -min 0  [get_ports {sum[2]}]
set_output_delay -clock clk  -max 0.95  [get_ports {sum[1]}]
set_output_delay -clock clk  -min 0  [get_ports {sum[1]}]
set_output_delay -clock clk  -max 0.95  [get_ports {sum[0]}]
set_output_delay -clock clk  -min 0  [get_ports {sum[0]}]
