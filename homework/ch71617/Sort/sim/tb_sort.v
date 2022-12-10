/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-12-06 22:28:39
 * @LastEditTime: 2022-12-06 23:04:16
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
 module tb_sort;

 reg           clk,rst_n;
 reg           vaild_i;
 reg  [15:0]   v_in;
 reg  [127:0]  x_in;
 wire [15:0]   v_out;
 wire [127:0]  x_out;
 wire          datavaild_o;

top top_sort_u0(
    .clk(clk),
    .rst_n(rst_n),
    .vaild_i(vaild_i),
    .v_in(v_in),
    .x_in(x_in),
    .v_out(v_out),
    .datavaild_o(datavaild_o),
    .x_out(x_out)
);
 
 initial 
 begin
     $fsdbDumpfile("./build/simtop.fsdb"); 
     $fsdbDumpvars("+all");   
 end
 
 initial begin
    rst_n = 0;
    clk = 0;
    v_in  =16'b0110_0101_1111_0000;
    x_in   =128'h01_12_23_34_45_56_67_78_89_9A_AB_BC_CD_DE_EF_F0;
    vaild_i =0 ;
 #5
    rst_n = 1;
 #10
    vaild_i =1;
 #2
    vaild_i =0;
 #10
    
     $finish;
 end
 
 always #1 clk=~clk;
 
 endmodule
