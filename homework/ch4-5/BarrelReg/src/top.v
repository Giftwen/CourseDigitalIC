/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-10-18 17:20:59
 * @LastEditTime: 2022-10-18 17:26:35
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
module top(
    input clk,
    input rst_n,
    input   [15:0]a,
    input   [15:0]b,
    output  [16:0]sum
);
    reg   [15:0]a_r,
    reg   [15:0]b_r,
    reg   [16:0]sum_r;

barrel barrel_u0(
    .a_i    (a_r),
    .b_i    (b_r),
    .sum_o  (sum_r)
);

always @(posedge clk ) begin
    if (rst) begin
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