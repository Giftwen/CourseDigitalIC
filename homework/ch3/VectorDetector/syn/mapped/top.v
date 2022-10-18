/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Sun Oct  9 09:11:47 2022
/////////////////////////////////////////////////////////////


module VectorDetector_m2 ( data_in, pos_out );
  input [31:0] data_in;
  output [5:0] pos_out;
  wire   n96, n2, n3, n4, n6, n7, n8, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n21, n22, n23, n24, n25, n26, n28, n29, n30, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n1, n9, n10, n20, n27, n31, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94;

  NOR2BX1M U31 ( .AN(data_in[9]), .B(n48), .Y(n32) );
  NOR4X1M U32 ( .A(n34), .B(n35), .C(n36), .D(n37), .Y(n25) );
  OR2X1M U40 ( .A(n88), .B(n47), .Y(n24) );
  OR3X2M U34 ( .A(data_in[23]), .B(n2), .C(n87), .Y(n23) );
  AND4X2M U2 ( .A(n84), .B(n85), .C(n86), .D(n76), .Y(n92) );
  AOI2B1X1M U3 ( .A1N(data_in[6]), .A0(data_in[5]), .B0(n17), .Y(n30) );
  NAND3X4M U4 ( .A(n69), .B(n60), .C(n38), .Y(n22) );
  BUFX5M U5 ( .A(data_in[10]), .Y(n48) );
  AND4X1M U6 ( .A(n60), .B(n85), .C(n86), .D(n84), .Y(n10) );
  CLKINVX2M U7 ( .A(data_in[19]), .Y(n60) );
  OR2X2M U8 ( .A(data_in[20]), .B(data_in[21]), .Y(n9) );
  NOR2X6M U9 ( .A(n31), .B(data_in[22]), .Y(n38) );
  INVX2M U10 ( .A(data_in[8]), .Y(n61) );
  NOR2X4M U11 ( .A(data_in[21]), .B(data_in[20]), .Y(n41) );
  NOR2X1M U12 ( .A(data_in[4]), .B(data_in[5]), .Y(n44) );
  NOR2X6M U13 ( .A(data_in[13]), .B(data_in[12]), .Y(n56) );
  NOR2X6M U14 ( .A(data_in[15]), .B(data_in[14]), .Y(n57) );
  NOR2X4M U15 ( .A(n63), .B(data_in[19]), .Y(n66) );
  OAI2BB1X2M U16 ( .A0N(data_in[2]), .A1N(n16), .B0(n67), .Y(n29) );
  NOR3X1M U17 ( .A(n78), .B(n67), .C(n83), .Y(pos_out[5]) );
  NAND2BX2M U18 ( .AN(data_in[1]), .B(n16), .Y(n67) );
  OAI22XLM U19 ( .A0(n92), .A1(n46), .B0(n3), .B1(n4), .Y(pos_out[3]) );
  INVX2M U20 ( .A(pos_out[4]), .Y(n4) );
  CLKINVX4M U21 ( .A(n55), .Y(n73) );
  NAND2X4M U22 ( .A(n66), .B(n20), .Y(n68) );
  AND2X4M U23 ( .A(n69), .B(n38), .Y(n1) );
  BUFX8M U24 ( .A(data_in[28]), .Y(n65) );
  NAND2X3M U25 ( .A(n69), .B(n38), .Y(n63) );
  INVX2M U26 ( .A(data_in[7]), .Y(n45) );
  NAND2X2M U27 ( .A(n45), .B(n44), .Y(n43) );
  INVX2M U28 ( .A(data_in[2]), .Y(n82) );
  NAND2X4M U29 ( .A(n1), .B(n10), .Y(n83) );
  INVX2M U30 ( .A(n90), .Y(n3) );
  NOR2X4M U33 ( .A(n78), .B(data_in[1]), .Y(n59) );
  NAND2X6M U35 ( .A(n54), .B(n53), .Y(n52) );
  INVX2M U36 ( .A(n75), .Y(n49) );
  NAND2BX4M U37 ( .AN(data_in[0]), .B(n82), .Y(n78) );
  NOR4X2M U38 ( .A(data_in[7]), .B(data_in[6]), .C(data_in[4]), .D(data_in[5]), 
        .Y(n75) );
  NOR2X4M U39 ( .A(data_in[9]), .B(data_in[10]), .Y(n62) );
  CLKINVX8M U41 ( .A(n52), .Y(n51) );
  NOR3X4M U42 ( .A(n43), .B(data_in[3]), .C(data_in[6]), .Y(n94) );
  NOR3X4M U43 ( .A(n9), .B(data_in[22]), .C(data_in[23]), .Y(n87) );
  NAND2X4M U44 ( .A(n62), .B(n61), .Y(n64) );
  CLKINVX6M U45 ( .A(data_in[23]), .Y(n42) );
  INVX4M U46 ( .A(data_in[16]), .Y(n84) );
  INVX4M U47 ( .A(data_in[17]), .Y(n86) );
  INVX4M U48 ( .A(data_in[18]), .Y(n85) );
  CLKINVX2M U49 ( .A(data_in[11]), .Y(n50) );
  NOR2BX1M U50 ( .AN(data_in[13]), .B(n77), .Y(n33) );
  AND3X2M U51 ( .A(n85), .B(n86), .C(n84), .Y(n20) );
  INVX4M U52 ( .A(n27), .Y(n21) );
  NOR2X4M U53 ( .A(n7), .B(data_in[27]), .Y(n27) );
  NAND2X4M U54 ( .A(n71), .B(n70), .Y(n2) );
  NAND2X8M U55 ( .A(n42), .B(n41), .Y(n31) );
  NOR3X4M U56 ( .A(n30), .B(n29), .C(n28), .Y(n26) );
  OAI22X2M U57 ( .A0(n21), .A1(data_in[26]), .B0(data_in[18]), .B1(n22), .Y(
        n19) );
  NAND2X2M U58 ( .A(n2), .B(n72), .Y(n7) );
  AOI21X1M U59 ( .A0(n79), .A1(n4), .B0(n12), .Y(pos_out[1]) );
  NOR4X4M U60 ( .A(n65), .B(data_in[30]), .C(data_in[29]), .D(data_in[31]), 
        .Y(n71) );
  NOR4X4M U61 ( .A(data_in[26]), .B(data_in[25]), .C(data_in[27]), .D(
        data_in[24]), .Y(n70) );
  NOR2X6M U62 ( .A(n58), .B(n83), .Y(n96) );
  NAND3BX4M U63 ( .AN(data_in[7]), .B(n49), .C(n90), .Y(n17) );
  NOR4X1M U64 ( .A(data_in[15]), .B(data_in[12]), .C(data_in[13]), .D(
        data_in[14]), .Y(n89) );
  OAI21X1M U65 ( .A0(n18), .A1(n19), .B0(n68), .Y(n11) );
  DLY1X1M U66 ( .A(n2), .Y(n46) );
  NOR2X4M U67 ( .A(n96), .B(n68), .Y(pos_out[4]) );
  AND2X8M U68 ( .A(n40), .B(n39), .Y(n69) );
  BUFX10M U69 ( .A(data_in[31]), .Y(n47) );
  NOR4X4M U70 ( .A(n48), .B(data_in[9]), .C(data_in[8]), .D(n74), .Y(n91) );
  OAI33X2M U71 ( .A0(n77), .A1(data_in[15]), .A2(n89), .B0(n91), .B1(
        data_in[10]), .B2(n74), .Y(n14) );
  NOR4X1M U72 ( .A(data_in[30]), .B(n47), .C(data_in[29]), .D(data_in[28]), 
        .Y(n88) );
  NOR3BX2M U73 ( .AN(n11), .B(n14), .C(n13), .Y(n12) );
  NAND2X8M U74 ( .A(n51), .B(n50), .Y(n74) );
  NOR2X12M U75 ( .A(data_in[13]), .B(data_in[12]), .Y(n53) );
  NOR2X12M U76 ( .A(data_in[15]), .B(data_in[14]), .Y(n54) );
  NAND2X4M U77 ( .A(n57), .B(n56), .Y(n55) );
  NAND2X8M U78 ( .A(n16), .B(n59), .Y(n58) );
  OAI221X2M U79 ( .A0(n80), .A1(n89), .B0(n3), .B1(n75), .C0(pos_out[4]), .Y(
        n6) );
  OAI22X2M U80 ( .A0(n92), .A1(n25), .B0(n26), .B1(n4), .Y(pos_out[0]) );
  OAI33X2M U81 ( .A0(n91), .A1(n32), .A2(n74), .B0(n89), .B1(data_in[15]), 
        .B2(n33), .Y(n28) );
  AOI2B1XLM U82 ( .A1N(data_in[30]), .A0(data_in[29]), .B0(n24), .Y(n34) );
  NOR2X4M U83 ( .A(n64), .B(n15), .Y(n8) );
  AND2X8M U84 ( .A(n8), .B(n94), .Y(n16) );
  NOR4X4M U85 ( .A(n47), .B(data_in[30]), .C(data_in[29]), .D(data_in[28]), 
        .Y(n39) );
  OAI2BB2XLM U86 ( .B0(n17), .B1(data_in[6]), .A0N(n16), .A1N(n82), .Y(n13) );
  CLKINVX1M U87 ( .A(n22), .Y(n76) );
  AOI2B1XLM U88 ( .A1N(data_in[22]), .A0(data_in[21]), .B0(n23), .Y(n37) );
  NOR4X1M U89 ( .A(n47), .B(data_in[30]), .C(data_in[29]), .D(data_in[28]), 
        .Y(n72) );
  NAND2BX4M U90 ( .AN(data_in[11]), .B(n73), .Y(n15) );
  DLY1X1M U91 ( .A(data_in[14]), .Y(n77) );
  AOI2B1XLM U92 ( .A1N(data_in[26]), .A0(data_in[25]), .B0(n21), .Y(n35) );
  OAI21XLM U93 ( .A0(n18), .A1(n19), .B0(n68), .Y(n79) );
  OAI22X2M U94 ( .A0(data_in[22]), .A1(n23), .B0(data_in[30]), .B1(n24), .Y(
        n18) );
  INVXLM U95 ( .A(n3), .Y(n80) );
  NOR4X4M U96 ( .A(n74), .B(data_in[9]), .C(data_in[8]), .D(n48), .Y(n90) );
  OAI211X1M U97 ( .A0(n92), .A1(n93), .B0(n6), .C0(n7), .Y(pos_out[2]) );
  NAND2BXLM U98 ( .AN(n46), .B(n87), .Y(n93) );
  AOI2B1XLM U99 ( .A1N(data_in[18]), .A0(data_in[17]), .B0(n22), .Y(n36) );
  NOR4X4M U100 ( .A(data_in[27]), .B(data_in[25]), .C(data_in[26]), .D(
        data_in[24]), .Y(n40) );
