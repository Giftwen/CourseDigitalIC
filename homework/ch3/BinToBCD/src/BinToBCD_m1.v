/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-09-21 13:04:27
 * @LastEditTime: 2022-09-21 13:15:28
 * @Description: Homework of AdvDigitalIC : ch3 BCD convoter source code
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */


module BinToBCD_m1 (
    input   [7:0]   bin_in,
    output  [9:0]   bcd_out  
);

wire    [3:0]   b;
wire    [3:0]   c;
wire    [1:0]   d;

assign bcd_out = {d,c,b};

assign d=bin_in/8'd100;
assign c=(bin_in/8'd10)%10;
assign b=bin_in%10;
endmodule