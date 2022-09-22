/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Wed Sep 21 09:12:13 2022
/////////////////////////////////////////////////////////////


module VectorDetector_m1 ( data_in, pos_out );
  input [31:0] data_in;
  output [5:0] pos_out;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n16, n17, n18,
         n20, n21, n23, n24, n25, n26, n29, n30, n31, n32, n33, n34, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n1, n14, n15, n19, n22, n27, n28, n35, n36, n37, n54, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140;

  INVXLM U36 ( .A(data_in[27]), .Y(n60) );
  NOR4BX1M U38 ( .AN(n84), .B(n85), .C(data_in[17]), .D(n61), .Y(n56) );
  INVX2M U56 ( .A(data_in[5]), .Y(n68) );
  AOI31X1M U22 ( .A0(n43), .A1(data_in[21]), .A2(n44), .B0(n45), .Y(n42) );
  NAND4BBX1M U3 ( .AN(n55), .BN(n56), .C(n23), .D(n69), .Y(n114) );
  NAND2BX2M U4 ( .AN(n82), .B(n66), .Y(n18) );
  NAND2X2M U5 ( .A(n66), .B(n14), .Y(n17) );
  OAI21X3M U6 ( .A0(n71), .A1(data_in[6]), .B0(n70), .Y(n13) );
  INVX10M U7 ( .A(n62), .Y(n110) );
  NAND2X4M U8 ( .A(n9), .B(n105), .Y(n93) );
  INVX2M U9 ( .A(data_in[13]), .Y(n19) );
  NAND2X4M U10 ( .A(n125), .B(n111), .Y(n89) );
  INVX2M U11 ( .A(data_in[21]), .Y(n72) );
  NOR2X4M U12 ( .A(data_in[26]), .B(data_in[27]), .Y(n138) );
  NOR2X4M U13 ( .A(data_in[22]), .B(data_in[23]), .Y(n73) );
  NOR2X2M U14 ( .A(n63), .B(n38), .Y(n25) );
  NOR3BX2M U15 ( .AN(n13), .B(n115), .C(n114), .Y(n113) );
  NOR3BX2M U16 ( .AN(n3), .B(n35), .C(n28), .Y(n27) );
  CLKINVX1M U17 ( .A(n18), .Y(n35) );
  INVX1M U18 ( .A(n17), .Y(n121) );
  OAI2BB1X2M U19 ( .A0N(n40), .A1N(data_in[17]), .B0(n42), .Y(n28) );
  NAND2X2M U20 ( .A(n17), .B(n117), .Y(n38) );
  CLKINVX1M U21 ( .A(n57), .Y(n69) );
  NAND2BX2M U23 ( .AN(n109), .B(data_in[20]), .Y(n23) );
  NOR2X2M U24 ( .A(n49), .B(n29), .Y(n3) );
  INVXLM U25 ( .A(data_in[3]), .Y(n37) );
  OAI31XLM U26 ( .A0(n46), .A1(data_in[31]), .A2(n124), .B0(n33), .Y(n45) );
  NAND2BX2M U27 ( .AN(n74), .B(data_in[16]), .Y(n12) );
  AND2X1M U28 ( .A(n68), .B(data_in[4]), .Y(n71) );
  INVX2M U29 ( .A(n15), .Y(n14) );
  BUFX2M U30 ( .A(n48), .Y(n126) );
  INVXLM U31 ( .A(n89), .Y(n112) );
  OR2X4M U32 ( .A(data_in[3]), .B(n97), .Y(n98) );
  CLKNAND2X2M U33 ( .A(n6), .B(data_in[12]), .Y(n51) );
  NAND2X2M U34 ( .A(n1), .B(n127), .Y(n15) );
  CLKINVX2M U35 ( .A(n134), .Y(n97) );
  NOR2X2M U37 ( .A(n50), .B(n75), .Y(n6) );
  CLKINVX2M U39 ( .A(data_in[8]), .Y(n128) );
  INVX4M U40 ( .A(n94), .Y(n96) );
  NOR2BX4M U41 ( .AN(n68), .B(data_in[4]), .Y(n134) );
  AND2X2M U42 ( .A(n129), .B(n95), .Y(n94) );
  INVX2M U43 ( .A(n93), .Y(n106) );
  INVXLM U44 ( .A(data_in[11]), .Y(n132) );
  CLKINVX2M U45 ( .A(data_in[10]), .Y(n129) );
  OR2X8M U46 ( .A(n103), .B(n93), .Y(n91) );
  NOR3X8M U47 ( .A(n89), .B(data_in[18]), .C(data_in[17]), .Y(n90) );
  CLKNAND2X4M U48 ( .A(n19), .B(n133), .Y(n103) );
  INVX4M U49 ( .A(data_in[16]), .Y(n105) );
  NAND2X6M U50 ( .A(n99), .B(n100), .Y(n62) );
  NOR2X4M U51 ( .A(data_in[14]), .B(data_in[15]), .Y(n9) );
  NOR2X6M U52 ( .A(n81), .B(data_in[24]), .Y(n100) );
  NOR2X6M U53 ( .A(n32), .B(n54), .Y(n99) );
  NAND2X4M U54 ( .A(n73), .B(n72), .Y(n81) );
  NAND2X4M U55 ( .A(n138), .B(n130), .Y(n54) );
  NOR2X4M U57 ( .A(data_in[28]), .B(data_in[29]), .Y(n139) );
  NOR2X4M U58 ( .A(data_in[31]), .B(data_in[30]), .Y(n140) );
  CLKBUFX1M U59 ( .A(data_in[30]), .Y(n124) );
  CLKBUFX1M U60 ( .A(data_in[13]), .Y(n75) );
  NAND2BXLM U61 ( .AN(n98), .B(n87), .Y(n86) );
  INVXLM U62 ( .A(n10), .Y(n119) );
  NOR2BXLM U63 ( .AN(n107), .B(data_in[0]), .Y(pos_out[5]) );
  NOR2XLM U64 ( .A(n102), .B(data_in[1]), .Y(n1) );
  INVX3M U65 ( .A(data_in[25]), .Y(n130) );
  INVX1M U66 ( .A(data_in[19]), .Y(n125) );
  INVXLM U67 ( .A(data_in[17]), .Y(n41) );
  NOR2X12M U68 ( .A(n116), .B(n98), .Y(n66) );
  NAND2X12M U69 ( .A(n104), .B(n22), .Y(n131) );
  NAND2X12M U70 ( .A(n110), .B(n90), .Y(n67) );
  NAND2X6M U71 ( .A(n65), .B(n128), .Y(n20) );
  INVX4M U72 ( .A(n116), .Y(n39) );
  NAND2X6M U73 ( .A(n140), .B(n139), .Y(n32) );
  INVX16M U74 ( .A(n67), .Y(n104) );
  NAND2X12M U75 ( .A(n65), .B(n80), .Y(n116) );
  OAI2BB1X2M U76 ( .A0N(n125), .A1N(n41), .B0(n34), .Y(n11) );
  NAND2X2M U77 ( .A(n47), .B(n130), .Y(n48) );
  NAND3BX2M U78 ( .AN(n135), .B(n27), .C(n36), .Y(pos_out[1]) );
  NOR2BX12M U79 ( .AN(n132), .B(n91), .Y(n22) );
  OAI21BX4M U80 ( .A0(data_in[7]), .A1(data_in[5]), .B0N(n20), .Y(n101) );
  NAND2X4M U81 ( .A(data_in[2]), .B(n66), .Y(n16) );
  NAND4X4M U82 ( .A(n101), .B(n92), .C(n13), .D(n16), .Y(n122) );
  NAND2X2M U83 ( .A(n64), .B(n129), .Y(n53) );
  INVX2M U84 ( .A(n38), .Y(n36) );
  NAND3BX4M U85 ( .AN(n37), .B(n39), .C(n134), .Y(n92) );
  NAND2X4M U86 ( .A(n65), .B(data_in[8]), .Y(n52) );
  NOR2X6M U87 ( .A(n20), .B(data_in[7]), .Y(n70) );
  NAND2X2M U88 ( .A(n25), .B(n113), .Y(pos_out[0]) );
  NAND4X2M U89 ( .A(n25), .B(n92), .C(n18), .D(n26), .Y(pos_out[2]) );
  OAI211X2M U90 ( .A0(n32), .A1(n31), .B0(n11), .C0(n33), .Y(n30) );
  NAND2X4M U91 ( .A(n104), .B(n106), .Y(n50) );
  NOR2BX4M U92 ( .AN(n128), .B(n108), .Y(n80) );
  CLKINVX2M U93 ( .A(n104), .Y(n74) );
  AOI211X2M U94 ( .A0(n58), .A1(n123), .B0(data_in[31]), .C0(n59), .Y(n57) );
  AOI211X2M U95 ( .A0(data_in[26]), .A1(n60), .B0(n124), .C0(data_in[28]), .Y(
        n59) );
  NOR2XLM U96 ( .A(n74), .B(n91), .Y(n76) );
  NAND2XLM U97 ( .A(n64), .B(data_in[10]), .Y(n5) );
  CLKINVX2M U98 ( .A(data_in[0]), .Y(n102) );
  OAI21XLM U99 ( .A0(data_in[5]), .A1(data_in[4]), .B0(n39), .Y(n136) );
  INVXLM U100 ( .A(n39), .Y(n79) );
  NAND3XLM U101 ( .A(n4), .B(n5), .C(n3), .Y(n77) );
  NAND2X1M U102 ( .A(n78), .B(n2), .Y(pos_out[4]) );
  INVXLM U103 ( .A(n77), .Y(n78) );
  NAND3BX2M U104 ( .AN(n120), .B(n2), .C(n119), .Y(pos_out[3]) );
  NOR2XLM U105 ( .A(n61), .B(data_in[18]), .Y(n40) );
  OA21XLM U106 ( .A0(n126), .A1(n118), .B0(n12), .Y(n117) );
  AND2X1M U107 ( .A(n104), .B(n105), .Y(n7) );
  NOR2XLM U108 ( .A(data_in[23]), .B(data_in[22]), .Y(n44) );
  INVXLM U109 ( .A(n51), .Y(n115) );
  NAND2BXLM U110 ( .AN(n88), .B(n127), .Y(n82) );
  NOR3XLM U111 ( .A(data_in[21]), .B(data_in[23]), .C(data_in[22]), .Y(n83) );
  CLKBUFX1M U112 ( .A(data_in[14]), .Y(n84) );
  CLKBUFX1M U113 ( .A(data_in[15]), .Y(n85) );
  INVXLM U114 ( .A(n9), .Y(n8) );
  NOR2X1M U115 ( .A(n137), .B(n32), .Y(n47) );
  INVXLM U116 ( .A(n138), .Y(n137) );
  NAND2XLM U117 ( .A(n21), .B(n83), .Y(n109) );
  NOR2XLM U118 ( .A(data_in[26]), .B(data_in[27]), .Y(n31) );
  NOR2XLM U119 ( .A(n79), .B(n86), .Y(n107) );
  AND2X1M U120 ( .A(n88), .B(n127), .Y(n87) );
  INVXLM U121 ( .A(data_in[1]), .Y(n88) );
  NAND2XLM U122 ( .A(n110), .B(n112), .Y(n61) );
  NAND2BX1M U123 ( .AN(n61), .B(data_in[18]), .Y(n24) );
  NOR2XLM U124 ( .A(data_in[28]), .B(n123), .Y(n46) );
  INVXLM U125 ( .A(data_in[2]), .Y(n127) );
  INVXLM U126 ( .A(n131), .Y(n64) );
  NOR2BX2M U127 ( .AN(data_in[9]), .B(n53), .Y(n29) );
  NAND4X2M U128 ( .A(n16), .B(n24), .C(n5), .D(n52), .Y(n63) );
  INVXLM U129 ( .A(data_in[9]), .Y(n95) );
  NOR2X12M U130 ( .A(n131), .B(n96), .Y(n65) );
  NOR2XLM U131 ( .A(n48), .B(data_in[24]), .Y(n21) );
  NAND2X1M U132 ( .A(n136), .B(n23), .Y(n135) );
  OAI2B11X2M U133 ( .A1N(n75), .A0(n50), .B0(n51), .C0(n52), .Y(n49) );
  NAND2XLM U134 ( .A(data_in[25]), .B(n47), .Y(n33) );
  OAI2B11XLM U135 ( .A1N(n21), .A0(n83), .B0(n23), .C0(n24), .Y(n10) );
  OR2X1M U136 ( .A(data_in[6]), .B(data_in[7]), .Y(n108) );
  INVX4M U137 ( .A(data_in[20]), .Y(n111) );
  NOR2BXLM U138 ( .AN(n110), .B(data_in[20]), .Y(n34) );
  INVX1M U139 ( .A(data_in[24]), .Y(n118) );
  NAND2XLM U140 ( .A(n12), .B(n11), .Y(n120) );
  NOR3BX4M U141 ( .AN(n18), .B(n122), .C(n121), .Y(n2) );
  BUFX2M U142 ( .A(data_in[29]), .Y(n123) );
  INVX4M U143 ( .A(data_in[12]), .Y(n133) );
  NOR3BXLM U144 ( .AN(data_in[22]), .B(data_in[23]), .C(n126), .Y(n55) );
  INVX2M U145 ( .A(n126), .Y(n43) );
  AOI211XLM U146 ( .A0(n76), .A1(data_in[11]), .B0(n29), .C0(n30), .Y(n26) );
  AOI22XLM U147 ( .A0(data_in[11]), .A1(n6), .B0(n7), .B1(n8), .Y(n4) );
  INVXLM U148 ( .A(n124), .Y(n58) );