endmodule


module top ( data_in, clk, rst, pos_out );
  input [31:0] data_in;
  output [5:0] pos_out;
  input clk, rst;
  wire   N2, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37;
  wire   [23:0] data_in_r;
  wire   [5:0] pos_out_r;

  INVXLM I_0 ( .A(rst), .Y(N2) );
  DFFTRX4M data_in_r_reg_30_ ( .D(N2), .RN(data_in[30]), .CK(clk), .QN(n28) );
  DFFTRX4M data_in_r_reg_29_ ( .D(N2), .RN(data_in[29]), .CK(clk), .QN(n34) );
  DFFTRX4M data_in_r_reg_28_ ( .D(N2), .RN(data_in[28]), .CK(clk), .QN(n36) );
  DFFTRX4M data_in_r_reg_27_ ( .D(N2), .RN(data_in[27]), .CK(clk), .QN(n30) );
  DFFTRX4M data_in_r_reg_26_ ( .D(N2), .RN(data_in[26]), .CK(clk), .QN(n22) );
  DFFTRX4M data_in_r_reg_25_ ( .D(N2), .RN(data_in[25]), .CK(clk), .QN(n26) );
  DFFTRX4M data_in_r_reg_24_ ( .D(N2), .RN(data_in[24]), .CK(clk), .QN(n32) );
  DFFTRX4M data_in_r_reg_23_ ( .D(N2), .RN(data_in[23]), .CK(clk), .Q(
        data_in_r[23]) );
  DFFTRX4M data_in_r_reg_22_ ( .D(N2), .RN(data_in[22]), .CK(clk), .Q(
        data_in_r[22]) );
  DFFTRX4M data_in_r_reg_21_ ( .D(N2), .RN(data_in[21]), .CK(clk), .QN(n2) );
  DFFTRX4M data_in_r_reg_20_ ( .D(N2), .RN(data_in[20]), .CK(clk), .QN(n8) );
  DFFTRX4M data_in_r_reg_19_ ( .D(N2), .RN(data_in[19]), .CK(clk), .Q(
        data_in_r[19]) );
  DFFTRX4M data_in_r_reg_18_ ( .D(N2), .RN(data_in[18]), .CK(clk), .Q(
        data_in_r[18]) );
  DFFTRX4M data_in_r_reg_17_ ( .D(N2), .RN(data_in[17]), .CK(clk), .Q(
        data_in_r[17]) );
  DFFTRX4M data_in_r_reg_16_ ( .D(N2), .RN(data_in[16]), .CK(clk), .Q(
        data_in_r[16]) );
  DFFTRX4M data_in_r_reg_15_ ( .D(N2), .RN(data_in[15]), .CK(clk), .QN(n10) );
  DFFTRX4M data_in_r_reg_14_ ( .D(N2), .RN(data_in[14]), .CK(clk), .QN(n12) );
  DFFTRX4M data_in_r_reg_13_ ( .D(N2), .RN(data_in[13]), .CK(clk), .QN(n14) );
  DFFTRX4M data_in_r_reg_12_ ( .D(N2), .RN(data_in[12]), .CK(clk), .QN(n16) );
  DFFTRX4M data_in_r_reg_11_ ( .D(N2), .RN(data_in[11]), .CK(clk), .Q(
        data_in_r[11]) );
  DFFTRX4M data_in_r_reg_10_ ( .D(N2), .RN(data_in[10]), .CK(clk), .Q(
        data_in_r[10]) );
  DFFTRX4M data_in_r_reg_9_ ( .D(N2), .RN(data_in[9]), .CK(clk), .Q(
        data_in_r[9]) );
  DFFTRX4M data_in_r_reg_8_ ( .D(N2), .RN(data_in[8]), .CK(clk), .Q(
        data_in_r[8]) );
  DFFTRX4M data_in_r_reg_7_ ( .D(N2), .RN(data_in[7]), .CK(clk), .Q(
        data_in_r[7]) );
  DFFTRX4M data_in_r_reg_5_ ( .D(N2), .RN(data_in[5]), .CK(clk), .QN(n4) );
  DFFTRX4M data_in_r_reg_4_ ( .D(N2), .RN(data_in[4]), .CK(clk), .QN(n6) );
  DFFTRX4M data_in_r_reg_2_ ( .D(N2), .RN(data_in[2]), .CK(clk), .Q(
        data_in_r[2]) );
  DFFTRX4M data_in_r_reg_0_ ( .D(N2), .RN(data_in[0]), .CK(clk), .Q(
        data_in_r[0]) );
  DFFTRX4M pos_out_reg_5_ ( .D(N2), .RN(pos_out_r[5]), .CK(clk), .Q(pos_out[5]) );
  VectorDetector_m2 VectorDetector_m2_u0 ( .data_in({n25, n29, n35, n37, n31, 
        n23, n27, n33, data_in_r[23:22], n3, n9, data_in_r[19:16], n11, n13, 
        n15, n17, data_in_r[11:6], n5, n7, data_in_r[3:0]}), .pos_out(
        pos_out_r) );
  DFFTRX1M pos_out_reg_2_ ( .D(N2), .RN(pos_out_r[2]), .CK(clk), .QN(n18) );
  DFFTRX2M pos_out_reg_0_ ( .D(N2), .RN(pos_out_r[0]), .CK(clk), .Q(pos_out[0]) );
  DFFTRX1M pos_out_reg_4_ ( .D(N2), .RN(pos_out_r[4]), .CK(clk), .QN(n20) );
  DFFTRX4M data_in_r_reg_31_ ( .D(N2), .RN(data_in[31]), .CK(clk), .QN(n24) );
  DFFTRX2M pos_out_reg_3_ ( .D(N2), .RN(pos_out_r[3]), .CK(clk), .Q(pos_out[3]) );
  DFFTRX2M pos_out_reg_1_ ( .D(N2), .RN(pos_out_r[1]), .CK(clk), .Q(pos_out[1]) );
  DFFTRX1M data_in_r_reg_3_ ( .D(N2), .RN(data_in[3]), .CK(clk), .Q(
        data_in_r[3]) );
  DFFTRX2M data_in_r_reg_6_ ( .D(N2), .RN(data_in[6]), .CK(clk), .Q(
        data_in_r[6]) );
  DFFTRX1M data_in_r_reg_1_ ( .D(N2), .RN(data_in[1]), .CK(clk), .Q(
        data_in_r[1]) );
  INVX6M U3 ( .A(n34), .Y(n35) );
  INVX2M U4 ( .A(n26), .Y(n27) );
  INVX5M U5 ( .A(n36), .Y(n37) );
  INVX6M U6 ( .A(n14), .Y(n15) );
  INVX5M U7 ( .A(n24), .Y(n25) );
  INVX2M U8 ( .A(n6), .Y(n7) );
  INVX6M U9 ( .A(n18), .Y(pos_out[2]) );
  INVX6M U10 ( .A(n20), .Y(pos_out[4]) );
  INVX4M U11 ( .A(n4), .Y(n5) );
  INVX4M U12 ( .A(n8), .Y(n9) );
  INVX4M U13 ( .A(n2), .Y(n3) );
  INVX8M U14 ( .A(n10), .Y(n11) );
  INVX6M U15 ( .A(n30), .Y(n31) );
  INVX5M U16 ( .A(n32), .Y(n33) );
  INVX8M U17 ( .A(n12), .Y(n13) );
  INVX8M U18 ( .A(n16), .Y(n17) );
  INVX4M U19 ( .A(n22), .Y(n23) );
  INVX4M U20 ( .A(n28), .Y(n29) );
endmodule

