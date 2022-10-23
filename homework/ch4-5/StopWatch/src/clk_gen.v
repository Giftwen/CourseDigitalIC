/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-10-12 23:40:02
 * @LastEditTime: 2022-10-23 16:49:51
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
 module clk_gen(
    input   clk_in,
    input   rst_n,
    output  reg clk_out
 );
reg[6:0] count;
 always @(posedge clk_in or negedge rst_n) begin
    if(!rst_n)begin
        clk_out <= 0;
        count   <= 0;
    end else if (count>7'd2)begin
        count   <= 0;
        clk_out <= 1;
    end else begin
        count   <= count + 7'd1;
        clk_out <= 0;
    end
 end
endmodule
