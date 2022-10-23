/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-10-23 16:02:27
 * @LastEditTime: 2022-10-23 16:10:04
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
 /*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-10-23 14:42:59
 * @LastEditTime: 2022-10-23 14:54:28
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
 
 module tb_cla;

 reg           clk,rst_n;
 reg   [31:0]  data_in;
 reg           dir;
 reg   [4:0]   sh;
 wire  [31:0]  data_out;
 
 top top(
     .clk(clk),
     .rst_n(rst_n),
     .data_in(data_in),
     .dir(dir),
     .sh(sh),
     .data_out(data_out)
 );
 
 initial 
 begin
     $fsdbDumpfile("./build/simtop.fsdb"); 
     $fsdbDumpvars("+all");   
 end
 
 initial begin
     rst_n = 0;
     clk = 0;
     data_in=32'b0;
     dir=1'b0;
     sh=5'b0;
 #4
     rst_n = 1;
     data_in=32'b00011000101000000000000000000000;
     dir=1'b0;
     sh=5'd10;
 #4
     data_in=32'b00000000111111110000000000000011;
     dir=1'b1;
     sh=5'd20;
 #4
     
 #20
     $stop;
 end
 
 always #1 clk=~clk;
 
 endmodule
