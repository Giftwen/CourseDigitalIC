/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-09-21 13:52:49
 * @LastEditTime: 2022-09-21 18:28:41
 * @Description: Homework of AdvDigitalIC : SeqDector
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */


//Timing:500Mhz slack (MET)=0.12
//Area:698.073606
//Power:573.0590 uW
module top(
    input   clk,
    input   rst_n,
    input   din,
    output  result
);



wire result_1,result_2;

check_sequence_1 check_sequence_1_1(
    .clk    (clk),
    .rst_n  (rst_n),
    .din    (din),
    .result (result_1)
);

check_sequence_2 check_sequence_2_1(
    .clk    (clk),
    .rst_n  (rst_n),
    .din    (din),
    .result (result_2)
);

assign result = result_1 | result_2;


endmodule
