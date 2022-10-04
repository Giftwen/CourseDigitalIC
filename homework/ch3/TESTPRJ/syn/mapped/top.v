/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Tue Oct  4 12:04:08 2022
/////////////////////////////////////////////////////////////


module BinToBCD_m2 ( bin_in, sampling, clk, rst, flag, bcd_out );
  input [7:0] bin_in;
  output [9:0] bcd_out;
  input sampling, clk, rst;
  output flag;
  wire   N12, N13, N14, N15, N16, N59, N60, N61, N62, N63, N64, N65, N66, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n13, n15, n17, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, add_x_2_n4,
         add_x_2_n3, add_x_2_n2, add_x_2_n1;
  wire   [5:0] counter;
  wire   [17:0] bcd_out_r;
  wire   [15:8] tmp_bcd_out_r;

  EDFFX1M bcd_out_r_reg_0_ ( .D(bin_in[0]), .E(n20), .CK(clk), .Q(bcd_out_r[0]) );
  EDFFTRX1M tmp_bcd_out_r_reg_8_ ( .RN(n46), .D(bcd_out_r[7]), .E(n7), .CK(clk), .Q(tmp_bcd_out_r[8]) );
  EDFFTRX1M tmp_bcd_out_r_reg_10_ ( .RN(n46), .D(n5), .E(n7), .CK(clk), .Q(
        tmp_bcd_out_r[10]) );
  EDFFTRX1M tmp_bcd_out_r_reg_12_ ( .RN(n46), .D(bcd_out_r[11]), .E(n7), .CK(
        clk), .Q(tmp_bcd_out_r[12]) );
  EDFFTRX1M tmp_bcd_out_r_reg_14_ ( .RN(n46), .D(n2), .E(n7), .CK(clk), .Q(
        tmp_bcd_out_r[14]) );
  EDFFTRX1M bcd_out_r_reg_16_ ( .RN(n46), .D(bcd_out_r[15]), .E(n7), .CK(clk), 
        .Q(bcd_out_r[16]) );
  EDFFTRX1M bcd_out_r_reg_17_ ( .RN(n46), .D(bcd_out_r[16]), .E(n7), .CK(clk), 
        .Q(bcd_out_r[17]) );
  INVXLM U4 ( .A(n13), .Y(n2) );
  INVXLM U7 ( .A(n17), .Y(n5) );
  OAI2BB2X1M U9 ( .B0(n10), .B1(n1), .A0N(tmp_bcd_out_r[15]), .A1N(n9), .Y(n48) );
  OAI2BB2X1M U10 ( .B0(n10), .B1(n3), .A0N(tmp_bcd_out_r[13]), .A1N(n9), .Y(
        n49) );
  OAI2BB2X1M U11 ( .B0(n10), .B1(n4), .A0N(tmp_bcd_out_r[11]), .A1N(n9), .Y(
        n50) );
  OAI2BB1X1M U13 ( .A0N(n9), .A1N(bcd_out_r[7]), .B0(n19), .Y(n52) );
  AOI22X1M U14 ( .A0(bcd_out_r[6]), .A1(n8), .B0(bin_in[7]), .B1(n20), .Y(n19)
         );
  OAI2BB1X1M U15 ( .A0N(n9), .A1N(bcd_out_r[6]), .B0(n21), .Y(n53) );
  AOI22X1M U16 ( .A0(bcd_out_r[5]), .A1(n8), .B0(bin_in[6]), .B1(n20), .Y(n21)
         );
  OAI2BB1X1M U17 ( .A0N(n9), .A1N(bcd_out_r[5]), .B0(n22), .Y(n54) );
  AOI22X1M U18 ( .A0(bcd_out_r[4]), .A1(n8), .B0(bin_in[5]), .B1(n20), .Y(n22)
         );
  OAI2BB1X1M U19 ( .A0N(n9), .A1N(bcd_out_r[4]), .B0(n23), .Y(n55) );
  AOI22X1M U20 ( .A0(bcd_out_r[3]), .A1(n8), .B0(bin_in[4]), .B1(n20), .Y(n23)
         );
  OAI2BB1X1M U21 ( .A0N(n9), .A1N(bcd_out_r[3]), .B0(n24), .Y(n56) );
  AOI22X1M U22 ( .A0(bcd_out_r[2]), .A1(n8), .B0(bin_in[3]), .B1(n20), .Y(n24)
         );
  OAI2BB1X1M U23 ( .A0N(n9), .A1N(bcd_out_r[2]), .B0(n25), .Y(n57) );
  AOI22X1M U24 ( .A0(bcd_out_r[1]), .A1(n8), .B0(bin_in[2]), .B1(n20), .Y(n25)
         );
  OAI2BB1X1M U25 ( .A0N(n9), .A1N(bcd_out_r[1]), .B0(n26), .Y(n58) );
  AOI22X1M U26 ( .A0(bcd_out_r[0]), .A1(n8), .B0(bin_in[1]), .B1(n20), .Y(n26)
         );
  NOR2X1M U27 ( .A(n8), .B(n20), .Y(n9) );
  NOR2BX1M U28 ( .AN(bcd_out_r[17]), .B(n27), .Y(bcd_out[9]) );
  NOR2BX1M U29 ( .AN(bcd_out_r[16]), .B(n27), .Y(bcd_out[8]) );
  NOR2X1M U30 ( .A(n27), .B(n11), .Y(bcd_out[7]) );
  NOR2X1M U31 ( .A(n27), .B(n1), .Y(bcd_out[6]) );
  NOR2X1M U32 ( .A(n27), .B(n13), .Y(bcd_out[5]) );
  NOR2X1M U34 ( .A(n27), .B(n15), .Y(bcd_out[3]) );
  NOR2X1M U35 ( .A(n27), .B(n4), .Y(bcd_out[2]) );
  NOR2X1M U36 ( .A(n27), .B(n17), .Y(bcd_out[1]) );
  NOR2X1M U37 ( .A(n27), .B(n6), .Y(bcd_out[0]) );
  OAI22X1M U39 ( .A0(n10), .A1(n1), .B0(n28), .B1(n29), .Y(N66) );
  MXI2X1M U40 ( .A(n11), .B(bcd_out_r[15]), .S0(n30), .Y(n29) );
  INVXLM U41 ( .A(bcd_out_r[15]), .Y(n11) );
  OAI22X1M U43 ( .A0(n10), .A1(n13), .B0(n28), .B1(n31), .Y(N65) );
  OAI21X1M U44 ( .A0(bcd_out_r[14]), .A1(n32), .B0(n30), .Y(n31) );
  NAND2XLM U45 ( .A(bcd_out_r[14]), .B(n32), .Y(n30) );
  AOI21XLM U46 ( .A0(n3), .A1(n13), .B0(n33), .Y(n32) );
  OAI22X1M U47 ( .A0(n34), .A1(n28), .B0(n10), .B1(n3), .Y(N64) );
  OAI31X1M U49 ( .A0(bcd_out_r[12]), .A1(n13), .A2(n33), .B0(n35), .Y(n34) );
  OAI21XLM U50 ( .A0(bcd_out_r[12]), .A1(n33), .B0(n13), .Y(n35) );
  OAI22X1M U51 ( .A0(n10), .A1(n15), .B0(n28), .B1(n36), .Y(N63) );
  AOI2BB2X1M U52 ( .B0(bcd_out_r[12]), .B1(n33), .A0N(bcd_out_r[12]), .A1N(n33), .Y(n36) );
  OAI22X1M U54 ( .A0(n10), .A1(n4), .B0(n28), .B1(n37), .Y(N62) );
  CLKINVX1M U56 ( .A(bcd_out_r[11]), .Y(n15) );
  OAI22X1M U58 ( .A0(n10), .A1(n17), .B0(n28), .B1(n39), .Y(N61) );
  OAI21X1M U59 ( .A0(bcd_out_r[10]), .A1(n40), .B0(n38), .Y(n39) );
  NAND2XLM U60 ( .A(bcd_out_r[10]), .B(n40), .Y(n38) );
  AOI21XLM U61 ( .A0(n6), .A1(n17), .B0(n41), .Y(n40) );
  OAI21XLM U65 ( .A0(bcd_out_r[8]), .A1(n41), .B0(n17), .Y(n43) );
  OAI2BB2X1M U66 ( .B0(n28), .B1(n44), .A0N(n8), .A1N(bcd_out_r[7]), .Y(N59)
         );
  AOI2BB2X1M U67 ( .B0(bcd_out_r[8]), .B1(n41), .A0N(bcd_out_r[8]), .A1N(n41), 
        .Y(n44) );
  OAI32X1M U68 ( .A0(tmp_bcd_out_r[11]), .A1(tmp_bcd_out_r[9]), .A2(
        tmp_bcd_out_r[8]), .B0(tmp_bcd_out_r[10]), .B1(tmp_bcd_out_r[11]), .Y(
        n41) );
  OAI31X1M U69 ( .A0(counter[4]), .A1(counter[5]), .A2(n28), .B0(n10), .Y(n45)
         );
  CLKINVX1M U70 ( .A(n8), .Y(n10) );
  NOR2X1M U71 ( .A(counter[0]), .B(n20), .Y(n8) );
  CLKINVX1M U72 ( .A(n46), .Y(n20) );
  CLKNAND2X2M U73 ( .A(counter[0]), .B(n46), .Y(n28) );
  ADDHX1M add_x_2_U5 ( .A(counter[1]), .B(counter[0]), .CO(add_x_2_n4), .S(N12) );
  ADDHX1M add_x_2_U4 ( .A(counter[2]), .B(add_x_2_n4), .CO(add_x_2_n3), .S(N13) );
  ADDHX1M add_x_2_U3 ( .A(counter[3]), .B(add_x_2_n3), .CO(add_x_2_n2), .S(N14) );
  ADDHX1M add_x_2_U2 ( .A(counter[4]), .B(add_x_2_n2), .CO(add_x_2_n1), .S(N15) );
  DFFTRX1M counter_reg_0_ ( .D(n7), .RN(n45), .CK(clk), .Q(counter[0]), .QN(n7) );
  DFFQNX1M bcd_out_r_reg_8_ ( .D(N59), .CK(clk), .QN(n6) );
  DFFQNX1M bcd_out_r_reg_14_ ( .D(N65), .CK(clk), .QN(n1) );
  DFFQNX1M bcd_out_r_reg_12_ ( .D(N63), .CK(clk), .QN(n3) );
  DFFQNX1M bcd_out_r_reg_10_ ( .D(N61), .CK(clk), .QN(n4) );
  DFFQNX1M bcd_out_r_reg_13_ ( .D(N64), .CK(clk), .QN(n13) );
  DFFQNX1M bcd_out_r_reg_9_ ( .D(N60), .CK(clk), .QN(n17) );
  DFFQX1M bcd_out_r_reg_7_ ( .D(n52), .CK(clk), .Q(bcd_out_r[7]) );
  DFFQX1M bcd_out_r_reg_6_ ( .D(n53), .CK(clk), .Q(bcd_out_r[6]) );
  DFFQX1M bcd_out_r_reg_5_ ( .D(n54), .CK(clk), .Q(bcd_out_r[5]) );
  DFFQX1M bcd_out_r_reg_4_ ( .D(n55), .CK(clk), .Q(bcd_out_r[4]) );
  DFFQX1M bcd_out_r_reg_3_ ( .D(n56), .CK(clk), .Q(bcd_out_r[3]) );
  DFFQX1M bcd_out_r_reg_2_ ( .D(n57), .CK(clk), .Q(bcd_out_r[2]) );
  DFFQX1M bcd_out_r_reg_1_ ( .D(n58), .CK(clk), .Q(bcd_out_r[1]) );
  DFFQX1M bcd_out_r_reg_15_ ( .D(N66), .CK(clk), .Q(bcd_out_r[15]) );
  DFFQX1M bcd_out_r_reg_11_ ( .D(N62), .CK(clk), .Q(bcd_out_r[11]) );
  DFFQX1M tmp_bcd_out_r_reg_15_ ( .D(n48), .CK(clk), .Q(tmp_bcd_out_r[15]) );
  DFFQX1M tmp_bcd_out_r_reg_13_ ( .D(n49), .CK(clk), .Q(tmp_bcd_out_r[13]) );
  DFFQX1M tmp_bcd_out_r_reg_11_ ( .D(n50), .CK(clk), .Q(tmp_bcd_out_r[11]) );
  DFFQX1M tmp_bcd_out_r_reg_9_ ( .D(n51), .CK(clk), .Q(tmp_bcd_out_r[9]) );
  DFFTRX1M counter_reg_5_ ( .D(N16), .RN(n45), .CK(clk), .Q(counter[5]) );
  DFFTRX1M counter_reg_4_ ( .D(N15), .RN(n45), .CK(clk), .Q(counter[4]) );
  DFFTRX1M counter_reg_3_ ( .D(N14), .RN(n45), .CK(clk), .Q(counter[3]) );
  DFFTRX1M counter_reg_2_ ( .D(N13), .RN(n45), .CK(clk), .Q(counter[2]) );
  DFFTRX1M counter_reg_1_ ( .D(N12), .RN(n45), .CK(clk), .Q(counter[1]) );
  MXI2XLM U3 ( .A(n15), .B(bcd_out_r[11]), .S0(n38), .Y(n37) );
  OAI32XLM U5 ( .A0(tmp_bcd_out_r[15]), .A1(tmp_bcd_out_r[13]), .A2(
        tmp_bcd_out_r[12]), .B0(tmp_bcd_out_r[14]), .B1(tmp_bcd_out_r[15]), 
        .Y(n33) );
  OAI31XLM U6 ( .A0(bcd_out_r[8]), .A1(n17), .A2(n41), .B0(n43), .Y(n42) );
  NOR2XLM U8 ( .A(n27), .B(n3), .Y(bcd_out[4]) );
  NAND4XLM U12 ( .A(counter[0]), .B(counter[3]), .C(counter[1]), .D(counter[2]), .Y(n47) );
  OAI2BB2XLM U33 ( .B0(n10), .B1(n6), .A0N(tmp_bcd_out_r[9]), .A1N(n9), .Y(n51) );
  OAI22XLM U38 ( .A0(n42), .A1(n28), .B0(n10), .B1(n6), .Y(N60) );
  NOR3XLM U42 ( .A(flag), .B(sampling), .C(rst), .Y(n46) );
  INVXLM U48 ( .A(flag), .Y(n27) );
  NOR3X4M U53 ( .A(counter[4]), .B(counter[5]), .C(n47), .Y(flag) );
  INVXLM U55 ( .A(n6), .Y(bcd_out_r[8]) );
  INVXLM U57 ( .A(n3), .Y(bcd_out_r[12]) );
  INVXLM U62 ( .A(n4), .Y(bcd_out_r[10]) );
  INVXLM U63 ( .A(n1), .Y(bcd_out_r[14]) );
  XOR2XLM U64 ( .A(add_x_2_n1), .B(counter[5]), .Y(N16) );
