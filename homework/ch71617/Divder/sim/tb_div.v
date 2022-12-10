/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-10-23 16:30:24
 * @LastEditTime: 2022-12-06 22:17:50
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
 module tb_div;

 reg           clk,rst;
 reg           div_datavalid_i;
 reg  [63:0]   div_dividend_i;
 reg  [63:0]   div_divisor_i;
 wire [63:0]   div_quotient_o;
 wire [63:0]   div_remainder_o;
 wire          div_qrvalid_o;

top #(.WIDTH(64)) top_div_u0(
	.clk                    (clk),
	.rst                    (rst),
	.div_datavalid_i        (div_datavalid_i),
	.div_dividend_i         (div_dividend_i),
	.div_divisor_i          (div_divisor_i),
	.div_qrvalid_o          (div_qrvalid_o),
	.div_quotient_o         (div_quotient_o),
	.div_remainder_o        (div_remainder_o)
);
 
 initial 
 begin
     $fsdbDumpfile("./build/simtop.fsdb"); 
     $fsdbDumpvars("+all");   
 end
 
 initial begin
    rst = 1;
    clk = 0;
    div_dividend_i  =64'd256;
    div_divisor_i   =64'd32;
    div_datavalid_i =0 ;
 #5
    rst = 0;
 #10
    div_datavalid_i =1;
 #2
    div_datavalid_i =0;
 #100
    div_dividend_i  =64'd65536;
    div_divisor_i   =64'd97;
    div_datavalid_i =1 ;
 #2
    div_datavalid_i =0;
 #100
    div_dividend_i  =64'd4294967295;
    div_divisor_i   =64'd1048576;
    div_datavalid_i =1 ;
 #2
    div_datavalid_i =0;
#100
    div_dividend_i  =64'd1048576;
    div_divisor_i   =64'd4294967295;
    div_datavalid_i =1 ;
 #2
    div_datavalid_i =0;
 #200  
     $finish;
 end
 
 always #1 clk=~clk;
 
 endmodule

