/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-11-13 17:15:54
 * @LastEditTime: 2022-11-13 17:18:19
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
 module tb_matrixsort ();
    reg clk, rst_n, vld_in;
    reg [9:0] din;
    wire vld_out;
    wire [9:0] dout;
 initial 
 begin
     $fsdbDumpfile("./build/simtop.fsdb"); 
     $fsdbDumpvars("+all");   
 end
    initial begin
        clk <= 1'b0;
        rst_n <= 1'b0;
        din <= 10'b00_0000_0000;
        vld_in <= 1'b0;
        #20
        rst_n <= 1'b1;
        vld_in <= 1'b1;
        #129
        vld_in <= 1'b0;
        #300000
        $stop;
    end

    always #1 clk <= ~clk;

    always @(posedge clk) begin
        if (vld_in == 1'b1) begin
           din <= din + 1'b1;
        end
    end

    top u_mat_scan(
        .clk(clk),
        .rst_n(rst_n),
        .vld_in(vld_in),
        .din(din),
        .vld_out(vld_out),
        .dout(dout)
    );

endmodule