endmodule


module top ( bin_in, sampling, clk, rst, flag, bcd_out );
  input [7:0] bin_in;
  output [9:0] bcd_out;
  input sampling, clk, rst;
  output flag;
  wire   N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18,
         N19, N20, N21;
  wire   [7:0] bin_in_r;
  wire   [9:0] bcd_out_r;

  NOR2BX1M U3 ( .AN(bcd_out_r[5]), .B(rst), .Y(N9) );
  NOR2BX1M U5 ( .AN(bcd_out_r[3]), .B(rst), .Y(N7) );
  NOR2BX1M U6 ( .AN(bcd_out_r[2]), .B(rst), .Y(N6) );
  NOR2BX1M U7 ( .AN(bcd_out_r[1]), .B(rst), .Y(N5) );
  NOR2BX1M U8 ( .AN(bcd_out_r[0]), .B(rst), .Y(N4) );
  NOR2BX1M U9 ( .AN(bin_in[7]), .B(rst), .Y(N21) );
  NOR2BX1M U10 ( .AN(bin_in[6]), .B(rst), .Y(N20) );
  NOR2BX1M U11 ( .AN(bin_in[5]), .B(rst), .Y(N19) );
  NOR2BX1M U12 ( .AN(bin_in[4]), .B(rst), .Y(N18) );
  NOR2BX1M U13 ( .AN(bin_in[3]), .B(rst), .Y(N17) );
  NOR2BX1M U14 ( .AN(bin_in[2]), .B(rst), .Y(N16) );
  NOR2BX1M U15 ( .AN(bin_in[1]), .B(rst), .Y(N15) );
  NOR2BX1M U16 ( .AN(bin_in[0]), .B(rst), .Y(N14) );
  NOR2BX1M U17 ( .AN(bcd_out_r[9]), .B(rst), .Y(N13) );
  NOR2BX1M U18 ( .AN(bcd_out_r[8]), .B(rst), .Y(N12) );
  NOR2BX1M U19 ( .AN(bcd_out_r[7]), .B(rst), .Y(N11) );
  NOR2BX1M U20 ( .AN(bcd_out_r[6]), .B(rst), .Y(N10) );
  BinToBCD_m2 BinToBCD_m2_u0 ( .bin_in(bin_in_r), .sampling(sampling), .clk(
        clk), .rst(rst), .flag(flag), .bcd_out(bcd_out_r) );
  DFFQX1M bin_in_r_reg_7_ ( .D(N21), .CK(clk), .Q(bin_in_r[7]) );
  DFFQX1M bin_in_r_reg_6_ ( .D(N20), .CK(clk), .Q(bin_in_r[6]) );
  DFFQX1M bin_in_r_reg_5_ ( .D(N19), .CK(clk), .Q(bin_in_r[5]) );
  DFFQX1M bin_in_r_reg_4_ ( .D(N18), .CK(clk), .Q(bin_in_r[4]) );
  DFFQX1M bin_in_r_reg_3_ ( .D(N17), .CK(clk), .Q(bin_in_r[3]) );
  DFFQX1M bin_in_r_reg_2_ ( .D(N16), .CK(clk), .Q(bin_in_r[2]) );
  DFFQX1M bin_in_r_reg_1_ ( .D(N15), .CK(clk), .Q(bin_in_r[1]) );
  DFFQX1M bin_in_r_reg_0_ ( .D(N14), .CK(clk), .Q(bin_in_r[0]) );
  DFFQX1M bcd_out_reg_9_ ( .D(N13), .CK(clk), .Q(bcd_out[9]) );
  DFFQX1M bcd_out_reg_8_ ( .D(N12), .CK(clk), .Q(bcd_out[8]) );
  DFFQX1M bcd_out_reg_7_ ( .D(N11), .CK(clk), .Q(bcd_out[7]) );
  DFFQX1M bcd_out_reg_6_ ( .D(N10), .CK(clk), .Q(bcd_out[6]) );
  DFFQX1M bcd_out_reg_5_ ( .D(N9), .CK(clk), .Q(bcd_out[5]) );
  DFFQX1M bcd_out_reg_4_ ( .D(N8), .CK(clk), .Q(bcd_out[4]) );
  DFFQX1M bcd_out_reg_3_ ( .D(N7), .CK(clk), .Q(bcd_out[3]) );
  DFFQX1M bcd_out_reg_2_ ( .D(N6), .CK(clk), .Q(bcd_out[2]) );
  DFFQX1M bcd_out_reg_1_ ( .D(N5), .CK(clk), .Q(bcd_out[1]) );
  DFFQX1M bcd_out_reg_0_ ( .D(N4), .CK(clk), .Q(bcd_out[0]) );
  NOR2BXLM U21 ( .AN(bcd_out_r[4]), .B(rst), .Y(N8) );
endmodule

