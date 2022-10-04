/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-09-22 23:28:42
 * @LastEditTime: 2022-10-03 23:14:28
 * @Description: Homework of AdvDigitalIC : ch3 VectorDetector source code
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */

module VectorDetector_m3
(
    //Interface with Input
    input           [31:0]      data_in,
    //Interface with Output
    output           [5:0]       pos_out
);    

    wire [15:0] temp0;
    wire [7:0]  temp1;
    wire [3:0]  temp2;
    wire [1:0]  temp3;
    
    assign pos_out[5] = 1'b0;
    assign pos_out[4] = ~|data_in[31:16];
    
    assign temp0 = ~pos_out[4] ? data_in[31:16] : data_in[15:0];
    assign pos_out[3] = ~|temp0[15:8];
    
    assign temp1 = ~pos_out[3] ? temp0[15:8] : temp0[7:0];
    assign pos_out[2] = ~|temp1[7:4];
    
    assign temp2 = ~pos_out[2] ? temp1[7:4] : temp1[3:0];
    assign pos_out[1] = ~|temp2[3:2];
    
    assign temp3 = ~pos_out[1] ? temp2[3:2] : temp2[1:0];
    assign pos_out[0] = ~temp3[1];
endmodule