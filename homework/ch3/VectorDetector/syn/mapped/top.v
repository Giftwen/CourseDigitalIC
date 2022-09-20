/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Tue Sep 20 22:54:30 2022
/////////////////////////////////////////////////////////////


module VectorDetector_m1 ( data_in, pos_out );
  input [31:0] data_in;
  output [5:0] pos_out;
  wire   n1, n2, n3, n4, n5, n6, n9, n10, n11, n12, n13, n16, n17, n19, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n36,
         n38, n39, n40, n41, n42, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n62, n65, n66, n68, n69, n7,
         n8, n14, n15, n18, n20, n35, n37, n43, n61, n63, n64, n67, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153;

  NOR4BX1M U33 ( .AN(n23), .B(n55), .C(n56), .D(n57), .Y(n54) );
  INVXLM U36 ( .A(data_in[27]), .Y(n60) );
  INVX2M U56 ( .A(data_in[5]), .Y(n68) );
  AND2X6M U3 ( .A(n109), .B(data_in[1]), .Y(n88) );
  AOI22XLM U4 ( .A0(data_in[11]), .A1(n6), .B0(n8), .B1(n124), .Y(n4) );
  BUFX4M U5 ( .A(data_in[30]), .Y(n143) );
  NAND2X2M U6 ( .A(data_in[10]), .B(n85), .Y(n5) );
  CLKAND2X4M U7 ( .A(n133), .B(n97), .Y(n98) );
  NOR2X3M U8 ( .A(n119), .B(n116), .Y(n99) );
  OR2X2M U9 ( .A(data_in[7]), .B(data_in[8]), .Y(n119) );
  INVX2M U10 ( .A(data_in[25]), .Y(n139) );
  NAND2X6M U11 ( .A(n66), .B(data_in[2]), .Y(n16) );
  NOR2X6M U12 ( .A(n67), .B(n82), .Y(n109) );
  CLKNAND2X4M U13 ( .A(n65), .B(n15), .Y(n70) );
  NOR2X8M U14 ( .A(n27), .B(data_in[3]), .Y(n66) );
  NAND2BX8M U15 ( .AN(n27), .B(data_in[3]), .Y(n19) );
  NOR2BX8M U16 ( .AN(n65), .B(n101), .Y(n1) );
  INVXLM U17 ( .A(n93), .Y(n94) );
  INVX12M U18 ( .A(n37), .Y(n134) );
  NOR2BX1M U19 ( .AN(n69), .B(data_in[6]), .Y(n39) );
  INVX4M U20 ( .A(n69), .Y(n67) );
  INVX10M U21 ( .A(n50), .Y(n81) );
  NAND2X4M U22 ( .A(n13), .B(n70), .Y(n72) );
  NAND2BX8M U23 ( .AN(n50), .B(n131), .Y(n151) );
  NAND2X12M U24 ( .A(n134), .B(n80), .Y(n126) );
  NAND3X6M U25 ( .A(n123), .B(n21), .C(n122), .Y(n107) );
  INVX2M U26 ( .A(n5), .Y(n77) );
  AND2X4M U27 ( .A(n152), .B(n132), .Y(n133) );
  NOR2X2M U28 ( .A(n129), .B(data_in[1]), .Y(n112) );
  INVX2M U29 ( .A(n77), .Y(n43) );
  NAND2X4M U30 ( .A(n133), .B(n125), .Y(n82) );
  INVX2M U31 ( .A(n18), .Y(n15) );
  INVX8M U32 ( .A(n130), .Y(n131) );
  INVX3M U34 ( .A(data_in[20]), .Y(n153) );
  INVX6M U35 ( .A(n9), .Y(n8) );
  CLKBUFX1M U37 ( .A(data_in[15]), .Y(n61) );
  INVXLM U38 ( .A(data_in[14]), .Y(n20) );
  NAND2X4M U39 ( .A(n85), .B(n145), .Y(n53) );
  NOR2X1M U40 ( .A(n20), .B(n61), .Y(n64) );
  NAND2BX2M U41 ( .AN(n73), .B(n149), .Y(n18) );
  NOR2X1M U42 ( .A(data_in[5]), .B(data_in[4]), .Y(n138) );
  INVX2M U43 ( .A(data_in[6]), .Y(n132) );
  INVX4M U44 ( .A(data_in[18]), .Y(n80) );
  NOR2X1M U45 ( .A(data_in[7]), .B(data_in[5]), .Y(n73) );
  NAND2X2M U46 ( .A(n43), .B(n4), .Y(n71) );
  OR2X4M U47 ( .A(n29), .B(n49), .Y(n14) );
  NOR2BX4M U48 ( .AN(data_in[9]), .B(n53), .Y(n29) );
  NAND2X4M U49 ( .A(n78), .B(n131), .Y(n111) );
  NAND2BX1M U50 ( .AN(n62), .B(data_in[20]), .Y(n23) );
  NAND2BX4M U51 ( .AN(n119), .B(n110), .Y(n101) );
  INVX2M U52 ( .A(n114), .Y(n7) );
  NAND2BX8M U53 ( .AN(data_in[19]), .B(n153), .Y(n128) );
  OR2X8M U54 ( .A(n118), .B(n95), .Y(n116) );
  CLKINVX1M U55 ( .A(n143), .Y(n58) );
  INVX2M U57 ( .A(n119), .Y(n97) );
  INVX2M U58 ( .A(n129), .Y(n125) );
  BUFX2M U59 ( .A(data_in[28]), .Y(n105) );
  CLKINVX6M U60 ( .A(n117), .Y(n95) );
  NOR2BX4M U61 ( .AN(n68), .B(data_in[4]), .Y(n152) );
  INVX6M U62 ( .A(data_in[16]), .Y(n135) );
  INVX2M U63 ( .A(data_in[10]), .Y(n145) );
  OR2X6M U64 ( .A(data_in[9]), .B(data_in[10]), .Y(n118) );
  INVX1M U65 ( .A(data_in[6]), .Y(n75) );
  INVXLM U66 ( .A(data_in[8]), .Y(n149) );
  INVX3M U67 ( .A(data_in[11]), .Y(n117) );
  AOI211X1M U68 ( .A0(n104), .A1(n60), .B0(n143), .C0(n105), .Y(n59) );
  NAND3X12M U69 ( .A(n123), .B(n21), .C(n122), .Y(n50) );
  NOR2X12M U70 ( .A(n151), .B(n76), .Y(n69) );
  NOR2X6M U71 ( .A(n84), .B(n116), .Y(n65) );
  NAND2X12M U72 ( .A(n81), .B(n131), .Y(n84) );
  INVX8M U73 ( .A(data_in[17]), .Y(n93) );
  NAND2X2M U74 ( .A(data_in[12]), .B(n6), .Y(n51) );
  INVX2M U75 ( .A(n10), .Y(n136) );
  NAND2X4M U76 ( .A(n148), .B(n147), .Y(n32) );
  AOI21X6M U77 ( .A0(data_in[24]), .A1(n7), .B0(n35), .Y(n150) );
  INVX4M U78 ( .A(n12), .Y(n35) );
  CLKNAND2X12M U79 ( .A(n122), .B(n115), .Y(n120) );
  NAND2X8M U80 ( .A(n93), .B(n135), .Y(n37) );
  NOR2X12M U81 ( .A(n128), .B(n121), .Y(n122) );
  NOR2X2M U82 ( .A(n120), .B(n90), .Y(n124) );
  NOR2X12M U83 ( .A(n126), .B(n8), .Y(n123) );
  BUFX8M U84 ( .A(n21), .Y(n115) );
  NOR2X4M U85 ( .A(n120), .B(data_in[18]), .Y(n40) );
  OAI31X2M U86 ( .A0(n46), .A1(data_in[31]), .A2(n143), .B0(n33), .Y(n45) );
  NOR3X12M U87 ( .A(data_in[21]), .B(data_in[23]), .C(data_in[22]), .Y(n22) );
  AOI211X2M U88 ( .A0(n58), .A1(n142), .B0(data_in[31]), .C0(n59), .Y(n57) );
  NAND2X4M U89 ( .A(n115), .B(n22), .Y(n62) );
  OAI21X2M U90 ( .A0(data_in[19]), .A1(n94), .B0(n34), .Y(n11) );
  NAND2X8M U91 ( .A(n89), .B(n98), .Y(n27) );
  NAND2X4M U92 ( .A(n89), .B(data_in[8]), .Y(n52) );
  NAND2BX2M U93 ( .AN(n120), .B(data_in[18]), .Y(n24) );
  OR2X8M U94 ( .A(data_in[13]), .B(data_in[12]), .Y(n130) );
  NOR2X12M U95 ( .A(n84), .B(n116), .Y(n89) );
  NOR2X4M U96 ( .A(n63), .B(n38), .Y(n25) );
  NAND3BX4M U97 ( .AN(n87), .B(n16), .C(n5), .Y(n63) );
  NAND2X2M U98 ( .A(n24), .B(n52), .Y(n87) );
  INVX4M U99 ( .A(n17), .Y(n141) );
  NOR2X8M U100 ( .A(n111), .B(n95), .Y(n85) );
  CLKNAND2X8M U101 ( .A(n69), .B(n74), .Y(n13) );
  NOR3BXLM U102 ( .AN(n64), .B(n120), .C(n94), .Y(n56) );
  NOR2X2M U103 ( .A(n14), .B(n71), .Y(n100) );
  NAND3BX2M U104 ( .AN(n96), .B(n25), .C(n26), .Y(pos_out[2]) );
  NOR2BX2M U105 ( .AN(data_in[9]), .B(n53), .Y(n86) );
  NAND3BX4M U106 ( .AN(n72), .B(n16), .C(n19), .Y(n140) );
  NAND2X8M U107 ( .A(n1), .B(data_in[0]), .Y(n17) );
  NOR2X8M U108 ( .A(n48), .B(data_in[24]), .Y(n21) );
  CLKINVX4M U109 ( .A(n107), .Y(n78) );
  NAND2X8M U110 ( .A(n17), .B(n150), .Y(n38) );
  NAND3BX4M U111 ( .AN(n135), .B(n40), .C(n41), .Y(n12) );
  NOR2X6M U112 ( .A(data_in[28]), .B(data_in[29]), .Y(n147) );
  NOR2X2M U113 ( .A(n62), .B(data_in[20]), .Y(n34) );
  AOI31X2M U114 ( .A0(n7), .A1(data_in[21]), .A2(n44), .B0(n45), .Y(n42) );
  NOR2X6M U115 ( .A(data_in[26]), .B(data_in[27]), .Y(n146) );
  NOR2X2M U116 ( .A(data_in[13]), .B(n107), .Y(n6) );
  OAI2BB1X4M U117 ( .A0N(data_in[4]), .A1N(n68), .B0(n75), .Y(n74) );
  CLKINVX12M U118 ( .A(n99), .Y(n76) );
  BUFX2M U119 ( .A(n111), .Y(n144) );
  NAND3X2M U120 ( .A(n83), .B(n54), .C(n25), .Y(pos_out[0]) );
  AOI2B1X4M U121 ( .A1N(n138), .A0(n39), .B0(n38), .Y(n36) );
  NAND4BX2M U122 ( .AN(n79), .B(n36), .C(n3), .D(n103), .Y(pos_out[1]) );
  OAI2B11X2M U123 ( .A1N(n108), .A0(n41), .B0(n42), .C0(n23), .Y(n79) );
  AND2X1M U124 ( .A(n13), .B(n51), .Y(n83) );
  AOI211X2M U125 ( .A0(data_in[11]), .A1(n28), .B0(n86), .C0(n30), .Y(n26) );
  OAI2B11X4M U126 ( .A1N(data_in[13]), .A0(n107), .B0(n52), .C0(n51), .Y(n49)
         );
  NAND2X2M U127 ( .A(n109), .B(data_in[1]), .Y(n102) );
  INVX1M U128 ( .A(n60), .Y(n91) );
  NOR3X4M U129 ( .A(n140), .B(n141), .C(n88), .Y(n2) );
  INVXLM U130 ( .A(data_in[17]), .Y(n41) );
  NAND2BXLM U131 ( .AN(data_in[18]), .B(n134), .Y(n90) );
  NOR2X6M U132 ( .A(data_in[31]), .B(data_in[30]), .Y(n148) );
  NOR2XLM U133 ( .A(data_in[26]), .B(n91), .Y(n92) );
  OR2X4M U134 ( .A(data_in[2]), .B(data_in[3]), .Y(n129) );
  NAND2X1M U135 ( .A(n102), .B(n19), .Y(n96) );
  INVX2M U136 ( .A(n144), .Y(n28) );
  OAI2B11XLM U137 ( .A1N(n115), .A0(n22), .B0(n23), .C0(n24), .Y(n10) );
  NOR2XLM U138 ( .A(data_in[23]), .B(data_in[22]), .Y(n44) );
  NAND2X1M U139 ( .A(n100), .B(n2), .Y(pos_out[4]) );
  NAND2XLM U140 ( .A(n109), .B(data_in[1]), .Y(n103) );
  DLY1X1M U141 ( .A(data_in[26]), .Y(n104) );
  CLKINVX8M U142 ( .A(n32), .Y(n106) );
  NAND3BX2M U143 ( .AN(n137), .B(n2), .C(n136), .Y(pos_out[3]) );
  NOR2XLM U144 ( .A(n91), .B(n104), .Y(n31) );
  OAI211X2M U145 ( .A0(n113), .A1(n31), .B0(n11), .C0(n33), .Y(n30) );
  NOR2X2M U146 ( .A(n49), .B(n29), .Y(n3) );
  NOR2XLM U147 ( .A(n142), .B(n105), .Y(n46) );
  NOR2XLM U148 ( .A(n120), .B(data_in[18]), .Y(n108) );
  CLKAND2X4M U149 ( .A(n112), .B(n133), .Y(n110) );
  CLKNAND2X2M U150 ( .A(n47), .B(data_in[25]), .Y(n33) );
  NOR2X4M U151 ( .A(data_in[14]), .B(data_in[15]), .Y(n9) );
  AND2X1M U152 ( .A(n92), .B(n106), .Y(n47) );
  INVXLM U153 ( .A(n106), .Y(n113) );
  NAND2X1M U154 ( .A(n11), .B(n12), .Y(n137) );
  NAND2XLM U155 ( .A(n127), .B(n106), .Y(n114) );
  INVX4M U156 ( .A(n22), .Y(n121) );
  AND2X8M U157 ( .A(n146), .B(n139), .Y(n127) );
  NAND2X8M U158 ( .A(n106), .B(n127), .Y(n48) );
  DLY1X1M U159 ( .A(data_in[29]), .Y(n142) );
  NOR2BXLM U160 ( .AN(n1), .B(data_in[0]), .Y(pos_out[5]) );
  NOR3BXLM U161 ( .AN(data_in[22]), .B(data_in[23]), .C(n114), .Y(n55) );
