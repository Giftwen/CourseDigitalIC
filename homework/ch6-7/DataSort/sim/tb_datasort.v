/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-11-13 17:06:56
 * @LastEditTime: 2022-11-13 17:10:32
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */

module tb_datasort ();
    
    reg clk,rst_n,vld_in;
    reg [7:0] din_0,din_1,din_2,din_3,din_4,din_5,din_6,din_7,din_8,din_9,din_10,din_11,din_12,din_13,din_14,din_15,din_16,din_17,din_18,din_19,din_20,din_21,din_22,din_23,din_24,din_25,din_26,din_27,din_28,din_29,din_30,din_31;    
    wire vld_out;
    wire [7:0] dout_0,dout_1,dout_2,dout_3,dout_4,dout_5,dout_6,dout_7,dout_8,dout_9,dout_10,dout_11,dout_12,dout_13,dout_14,dout_15,dout_16,dout_17,dout_18,dout_19,dout_20,dout_21,dout_22,dout_23,dout_24,dout_25,dout_26,dout_27,dout_28,dout_29,dout_30,dout_31;
 initial 
 begin
     $fsdbDumpfile("./build/simtop.fsdb"); 
     $fsdbDumpvars("+all");   
 end
    initial begin
        rst_n <= 1'b0;
        clk <= 1'b0;
        vld_in <= 1'b0;
        din_0  <= 31;
        din_1  <= 29;
        din_2  <= 27;
        din_3  <= 25;
        din_4  <= 23;
        din_5  <= 21;
        din_6  <= 19;
        din_7  <= 17;
        din_8  <= 15;
        din_9  <= 13;
        din_10 <= 11;
        din_11 <= 9;
        din_12 <= 7;
        din_13 <= 5;
        din_14 <= 3;
        din_15 <= 1;
        din_16 <= 2;
        din_17 <= 2;
        din_18 <= 4;
        din_19 <= 4; 
        din_20 <= 4; 
        din_21 <= 4; 
        din_22 <= 8;
        din_23 <= 16;
        din_24 <= 8; 
        din_25 <= 16;
        din_26 <= 32;
        din_27 <= 32;
        din_28 <= 0; 
        din_29 <= 10;
        din_30 <= 20;
        din_31 <= 30;
        #5
        rst_n <= 1'b1;
        vld_in <= 1'b1;
        #25
        vld_in <= 1'b0;
        #1000
        $stop;
    end

    always #1 clk <= ~clk;

    top u_sort(
        clk,
        rst_n,
        vld_in,
        din_0,din_1,din_2,din_3,din_4,din_5,din_6,din_7,din_8,din_9,din_10,din_11,din_12,din_13,din_14,din_15,din_16,din_17,din_18,din_19,din_20,din_21,din_22,din_23,din_24,din_25,din_26,din_27,din_28,din_29,din_30,din_31,
        vld_out,
        dout_0,dout_1,dout_2,dout_3,dout_4,dout_5,dout_6,dout_7,dout_8,dout_9,dout_10,dout_11,dout_12,dout_13,dout_14,dout_15,dout_16,dout_17,dout_18,dout_19,dout_20,dout_21,dout_22,dout_23,dout_24,dout_25,dout_26,dout_27,dout_28,dout_29,dout_30,dout_31
    );

endmodule