endmodule


module top ( data_in, clk, rst, pos_out );
  input [31:0] data_in;
  output [5:0] pos_out;
  input clk, rst;
  wire   N2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34;
  wire   [24:0] data_in_r;
  wire   [5:0] pos_out_r;

  INVXLM I_0 ( .A(rst), .Y(N2) );
  DFFTRX4M data_in_r_reg_31_ ( .D(N2), .RN(data_in[31]), .CK(clk), .QN(n19) );
  DFFTRX4M data_in_r_reg_30_ ( .D(N2), .RN(data_in[30]), .CK(clk), .QN(n29) );
  DFFTRX4M data_in_r_reg_29_ ( .D(N2), .RN(data_in[29]), .CK(clk), .QN(n23) );
  DFFTRX4M data_in_r_reg_28_ ( .D(N2), .RN(data_in[28]), .CK(clk), .QN(n15) );
  DFFTRX4M data_in_r_reg_27_ ( .D(N2), .RN(data_in[27]), .CK(clk), .QN(n25) );
  DFFTRX4M data_in_r_reg_26_ ( .D(N2), .RN(data_in[26]), .CK(clk), .QN(n21) );
  DFFTRX4M data_in_r_reg_25_ ( .D(N2), .RN(data_in[25]), .CK(clk), .QN(n5) );
  DFFTRX4M data_in_r_reg_24_ ( .D(N2), .RN(data_in[24]), .CK(clk), .Q(
        data_in_r[24]) );
  DFFTRX4M data_in_r_reg_23_ ( .D(N2), .RN(data_in[23]), .CK(clk), .QN(n31) );
  DFFTRX4M data_in_r_reg_22_ ( .D(N2), .RN(data_in[22]), .CK(clk), .QN(n33) );
  DFFTRX4M data_in_r_reg_21_ ( .D(N2), .RN(data_in[21]), .CK(clk), .QN(n27) );
  DFFTRX4M data_in_r_reg_19_ ( .D(N2), .RN(data_in[19]), .CK(clk), .QN(n3) );
  DFFTRX4M data_in_r_reg_17_ ( .D(N2), .RN(data_in[17]), .CK(clk), .Q(
        data_in_r[17]) );
  DFFTRX4M data_in_r_reg_13_ ( .D(N2), .RN(data_in[13]), .CK(clk), .Q(
        data_in_r[13]) );
  DFFTRX4M data_in_r_reg_5_ ( .D(N2), .RN(data_in[5]), .CK(clk), .Q(
        data_in_r[5]) );
  DFFTRX4M pos_out_reg_0_ ( .D(N2), .RN(pos_out_r[0]), .CK(clk), .Q(pos_out[0]) );
  DFFTRX4M pos_out_reg_1_ ( .D(N2), .RN(pos_out_r[1]), .CK(clk), .Q(pos_out[1]) );
  DFFTRX4M pos_out_reg_2_ ( .D(N2), .RN(pos_out_r[2]), .CK(clk), .Q(pos_out[2]) );
  DFFTRX4M pos_out_reg_3_ ( .D(N2), .RN(pos_out_r[3]), .CK(clk), .Q(pos_out[3]) );
  DFFTRX4M pos_out_reg_4_ ( .D(N2), .RN(pos_out_r[4]), .CK(clk), .Q(pos_out[4]) );
  DFFTRX4M pos_out_reg_5_ ( .D(N2), .RN(pos_out_r[5]), .CK(clk), .Q(pos_out[5]) );
  VectorDetector_m1 VectorDetector_m1_u0 ( .data_in({n20, n30, n24, n16, n26, 
        n22, n6, data_in_r[24], n32, n34, n28, n8, n4, data_in_r[18:17], n12, 
        n18, n10, data_in_r[13], n14, data_in_r[11:0]}), .pos_out(pos_out_r)
         );
  DFFTRX1M data_in_r_reg_0_ ( .D(N2), .RN(data_in[0]), .CK(clk), .Q(
        data_in_r[0]) );
  DFFTRX1M data_in_r_reg_1_ ( .D(N2), .RN(data_in[1]), .CK(clk), .Q(
        data_in_r[1]) );
  DFFTRX1M data_in_r_reg_20_ ( .D(N2), .RN(data_in[20]), .CK(clk), .QN(n7) );
  DFFTRX1M data_in_r_reg_12_ ( .D(N2), .RN(data_in[12]), .CK(clk), .QN(n13) );
  DFFTRX2M data_in_r_reg_14_ ( .D(N2), .RN(data_in[14]), .CK(clk), .QN(n9) );
  DFFTRX2M data_in_r_reg_15_ ( .D(N2), .RN(data_in[15]), .CK(clk), .QN(n17) );
  DFFTRX2M data_in_r_reg_16_ ( .D(N2), .RN(data_in[16]), .CK(clk), .QN(n11) );
  DFFTRX1M data_in_r_reg_9_ ( .D(N2), .RN(data_in[9]), .CK(clk), .Q(
        data_in_r[9]) );
  DFFTRX1M data_in_r_reg_11_ ( .D(N2), .RN(data_in[11]), .CK(clk), .Q(
        data_in_r[11]) );
  DFFTRX1M data_in_r_reg_10_ ( .D(N2), .RN(data_in[10]), .CK(clk), .Q(
        data_in_r[10]) );
  DFFTRX1M data_in_r_reg_6_ ( .D(N2), .RN(data_in[6]), .CK(clk), .Q(
        data_in_r[6]) );
  DFFTRX1M data_in_r_reg_8_ ( .D(N2), .RN(data_in[8]), .CK(clk), .Q(
        data_in_r[8]) );
  DFFTRX2M data_in_r_reg_7_ ( .D(N2), .RN(data_in[7]), .CK(clk), .Q(
        data_in_r[7]) );
  DFFTRX1M data_in_r_reg_4_ ( .D(N2), .RN(data_in[4]), .CK(clk), .Q(
        data_in_r[4]) );
  DFFTRX1M data_in_r_reg_2_ ( .D(N2), .RN(data_in[2]), .CK(clk), .Q(
        data_in_r[2]) );
  DFFTRX1M data_in_r_reg_3_ ( .D(N2), .RN(data_in[3]), .CK(clk), .Q(
        data_in_r[3]) );
  DFFTRX2M data_in_r_reg_18_ ( .D(N2), .RN(data_in[18]), .CK(clk), .Q(
        data_in_r[18]) );
  INVX2M U3 ( .A(n11), .Y(n12) );
  INVX2M U4 ( .A(n13), .Y(n14) );
  INVX2M U5 ( .A(n7), .Y(n8) );
  INVX4M U6 ( .A(n19), .Y(n20) );
  INVX4M U7 ( .A(n27), .Y(n28) );
  INVX4M U8 ( .A(n5), .Y(n6) );
  INVX2M U9 ( .A(n9), .Y(n10) );
  CLKINVX2M U10 ( .A(n17), .Y(n18) );
  CLKINVX1M U11 ( .A(n3), .Y(n4) );
  INVX4M U12 ( .A(n21), .Y(n22) );
  INVX4M U13 ( .A(n15), .Y(n16) );
  CLKINVX4M U14 ( .A(n31), .Y(n32) );
  CLKINVX4M U15 ( .A(n33), .Y(n34) );
  INVX4M U16 ( .A(n29), .Y(n30) );
  INVX4M U17 ( .A(n23), .Y(n24) );
  INVX4M U18 ( .A(n25), .Y(n26) );
endmodule

