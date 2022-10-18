/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-10-12 23:40:02
 * @LastEditTime: 2022-10-18 16:30:39
 * @Description: 
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
 module clk_gen(
    input   clkin,
    input   rst_n,
    output  clk_out
 );
reg[6:0] count;
 always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        clk_out <= 0;
        count   <= 0;
    end else if (count<7'd100)begin
        count   <= 0;
        clk_out <= 1;
    end else begin
        count   <= count + 7'd1;
        clk_out <= 0;
    end
 end
endmodule
