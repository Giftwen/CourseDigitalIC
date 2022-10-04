/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-09-20 14:52:40
 * @LastEditTime: 2022-10-03 23:13:44
 * @Description: Homework of AdvDigitalIC : ch3 VectorDetector source code
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */

module VectorDetector_m1
(
    //Interface with Input
    input   [31:0]      data_in,
    //Interface with Output
    output  [5:0]       pos_out
);

assign pos_out =    data_in[31] ? 6'd0 : 
                    data_in[30] ? 6'd1 : 
                    data_in[29] ? 6'd2 : 
                    data_in[28] ? 6'd3 : 
                    data_in[27] ? 6'd4 : 
                    data_in[26] ? 6'd5 : 
                    data_in[25] ? 6'd6 : 
                    data_in[24] ? 6'd7 : 
                    data_in[23] ? 6'd8 : 
                    data_in[22] ? 6'd9 : 
                    data_in[21] ? 6'd10 : 
                    data_in[20] ? 6'd11 : 
                    data_in[19] ? 6'd12 : 
                    data_in[18] ? 6'd13 : 
                    data_in[17] ? 6'd14 : 
                    data_in[16] ? 6'd15 : 
                    data_in[15] ? 6'd16 : 
                    data_in[14] ? 6'd17 : 
                    data_in[13] ? 6'd18 : 
                    data_in[12] ? 6'd19 : 
                    data_in[11] ? 6'd20 : 
                    data_in[10] ? 6'd21 : 
                    data_in[9]  ? 6'd22 : 
                    data_in[8]  ? 6'd23 : 
                    data_in[7]  ? 6'd24 : 
                    data_in[6]  ? 6'd25 : 
                    data_in[5]  ? 6'd26 : 
                    data_in[4]  ? 6'd27 : 
                    data_in[3]  ? 6'd28 : 
                    data_in[2]  ? 6'd29 : 
                    data_in[1]  ? 6'd30 : 
                    data_in[0]  ? 6'd31 :
                                  6'd32 ;


endmodule