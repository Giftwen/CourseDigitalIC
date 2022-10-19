/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-10-18 17:20:59
 * @LastEditTime: 2022-10-19 19:46:23
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
module top(
    input           clk,
    input           rst_n,
    input   [31:0]  data_in,
    input           dir,
    input   [4:0]   sh,
    output  [31:0]  data_out
);
    reg   [31:0]    data_out_r,
    reg   [31:0]    data_in_r,
    reg             dir_r;
    reg   [4:0]     sh_r;

barrel barrel_u0(
    .data_out   (data_out_r),
    .data_in    (data_in_r),
    .dir        (dir_r),
    .sh         (sh_r)
);

always @(posedge clk ) begin
    if (rst) begin
        data_out      <=    32'b0;
        data_in_r     <=    32'b0;
        dir_r         <=    1'b0;
        sh_r          <=    5'b0;
    end
    else begin
        data_out      <=      data_out_r;
        data_in_r     <=    16'b0;
        dir_r         <=        dir;
        sh_r          <=        sh;
    end
end    

endmodule