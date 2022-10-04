/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-10-04 16:07:00
 * @LastEditTime: 2022-10-04 16:51:18
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */

module tb_VectorDetector();

reg clk = 0;
always #10 clk=~clk;

reg rst = 1;
initial #5 rst = 0;

reg [31:0] din;
initial begin
    #9;
    din =  32'b00011000_10000000_00000000_00000000;
    #20;
    din =  32'b00000000_11111111_00000000_00000000;
    #20;
    din =  32'b00000000_00000000_00000000_00001010;
    #20;
    din = 32'b0;
    #300
    $stop;
end
initial 
begin

    `ifdef M4
	$fsdbDumpfile("./build/simtop.fsdb"); 
	$fsdbDumpvars("+all");   
    `else
    $display("hello");
    `endif
end
wire [5:0] out;

top top1(
    .clk(clk),
    .rst(rst),
    .data_in(din),
    .pos_out(out)
);

endmodule
