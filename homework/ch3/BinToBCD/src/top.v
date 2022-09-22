/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-09-21 08:50:19
 * @LastEditTime: 2022-09-21 16:53:17
 * @Description: Homework of AdvDigitalIC : ch3 BCD convoter source code
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */

module top(
    //Interface with Input
    input   [7:0]       bin_in,
    input               sampling,
    input               clk,
    input               rst,
    //Interface with Output
    output              flag,
    output  [9:0]       bcd_out
);

reg     [9:0]   bcd_out;
reg     [9:0]   bcd_out_r;
reg     [7:0]   bin_in_r;


`ifdef M1
//Timing:200Mhz slack (MET)=0.01 
//Area:4045
//Power:0.5495 mW
BinToBCD_m1 BinToBCD_m1_u0(
    .bin_in     (bin_in_r),
    .bcd_out    (bcd_out_r)
);

`elsif M2
//Timing:1.1Ghz slack (MET)=0.02 -> Timing:68Mhz slack (MET)=0.02 ->
//Area:1413
//Power:4.5851 mW
BinToBCD_m2 BinToBCD_m2_u0(
    .bin_in     (bin_in_r),
    .sampling   (sampling),
    .clk        (clk),
    .rst        (rst),
    .flag       (flag),
    .bcd_out    (bcd_out_r)
);
`else


`endif 

always @(posedge clk ) begin
    if (rst) begin
        bcd_out     <=      6'b0;
        bin_in_r   <=      6'b0;
    end
    else begin
        bcd_out     <=      bcd_out_r;
        bin_in_r   <=      bin_in;
    end
end

endmodule