endmodule


module top ( data_in, clk, rst, pos_out );
  input [31:0] data_in;
  output [5:0] pos_out;
  input clk, rst;
  wire   N2, n1, n2, n3, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;
  wire   [24:0] data_in_r;
  wire   [5:0] pos_out_r;

  INVXLM I_0 ( .A(rst), .Y(N2) );
  DFFTRX4M data_in_r_reg_31_ ( .D(N2), .RN(data_in[31]), .CK(clk), .QN(n12) );
  DFFTRX4M data_in_r_reg_30_ ( .D(N2), .RN(data_in[30]), .CK(clk), .QN(n10) );
  DFFTRX4M data_in_r_reg_29_ ( .D(N2), .RN(data_in[29]), .CK(clk), .QN(n20) );
  DFFTRX4M data_in_r_reg_28_ ( .D(N2), .RN(data_in[28]), .CK(clk), .QN(n14) );
  DFFTRX4M data_in_r_reg_27_ ( .D(N2), .RN(data_in[27]), .CK(clk), .QN(n22) );
  DFFTRX4M data_in_r_reg_26_ ( .D(N2), .RN(data_in[26]), .CK(clk), .QN(n16) );
  DFFTRX4M data_in_r_reg_25_ ( .D(N2), .RN(data_in[25]), .CK(clk), .QN(n18) );
  DFFTRX4M data_in_r_reg_24_ ( .D(N2), .RN(data_in[24]), .CK(clk), .Q(
        data_in_r[24]) );
  DFFTRX4M data_in_r_reg_23_ ( .D(N2), .RN(data_in[23]), .CK(clk), .QN(n6) );
  DFFTRX4M data_in_r_reg_22_ ( .D(N2), .RN(data_in[22]), .CK(clk), .QN(n8) );
  DFFTRX4M data_in_r_reg_21_ ( .D(N2), .RN(data_in[21]), .CK(clk), .QN(n2) );
  DFFTRX4M data_in_r_reg_20_ ( .D(N2), .RN(data_in[20]), .CK(clk), .Q(n1) );
  DFFTRX4M data_in_r_reg_19_ ( .D(N2), .RN(data_in[19]), .CK(clk), .Q(
        data_in_r[19]) );
  DFFTRX4M data_in_r_reg_18_ ( .D(N2), .RN(data_in[18]), .CK(clk), .Q(
        data_in_r[18]) );
  DFFTRX4M data_in_r_reg_17_ ( .D(N2), .RN(data_in[17]), .CK(clk), .Q(
        data_in_r[17]) );
  DFFTRX4M data_in_r_reg_16_ ( .D(N2), .RN(data_in[16]), .CK(clk), .Q(
        data_in_r[16]) );
  DFFTRX4M data_in_r_reg_15_ ( .D(N2), .RN(data_in[15]), .CK(clk), .Q(
        data_in_r[15]) );
  DFFTRX4M data_in_r_reg_14_ ( .D(N2), .RN(data_in[14]), .CK(clk), .Q(
        data_in_r[14]) );
  DFFTRX4M data_in_r_reg_13_ ( .D(N2), .RN(data_in[13]), .CK(clk), .Q(
        data_in_r[13]) );
  DFFTRX4M data_in_r_reg_12_ ( .D(N2), .RN(data_in[12]), .CK(clk), .Q(
        data_in_r[12]) );
  DFFTRX4M data_in_r_reg_11_ ( .D(N2), .RN(data_in[11]), .CK(clk), .Q(
        data_in_r[11]) );
  DFFTRX4M data_in_r_reg_10_ ( .D(N2), .RN(data_in[10]), .CK(clk), .Q(
        data_in_r[10]) );
  DFFTRX4M data_in_r_reg_9_ ( .D(N2), .RN(data_in[9]), .CK(clk), .Q(
        data_in_r[9]) );
  DFFTRX4M data_in_r_reg_8_ ( .D(N2), .RN(data_in[8]), .CK(clk), .Q(
        data_in_r[8]) );
  DFFTRX4M data_in_r_reg_6_ ( .D(N2), .RN(data_in[6]), .CK(clk), .Q(
        data_in_r[6]) );
  DFFTRX4M data_in_r_reg_5_ ( .D(N2), .RN(data_in[5]), .CK(clk), .Q(
        data_in_r[5]) );
  DFFTRX4M data_in_r_reg_3_ ( .D(N2), .RN(data_in[3]), .CK(clk), .Q(
        data_in_r[3]) );
  DFFTRX4M data_in_r_reg_1_ ( .D(N2), .RN(data_in[1]), .CK(clk), .Q(
        data_in_r[1]) );
  DFFTRX4M data_in_r_reg_0_ ( .D(N2), .RN(data_in[0]), .CK(clk), .Q(
        data_in_r[0]) );
  DFFTRX4M pos_out_reg_0_ ( .D(N2), .RN(pos_out_r[0]), .CK(clk), .Q(pos_out[0]) );
  DFFTRX4M pos_out_reg_1_ ( .D(N2), .RN(pos_out_r[1]), .CK(clk), .Q(pos_out[1]) );
  DFFTRX4M pos_out_reg_2_ ( .D(N2), .RN(pos_out_r[2]), .CK(clk), .Q(pos_out[2]) );
  DFFTRX4M pos_out_reg_3_ ( .D(N2), .RN(pos_out_r[3]), .CK(clk), .Q(pos_out[3]) );
  DFFTRX4M pos_out_reg_4_ ( .D(N2), .RN(pos_out_r[4]), .CK(clk), .Q(pos_out[4]) );
  DFFTRX4M pos_out_reg_5_ ( .D(N2), .RN(pos_out_r[5]), .CK(clk), .Q(pos_out[5]) );
  VectorDetector_m1 VectorDetector_m1_u0 ( .data_in({n13, n11, n21, n15, n23, 
        n17, n19, data_in_r[24], n7, n9, n3, n1, data_in_r[19:0]}), .pos_out(
        pos_out_r) );
  DFFTRX1M data_in_r_reg_7_ ( .D(N2), .RN(data_in[7]), .CK(clk), .Q(
        data_in_r[7]) );
  DFFTRX2M data_in_r_reg_2_ ( .D(N2), .RN(data_in[2]), .CK(clk), .Q(
        data_in_r[2]) );
  DFFTRX1M data_in_r_reg_4_ ( .D(N2), .RN(data_in[4]), .CK(clk), .Q(
        data_in_r[4]) );
  INVX2M U3 ( .A(n2), .Y(n3) );
  INVX4M U4 ( .A(n6), .Y(n7) );
  INVX4M U5 ( .A(n12), .Y(n13) );
  INVX4M U6 ( .A(n22), .Y(n23) );
  INVX4M U7 ( .A(n16), .Y(n17) );
  INVX4M U8 ( .A(n20), .Y(n21) );
  INVX4M U9 ( .A(n14), .Y(n15) );
  CLKINVX4M U10 ( .A(n18), .Y(n19) );
  INVX4M U11 ( .A(n10), .Y(n11) );
  INVX5M U12 ( .A(n8), .Y(n9) );
endmodule

