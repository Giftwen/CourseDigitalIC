/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-10-23 16:30:24
 * @LastEditTime: 2022-10-23 18:10:56
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
 module tb_cla;

 reg           clk,rst_n;
 reg           clear;
 reg           start_stop;

 wire  [3:0]  hr_h;
 wire  [3:0]  hr_l;
 wire  [3:0]  min_h;
 wire  [3:0]  min_l;
 wire  [3:0]  sec_h;
 wire  [3:0]  sec_l;



 stop_watch stop_watch(
    .clk(clk),
    .rst_n(rst_n),
    .clear(clear),
    .start_stop(start_stop),
    .hr_h(hr_h),
    .hr_l(hr_l),
    .min_h(min_h),
    .min_l(min_l),
    .sec_h(sec_h),
    .sec_l(sec_l)
 );

 
 initial 
 begin
     $fsdbDumpfile("./build/simtop.fsdb"); 
     $fsdbDumpvars("+all");   
 end
 
 initial begin
     rst_n = 0;
     clk = 0;
     clear=1'b0;
     start_stop=1'b0;
     
 #4
    rst_n = 1;
    clear=1'b0;
    start_stop=1'b1;
 #800000
    clear=1'b0;
    start_stop=1'b0;
 #20000
    clear=1'b0;
    start_stop=1'b1;  

#8000000
    clear=1'b0;
    start_stop=1'b0;
#20
    clear=1'b1;
 #20
     $stop;
 end
 
 always #1 clk=~clk;
 
 endmodule

