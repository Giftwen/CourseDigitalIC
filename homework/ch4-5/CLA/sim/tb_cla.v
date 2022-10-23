/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-10-23 14:42:59
 * @LastEditTime: 2022-10-23 14:54:28
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
 
 module tb_cla;

 reg             clk,rst_n;
 reg     [15:0]      a;
 reg     [15:0]      b;
 wire	 [16:0]      sum;
 
 top top(
     .clk(clk),
     .rst_n(rst_n),
     .a(a),
     .b(b),
     .sum(sum)
 );
 
 initial 
 begin
     $fsdbDumpfile("./build/simtop.fsdb"); 
     $fsdbDumpvars("+all");   
 end
 
 initial begin
     rst_n = 0;
     clk = 0;
     a=16'd1;
     b=16'd1;
 #4
     rst_n=1;
     a=16'b0110000010000000;
     b=16'b1000000000000001;
 #4
     a=16'd1;
     b=16'd1;
 #4
     
 #20
     $stop;
 end
 
 always #1 clk=~clk;
 
 endmodule