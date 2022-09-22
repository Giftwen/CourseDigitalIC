/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-09-20 14:43:54
 * @LastEditTime: 2022-09-21 09:13:41
 * @Description: Homework of AdvDigitalIC : ch3 VectorDetector source code 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */

module top(
    //Interface with Input
    input   [31:0]      data_in,
    input               clk,
    input               rst,
    //Interface with Output
    output  [5:0]       pos_out
);

reg [5:0]   pos_out  ; 

reg [31:0]  data_in_r ;
reg [5:0]   pos_out_r ;    

`ifdef M1
//Timing:454Mhz slack (MET)=0.01
//Area:4146.73
//Power:203456.81
VectorDetector_m1 VectorDetector_m1_u0(
    .data_in    (data_in_r),
    .pos_out    (pos_out_r)
);
`elsif M2
//Timing:1.25Ghz slack (MET)=0.00
//Area:2596.92
//Power:142774
VectorDetector_m2 VectorDetector_m2_u0(
    .data_in    (data_in_r),
    .pos_out    (pos_out_r)
);
`else
//Timing:1.25Ghz slack (MET)=0.00
//Area:2596.92
//Power:142774
VectorDetector_m2 VectorDetector_m2_u0(
    .data_in    (data_in_r),
    .pos_out    (pos_out_r)

`endif 

always @(posedge clk ) begin
    if (rst) begin
        pos_out     <=      6'b0;
        data_in_r   <=      6'b0;
    end
    else begin
        pos_out     <=      pos_out_r;
        data_in_r   <=      data_in;
    end
end

endmodule