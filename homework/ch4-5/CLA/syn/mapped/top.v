/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Thu Oct 20 00:12:24 2022
/////////////////////////////////////////////////////////////


module top ( clk, rst_n, a, b, sum );
  input [15:0] a;
  input [15:0] b;
  output [16:0] sum;
  input clk, rst_n;

  tri   [15:0] a_r;
  tri   [15:0] b_r;
  tri   [16:0] sum_r;

  cla16 cla16_u0 ( .a_i(a_r), .b_i(b_r), .sum_o(sum_r) );
  DFFRQX1M b_r_reg_15_ ( .D(b[15]), .CK(clk), .RN(rst_n), .Q(b_r[15]) );
  DFFRQX1M b_r_reg_14_ ( .D(b[14]), .CK(clk), .RN(rst_n), .Q(b_r[14]) );
  DFFRQX1M b_r_reg_13_ ( .D(b[13]), .CK(clk), .RN(rst_n), .Q(b_r[13]) );
  DFFRQX1M b_r_reg_12_ ( .D(b[12]), .CK(clk), .RN(rst_n), .Q(b_r[12]) );
  DFFRQX1M b_r_reg_11_ ( .D(b[11]), .CK(clk), .RN(rst_n), .Q(b_r[11]) );
  DFFRQX1M b_r_reg_10_ ( .D(b[10]), .CK(clk), .RN(rst_n), .Q(b_r[10]) );
  DFFRQX1M b_r_reg_9_ ( .D(b[9]), .CK(clk), .RN(rst_n), .Q(b_r[9]) );
  DFFRQX1M b_r_reg_8_ ( .D(b[8]), .CK(clk), .RN(rst_n), .Q(b_r[8]) );
  DFFRQX1M b_r_reg_7_ ( .D(b[7]), .CK(clk), .RN(rst_n), .Q(b_r[7]) );
  DFFRQX1M b_r_reg_6_ ( .D(b[6]), .CK(clk), .RN(rst_n), .Q(b_r[6]) );
  DFFRQX1M b_r_reg_5_ ( .D(b[5]), .CK(clk), .RN(rst_n), .Q(b_r[5]) );
  DFFRQX1M b_r_reg_4_ ( .D(b[4]), .CK(clk), .RN(rst_n), .Q(b_r[4]) );
  DFFRQX1M b_r_reg_3_ ( .D(b[3]), .CK(clk), .RN(rst_n), .Q(b_r[3]) );
  DFFRQX1M b_r_reg_2_ ( .D(b[2]), .CK(clk), .RN(rst_n), .Q(b_r[2]) );
  DFFRQX1M b_r_reg_1_ ( .D(b[1]), .CK(clk), .RN(rst_n), .Q(b_r[1]) );
  DFFRQX1M b_r_reg_0_ ( .D(b[0]), .CK(clk), .RN(rst_n), .Q(b_r[0]) );
  DFFRQX1M a_r_reg_15_ ( .D(a[15]), .CK(clk), .RN(rst_n), .Q(a_r[15]) );
  DFFRQX1M a_r_reg_14_ ( .D(a[14]), .CK(clk), .RN(rst_n), .Q(a_r[14]) );
  DFFRQX1M a_r_reg_13_ ( .D(a[13]), .CK(clk), .RN(rst_n), .Q(a_r[13]) );
  DFFRQX1M a_r_reg_12_ ( .D(a[12]), .CK(clk), .RN(rst_n), .Q(a_r[12]) );
  DFFRQX1M a_r_reg_11_ ( .D(a[11]), .CK(clk), .RN(rst_n), .Q(a_r[11]) );
  DFFRQX1M a_r_reg_10_ ( .D(a[10]), .CK(clk), .RN(rst_n), .Q(a_r[10]) );
  DFFRQX1M a_r_reg_9_ ( .D(a[9]), .CK(clk), .RN(rst_n), .Q(a_r[9]) );
  DFFRQX1M a_r_reg_8_ ( .D(a[8]), .CK(clk), .RN(rst_n), .Q(a_r[8]) );
  DFFRQX1M a_r_reg_7_ ( .D(a[7]), .CK(clk), .RN(rst_n), .Q(a_r[7]) );
  DFFRQX1M a_r_reg_6_ ( .D(a[6]), .CK(clk), .RN(rst_n), .Q(a_r[6]) );
  DFFRQX1M a_r_reg_5_ ( .D(a[5]), .CK(clk), .RN(rst_n), .Q(a_r[5]) );
  DFFRQX1M a_r_reg_4_ ( .D(a[4]), .CK(clk), .RN(rst_n), .Q(a_r[4]) );
  DFFRQX1M a_r_reg_3_ ( .D(a[3]), .CK(clk), .RN(rst_n), .Q(a_r[3]) );
  DFFRQX1M a_r_reg_2_ ( .D(a[2]), .CK(clk), .RN(rst_n), .Q(a_r[2]) );
  DFFRQX1M a_r_reg_1_ ( .D(a[1]), .CK(clk), .RN(rst_n), .Q(a_r[1]) );
  DFFRQX1M a_r_reg_0_ ( .D(a[0]), .CK(clk), .RN(rst_n), .Q(a_r[0]) );
  DFFRQX4M sum_reg_2_ ( .D(sum_r[2]), .CK(clk), .RN(rst_n), .Q(sum[2]) );
  DFFRQX4M sum_reg_0_ ( .D(sum_r[0]), .CK(clk), .RN(rst_n), .Q(sum[0]) );
  DFFRQX4M sum_reg_16_ ( .D(sum_r[16]), .CK(clk), .RN(rst_n), .Q(sum[16]) );
  DFFRQX4M sum_reg_15_ ( .D(sum_r[15]), .CK(clk), .RN(rst_n), .Q(sum[15]) );
  DFFRQX4M sum_reg_14_ ( .D(sum_r[14]), .CK(clk), .RN(rst_n), .Q(sum[14]) );
  DFFRQX4M sum_reg_13_ ( .D(sum_r[13]), .CK(clk), .RN(rst_n), .Q(sum[13]) );
  DFFRQX4M sum_reg_12_ ( .D(sum_r[12]), .CK(clk), .RN(rst_n), .Q(sum[12]) );
  DFFRQX4M sum_reg_11_ ( .D(sum_r[11]), .CK(clk), .RN(rst_n), .Q(sum[11]) );
  DFFRQX4M sum_reg_10_ ( .D(sum_r[10]), .CK(clk), .RN(rst_n), .Q(sum[10]) );
  DFFRQX4M sum_reg_9_ ( .D(sum_r[9]), .CK(clk), .RN(rst_n), .Q(sum[9]) );
  DFFRQX4M sum_reg_8_ ( .D(sum_r[8]), .CK(clk), .RN(rst_n), .Q(sum[8]) );
  DFFRQX4M sum_reg_7_ ( .D(sum_r[7]), .CK(clk), .RN(rst_n), .Q(sum[7]) );
  DFFRQX4M sum_reg_6_ ( .D(sum_r[6]), .CK(clk), .RN(rst_n), .Q(sum[6]) );
  DFFRQX4M sum_reg_5_ ( .D(sum_r[5]), .CK(clk), .RN(rst_n), .Q(sum[5]) );
  DFFRQX4M sum_reg_4_ ( .D(sum_r[4]), .CK(clk), .RN(rst_n), .Q(sum[4]) );
  DFFRQX4M sum_reg_3_ ( .D(sum_r[3]), .CK(clk), .RN(rst_n), .Q(sum[3]) );
  DFFRQX4M sum_reg_1_ ( .D(sum_r[1]), .CK(clk), .RN(rst_n), .Q(sum[1]) );
endmodule

