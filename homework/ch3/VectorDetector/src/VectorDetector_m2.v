/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-09-20 21:43:00
 * @LastEditTime: 2022-09-20 23:00:45
 * @Description: Homework of AdvDigitalIC : ch3 VectorDetector source code
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */

module VectorDetector_m2
(
    //Interface with Input
    input   [31:0]      data_in,
    //Interface with Output
    output  [5:0]       pos_out
);




wire [5:0] pos_out_w;

wire [5:0] pos_out1;
wire [5:0] pos_out1_1;
wire [5:0] pos_out1_1_1;
wire [5:0] pos_out1_1_1_1;
wire [5:0] pos_out1_1_1_2;
wire [5:0] pos_out1_1_2;
wire [5:0] pos_out1_1_2_1;
wire [5:0] pos_out1_1_2_2;
wire [5:0] pos_out1_2;
wire [5:0] pos_out1_2_1;
wire [5:0] pos_out1_2_1_1;
wire [5:0] pos_out1_2_1_2;
wire [5:0] pos_out1_2_2;
wire [5:0] pos_out1_2_2_1;
wire [5:0] pos_out1_2_2_2;
wire [5:0] pos_out2;
wire [5:0] pos_out2_1;
wire [5:0] pos_out2_1_1;
wire [5:0] pos_out2_1_1_1;
wire [5:0] pos_out2_1_1_2;
wire [5:0] pos_out2_1_2;
wire [5:0] pos_out2_1_2_1;
wire [5:0] pos_out2_1_2_2;
wire [5:0] pos_out2_2;
wire [5:0] pos_out2_2_1;
wire [5:0] pos_out2_2_1_1;
wire [5:0] pos_out2_2_1_2;
wire [5:0] pos_out2_2_2;
wire [5:0] pos_out2_2_2_1;
wire [5:0] pos_out2_2_2_2;

assign pos_out = ( |data_in ) ? pos_out_w   : 5'd32;
assign pos_out_w  =   ( |data_in[31:16] ) ?    pos_out1    :  pos_out2;

assign pos_out1  =   ( |data_in[31:24] ) ?    pos_out1_1    :  pos_out1_2;
assign pos_out2  =   ( |data_in[15:8] ) ?    pos_out2_1    :  pos_out2_2;

assign pos_out1_1  =   ( |data_in[31:28] ) ?    pos_out1_1_1    :  pos_out1_1_2;
assign pos_out1_2  =   ( |data_in[23:20] ) ?    pos_out1_2_1    :  pos_out1_2_2;
assign pos_out2_1  =   ( |data_in[15:12] ) ?    pos_out2_1_1    :  pos_out2_1_2;
assign pos_out2_2  =   ( |data_in[7:4] ) ?    pos_out2_2_1    :  pos_out2_2_2;

assign pos_out1_1_1  =   ( |data_in[31:30] ) ?    pos_out1_1_1_1    :  pos_out1_1_1_2;
assign pos_out1_1_2  =   ( |data_in[27:26] ) ?    pos_out1_1_2_1    :  pos_out1_1_2_2;
assign pos_out1_2_1  =   ( |data_in[23:22] ) ?    pos_out1_2_1_1    :  pos_out1_2_1_2;
assign pos_out1_2_2  =   ( |data_in[19:18] ) ?    pos_out1_2_2_1    :  pos_out1_2_2_2;
assign pos_out2_1_1  =   ( |data_in[15:14] ) ?    pos_out2_1_1_1    :  pos_out2_1_1_2;
assign pos_out2_1_2  =   ( |data_in[11:8] ) ?    pos_out2_1_2_1    :  pos_out2_1_2_2;
assign pos_out2_2_1  =   ( |data_in[7:6] ) ?    pos_out2_2_1_1    :  pos_out2_2_1_2;
assign pos_out2_2_2  =   ( |data_in[3:2] ) ?    pos_out2_2_2_1    :  pos_out2_2_2_2;

assign pos_out1_1_1_1  =   ( data_in[31] ) ?    5'd0    :  5'd1;
assign pos_out1_1_1_2  =   ( data_in[29] ) ?    5'd2    :  5'd3;
assign pos_out1_1_2_1  =   ( data_in[27] ) ?    5'd4    :  5'd5;
assign pos_out1_1_2_1  =   ( data_in[25] ) ?    5'd6    :  5'd7;
assign pos_out1_2_1_1  =   ( data_in[23] ) ?    5'd8    :  5'd9;
assign pos_out1_2_1_2  =   ( data_in[21] ) ?    5'd10    :  5'd11;
assign pos_out1_2_2_1  =   ( data_in[19] ) ?    5'd12    :  5'd13;
assign pos_out1_2_2_2  =   ( data_in[17] ) ?    5'd14    :  5'd15;
assign pos_out2_1_1_1  =   ( data_in[15] ) ?    5'd16    :  5'd17;
assign pos_out2_1_1_2  =   ( data_in[13] ) ?    5'd18    :  5'd19;
assign pos_out2_1_2_1  =   ( data_in[11] ) ?    5'd20    :  5'd21;
assign pos_out2_1_2_1  =   ( data_in[9] ) ?    5'd22   :  5'd23;
assign pos_out2_2_1_1  =   ( data_in[7] ) ?    5'd24    :  5'd25;
assign pos_out2_2_1_2  =   ( data_in[5] ) ?    5'd26    :  5'd27;
assign pos_out2_2_2_1  =   ( data_in[3] ) ?    5'd28    :  5'd29;
assign pos_out2_2_2_2  =   ( data_in[1] ) ?    5'd30    :  5'd31;



endmodule