/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-09-21 17:47:20
 * @LastEditTime: 2022-09-21 18:20:05
 * @Description: Homework of AdvDigitalIC : SeqDector
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */
module tb_top;

reg clk,rst_n;
reg [18:0]data;
wire result,din;



top top1(
    .clk(clk),
    .rst_n(rst_n),
    .din(din),
    .result(result)
);

initial begin
    rst_n = 0;
    clk = 0;
    data= 18'b001110001101110000;
#10 rst_n=1;
#300
    $stop;
end

assign din = data[17];

always @(posedge clk ) begin
    if(!rst_n)begin
        data<=data;
    end
    else begin
        data[17:1] <= data[16:0];
    end
end

always #1 clk=~clk;

endmodule