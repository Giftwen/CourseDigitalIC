/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-11-13 16:55:00
 * @LastEditTime: 2022-11-13 17:01:12
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */

 module tb_sqrt ();
    
    reg clk,rst_n,vld_in;
    reg [31:0] x;
    wire vld_out;
    wire [15:0] y;
 initial 
 begin
     $fsdbDumpfile("./build/simtop.fsdb"); 
     $fsdbDumpvars("+all");   
 end
    initial begin
        clk <= 1'b0;
        rst_n <= 1'b0;
        vld_in <= 1'b0;
        x <= 0;
        #30
        rst_n <= 1'b1;
        vld_in <= 1'b1;
        x <= 256;
        #20
        x <= 255;
        #20
        x <= 2147483648;
        #20 
        x <= 4294967295;
        #1000
        $stop;
    end

    always #1 clk <= ~clk;

    top u_sqrt_u32(
        .clk(clk),
        .rst_n(rst_n),
        .vld_in(vld_in),
        .x(x),
        .vld_out(vld_out),
        .y(y)
    );

endmodule

