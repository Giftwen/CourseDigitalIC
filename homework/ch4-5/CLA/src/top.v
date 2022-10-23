/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-10-18 17:20:59
 * @LastEditTime: 2022-10-23 15:03:27
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
module top(
    input                       clk,
    input                       rst_n,
    input           [15:0]      a,
    input           [15:0]      b,
    output  reg     [16:0]      sum
);
    reg   [15:0]a_r;
    reg   [15:0]b_r;
    wire   [16:0]sum_r;

`ifdef CLa
cla16 cla16_u0(
    .a_i    (a_r),
    .b_i    (b_r),
    .sum_o  (sum_r)
);
`else
sum sum_u0(
    .a_i    (a_r),
    .b_i    (b_r),
    .sum_o  (sum_r)
);
`endif



always @(posedge clk or negedge rst_n ) begin
    if (!rst_n) begin
        sum     <=    16'b0;
        a_r     <=    16'b0;
        b_r     <=    16'b0;
    end
    else begin
        sum     <=      sum_r;
        a_r   <=        a;
        b_r   <=        b;
    end
end    

endmodule