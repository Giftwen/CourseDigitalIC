/*
 * @Author: WenJiaBao-2022E8020282071
 * @Date: 2022-09-21 10:25:31
 * @LastEditTime: 2022-10-23 14:44:25
 * @Description: Homework of AdvDigitalIC : ch3 BCD convoter source code
 * 
 * Copyright (c) 2022 by WenJiaBao wenjiabao0919@163.com, All Rights Reserved. 
 */

module tb_BinToBCD;

  reg             clk,rst,sampling;
  reg     [7:0]   bin_in;
  wire    [9:0]   bcd_out;
  wire		flag;

  top top(
        .clk(clk),
        .rst(rst),
        .sampling(sampling),
        .flag(flag),
        .bin_in(bin_in),
        .bcd_out(bcd_out)
      );

  initial
  begin
    $fsdbDumpfile("./build/simtop.fsdb");
    $fsdbDumpvars("+all");
  end

  initial
  begin
    rst = 1;
    clk = 0;
    sampling=0;
    bin_in=8'b10100101;

    #120
     rst=0;
    sampling=1;
    bin_in=8'b10100101;
    #2
     sampling=1;
    #4
     sampling=0;

    #120
     sampling=1;
    bin_in=8'b11110000;
    #4
     sampling=0;

    #200
     $stop;
  end

  always #1 clk=~clk;

endmodule
