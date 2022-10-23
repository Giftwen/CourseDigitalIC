/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Sun Oct 23 23:13:47 2022
/////////////////////////////////////////////////////////////


module watch ( clk, rst_n, clear, start_stop, hr_h, hr_l, min_h, min_l, sec_h, 
        sec_l );
  output [3:0] hr_h;
  output [3:0] hr_l;
  output [3:0] min_h;
  output [3:0] min_l;
  output [3:0] sec_h;
  output [3:0] sec_l;
  input clk, rst_n, clear, start_stop;
  wire   sec_cout, min_cout, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86;

  OAI2B2X1M U6 ( .A1N(hr_h[2]), .A0(n1), .B0(n2), .B1(n3), .Y(n64) );
  OAI21X1M U7 ( .A0(n4), .A1(n5), .B0(n6), .Y(n1) );
  AOI22X1M U8 ( .A0(hr_h[0]), .A1(n7), .B0(n2), .B1(n8), .Y(n65) );
  INVXLM U9 ( .A(hr_h[0]), .Y(n8) );
  OAI2B2X1M U10 ( .A1N(hr_h[1]), .A0(n7), .B0(n2), .B1(n9), .Y(n66) );
  OAI21X1M U11 ( .A0(hr_h[0]), .A1(hr_h[1]), .B0(n3), .Y(n9) );
  NAND2XLM U12 ( .A(hr_h[0]), .B(hr_h[1]), .Y(n3) );
  NAND3BX1M U13 ( .AN(n5), .B(n6), .C(n10), .Y(n2) );
  NOR4BX1M U14 ( .AN(n4), .B(hr_l[1]), .C(n11), .D(hr_l[2]), .Y(n10) );
  OAI2BB1X1M U15 ( .A0N(n12), .A1N(n13), .B0(n6), .Y(n7) );
  OA21XLM U18 ( .A0(hr_h[0]), .A1(hr_h[1]), .B0(hr_h[2]), .Y(n14) );
  OAI32X1M U19 ( .A0(n15), .A1(n16), .A2(n12), .B0(n17), .B1(n18), .Y(n67) );
  OAI32X1M U20 ( .A0(hr_l[2]), .A1(n12), .A2(n16), .B0(n17), .B1(n15), .Y(n68)
         );
  CLKINVX1M U21 ( .A(hr_l[2]), .Y(n15) );
  AOI2B1X1M U22 ( .A1N(n12), .A0(n16), .B0(n19), .Y(n17) );
  NAND2BX1M U23 ( .AN(n11), .B(hr_l[1]), .Y(n16) );
  OAI21X1M U25 ( .A0(n19), .A1(n21), .B0(hr_l[1]), .Y(n20) );
  AO22X1M U27 ( .A0(min_cout), .A1(n21), .B0(hr_l[0]), .B1(n19), .Y(n70) );
  NOR2X1M U28 ( .A(clear), .B(min_cout), .Y(n19) );
  NOR2X1M U29 ( .A(hr_l[0]), .B(n12), .Y(n21) );
  CLKNAND2X2M U30 ( .A(n6), .B(n5), .Y(n12) );
  OAI31X1M U31 ( .A0(hr_l[2]), .A1(hr_l[1]), .A2(hr_l[0]), .B0(hr_l[3]), .Y(n5) );
  AO2B2X1M U32 ( .B0(n22), .B1(min_cout), .A0(n23), .A1N(n24), .Y(n71) );
  NOR3X1M U33 ( .A(n25), .B(sec_cout), .C(clear), .Y(n22) );
  OAI2BB2X1M U34 ( .B0(n27), .B1(n28), .A0N(min_h[2]), .A1N(n26), .Y(n72) );
  CLKNAND2X2M U35 ( .A(n29), .B(n27), .Y(n26) );
  AOI22X1M U36 ( .A0(min_h[0]), .A1(n29), .B0(n27), .B1(n30), .Y(n73) );
  INVXLM U37 ( .A(min_h[0]), .Y(n30) );
  OAI2B2X1M U38 ( .A1N(min_h[1]), .A0(n29), .B0(n27), .B1(n31), .Y(n74) );
  OAI21X1M U39 ( .A0(min_h[0]), .A1(min_h[1]), .B0(n28), .Y(n31) );
  NAND2XLM U40 ( .A(min_h[0]), .B(min_h[1]), .Y(n28) );
  NAND3X1M U41 ( .A(sec_cout), .B(n23), .C(n24), .Y(n27) );
  OA21X1M U43 ( .A0(min_h[0]), .A1(min_h[1]), .B0(min_h[2]), .Y(n32) );
  NOR2X1M U44 ( .A(clear), .B(n25), .Y(n23) );
  OAI21X1M U45 ( .A0(n33), .A1(n25), .B0(n6), .Y(n29) );
  AOI2BB2X1M U46 ( .B0(n34), .B1(n35), .A0N(n35), .A1N(n36), .Y(n75) );
  AOI31X1M U47 ( .A0(min_l[1]), .A1(n37), .A2(n38), .B0(n39), .Y(n76) );
  AOI31X1M U48 ( .A0(min_l[0]), .A1(n40), .A2(sec_cout), .B0(min_l[1]), .Y(n39) );
  OAI2BB2X1M U49 ( .B0(n35), .B1(n34), .A0N(min_l[3]), .A1N(n36), .Y(n77) );
  OAI22X1M U50 ( .A0(sec_cout), .A1(clear), .B0(n41), .B1(n42), .Y(n36) );
  CLKNAND2X2M U51 ( .A(n40), .B(n41), .Y(n34) );
  NOR3BX1M U52 ( .AN(min_l[1]), .B(n33), .C(n43), .Y(n41) );
  OAI22X1M U53 ( .A0(n33), .A1(n37), .B0(n43), .B1(n38), .Y(n78) );
  CLKNAND2X2M U54 ( .A(n33), .B(n6), .Y(n38) );
  CLKNAND2X2M U55 ( .A(n40), .B(n43), .Y(n37) );
  CLKINVX1M U56 ( .A(min_l[0]), .Y(n43) );
  CLKINVX1M U57 ( .A(n42), .Y(n40) );
  CLKNAND2X2M U58 ( .A(n25), .B(n6), .Y(n42) );
  OAI31X1M U59 ( .A0(min_l[0]), .A1(min_l[2]), .A2(min_l[1]), .B0(min_l[3]), 
        .Y(n25) );
  OAI2BB2X1M U60 ( .B0(n44), .B1(n45), .A0N(n46), .A1N(sec_l[3]), .Y(n79) );
  AOI2BB2X1M U61 ( .B0(n45), .B1(n44), .A0N(n44), .A1N(n46), .Y(n80) );
  AOI32X1M U62 ( .A0(n47), .A1(sec_l[0]), .A2(sec_l[1]), .B0(n48), .B1(n47), 
        .Y(n46) );
  CLKNAND2X2M U63 ( .A(sec_l[1]), .B(n49), .Y(n45) );
  AOI2BB2X1M U64 ( .B0(sec_l[1]), .B1(n50), .A0N(sec_l[1]), .A1N(n49), .Y(n81)
         );
  NOR2X1M U66 ( .A(n51), .B(n52), .Y(n50) );
  OAI22X1M U67 ( .A0(n53), .A1(n54), .B0(n33), .B1(n47), .Y(n82) );
  CLKINVX1M U68 ( .A(sec_cout), .Y(n33) );
  OAI2B2X1M U69 ( .A1N(sec_h[2]), .A0(n56), .B0(n57), .B1(n58), .Y(n83) );
  AOI22X1M U70 ( .A0(sec_h[1]), .A1(n56), .B0(n58), .B1(n57), .Y(n84) );
  CLKINVX1M U71 ( .A(sec_h[1]), .Y(n57) );
  NAND3BX1M U72 ( .AN(n54), .B(n53), .C(sec_h[0]), .Y(n58) );
  OAI31X1M U73 ( .A0(n59), .A1(n60), .A2(n61), .B0(n6), .Y(n56) );
  OAI32X1M U75 ( .A0(sec_h[0]), .A1(n62), .A2(n54), .B0(n55), .B1(n63), .Y(n85) );
  INVXLM U76 ( .A(sec_h[0]), .Y(n63) );
  NOR2BX1M U77 ( .AN(n48), .B(n52), .Y(n55) );
  OR3X1M U78 ( .A(n60), .B(n61), .C(clear), .Y(n54) );
  INVXLM U79 ( .A(n53), .Y(n62) );
  AO21XLM U81 ( .A0(sec_l[0]), .A1(n52), .B0(n51), .Y(n86) );
  NOR2X1M U82 ( .A(sec_l[0]), .B(n48), .Y(n51) );
  NAND3X1M U83 ( .A(start_stop), .B(n6), .C(n60), .Y(n48) );
  OAI31X1M U84 ( .A0(sec_l[2]), .A1(sec_l[1]), .A2(sec_l[0]), .B0(sec_l[3]), 
        .Y(n60) );
  CLKINVX1M U85 ( .A(n47), .Y(n52) );
  CLKINVX1M U87 ( .A(start_stop), .Y(n61) );
  CLKINVX1M U88 ( .A(clear), .Y(n6) );
  DFFRX1M min_l_reg_2_ ( .D(n75), .CK(clk), .RN(rst_n), .Q(min_l[2]), .QN(n35)
         );
  DFFRX1M hr_l_reg_3_ ( .D(n67), .CK(clk), .RN(rst_n), .Q(hr_l[3]), .QN(n18)
         );
  DFFRX1M sec_l_reg_2_ ( .D(n80), .CK(clk), .RN(rst_n), .Q(sec_l[2]), .QN(n44)
         );
  DFFRQX1M min_cout_reg ( .D(n71), .CK(clk), .RN(rst_n), .Q(min_cout) );
  DFFRQX1M sec_cout_reg ( .D(n82), .CK(clk), .RN(rst_n), .Q(sec_cout) );
  DFFRQX1M min_h_reg_1_ ( .D(n74), .CK(clk), .RN(rst_n), .Q(min_h[1]) );
  DFFRQX1M min_h_reg_0_ ( .D(n73), .CK(clk), .RN(rst_n), .Q(min_h[0]) );
  DFFRQX1M min_h_reg_2_ ( .D(n72), .CK(clk), .RN(rst_n), .Q(min_h[2]) );
  DFFRQX1M hr_h_reg_2_ ( .D(n64), .CK(clk), .RN(rst_n), .Q(hr_h[2]) );
  DFFRQX1M hr_l_reg_0_ ( .D(n70), .CK(clk), .RN(rst_n), .Q(hr_l[0]) );
  DFFRQX1M min_l_reg_0_ ( .D(n78), .CK(clk), .RN(rst_n), .Q(min_l[0]) );
  DFFRQX1M min_l_reg_3_ ( .D(n77), .CK(clk), .RN(rst_n), .Q(min_l[3]) );
  DFFRQX1M hr_l_reg_1_ ( .D(n69), .CK(clk), .RN(rst_n), .Q(hr_l[1]) );
  DFFRQX1M sec_h_reg_1_ ( .D(n84), .CK(clk), .RN(rst_n), .Q(sec_h[1]) );
  DFFRQX1M sec_l_reg_0_ ( .D(n86), .CK(clk), .RN(rst_n), .Q(sec_l[0]) );
  DFFRQX1M sec_h_reg_2_ ( .D(n83), .CK(clk), .RN(rst_n), .Q(sec_h[2]) );
  DFFRQX1M min_l_reg_1_ ( .D(n76), .CK(clk), .RN(rst_n), .Q(min_l[1]) );
  DFFRQX1M sec_h_reg_0_ ( .D(n85), .CK(clk), .RN(rst_n), .Q(sec_h[0]) );
  DFFRQX1M hr_h_reg_1_ ( .D(n66), .CK(clk), .RN(rst_n), .Q(hr_h[1]) );
  DFFRQX1M sec_l_reg_1_ ( .D(n81), .CK(clk), .RN(rst_n), .Q(sec_l[1]) );
  DFFRQX1M hr_h_reg_0_ ( .D(n65), .CK(clk), .RN(rst_n), .Q(hr_h[0]) );
  DFFRQX1M hr_l_reg_2_ ( .D(n68), .CK(clk), .RN(rst_n), .Q(hr_l[2]) );
  DFFRQX1M sec_l_reg_3_ ( .D(n79), .CK(clk), .RN(rst_n), .Q(sec_l[3]) );
  OAI21X1M U3 ( .A0(sec_h[1]), .A1(sec_h[0]), .B0(sec_h[2]), .Y(n53) );
  OAI31XLM U4 ( .A0(hr_l[2]), .A1(hr_l[1]), .A2(n11), .B0(n4), .Y(n13) );
  NOR2BXLM U5 ( .AN(sec_l[0]), .B(n48), .Y(n49) );
  NAND2XLM U16 ( .A(min_cout), .B(hr_l[0]), .Y(n11) );
  NAND2XLM U17 ( .A(n6), .B(n61), .Y(n47) );
  OAI31XLM U24 ( .A0(hr_l[1]), .A1(n11), .A2(n12), .B0(n20), .Y(n69) );
  NAND2X2M U26 ( .A(n14), .B(min_cout), .Y(n4) );
  NAND2X2M U42 ( .A(n32), .B(sec_cout), .Y(n24) );
  OAI22X1M U65 ( .A0(sec_h[1]), .A1(sec_h[0]), .B0(sec_h[2]), .B1(sec_h[0]), 
        .Y(n59) );
endmodule


module clk_gen_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;
  wire   n1, n2, n3, n4, n5;

  ADDHX1M U2 ( .A(A[5]), .B(n2), .CO(n1), .S(SUM[5]) );
  ADDHX1M U3 ( .A(A[4]), .B(n3), .CO(n2), .S(SUM[4]) );
  ADDHX1M U4 ( .A(A[3]), .B(n4), .CO(n3), .S(SUM[3]) );
  ADDHX1M U5 ( .A(A[2]), .B(n5), .CO(n4), .S(SUM[2]) );
  ADDHX1M U6 ( .A(A[1]), .B(A[0]), .CO(n5), .S(SUM[1]) );
  XOR2XLM U10 ( .A(n1), .B(A[6]), .Y(SUM[6]) );
  INVXLM U11 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clk_gen ( clk_in, rst_n, clk_out );
  input clk_in, rst_n;
  output clk_out;
  wire   N3, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18,
         n1, n2;
  wire   [6:0] count;

  NOR2BXLM U3 ( .AN(N11), .B(N3), .Y(N18) );
  NOR2BXLM U4 ( .AN(N10), .B(N3), .Y(N17) );
  NOR2BXLM U5 ( .AN(N9), .B(N3), .Y(N16) );
  NOR2BXLM U6 ( .AN(N8), .B(N3), .Y(N15) );
  NOR2BXLM U7 ( .AN(N7), .B(N3), .Y(N14) );
  NOR2BXLM U8 ( .AN(N6), .B(N3), .Y(N13) );
  NOR2BXLM U9 ( .AN(N5), .B(N3), .Y(N12) );
  clk_gen_DW01_inc_0 add_x_2 ( .A(count), .SUM({N11, N10, N9, N8, N7, N6, N5})
         );
  DFFRQX1M clk_out_reg ( .D(N3), .CK(clk_in), .RN(rst_n), .Q(clk_out) );
  DFFRQX1M count_reg_3_ ( .D(N15), .CK(clk_in), .RN(rst_n), .Q(count[3]) );
  DFFRQX1M count_reg_2_ ( .D(N14), .CK(clk_in), .RN(rst_n), .Q(count[2]) );
  DFFRQX1M count_reg_1_ ( .D(N13), .CK(clk_in), .RN(rst_n), .Q(count[1]) );
  DFFRQX1M count_reg_0_ ( .D(N12), .CK(clk_in), .RN(rst_n), .Q(count[0]) );
  DFFRQX1M count_reg_4_ ( .D(N16), .CK(clk_in), .RN(rst_n), .Q(count[4]) );
  DFFRQX1M count_reg_5_ ( .D(N17), .CK(clk_in), .RN(rst_n), .Q(count[5]) );
  DFFRQX1M count_reg_6_ ( .D(N18), .CK(clk_in), .RN(rst_n), .Q(count[6]) );
  NAND2XLM U10 ( .A(n2), .B(n1), .Y(N3) );
  NOR4X1M U11 ( .A(count[4]), .B(count[6]), .C(count[5]), .D(count[3]), .Y(n2)
         );
  AOI21X1M U12 ( .A0(count[1]), .A1(count[0]), .B0(count[2]), .Y(n1) );
endmodule


module stop_watch ( clk, rst_n, clear, start_stop, hr_h, hr_l, min_h, min_l, 
        sec_h, sec_l );
  output [3:0] hr_h;
  output [3:0] hr_l;
  output [3:0] min_h;
  output [3:0] min_l;
  output [3:0] sec_h;
  output [3:0] sec_l;
  input clk, rst_n, clear, start_stop;
  wire   SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3;
  assign hr_h[3] = 1'b0;
  assign min_h[3] = 1'b0;
  assign sec_h[3] = 1'b0;

  watch watch_u0 ( .clk(clk), .rst_n(rst_n), .clear(clear), .start_stop(
        start_stop), .hr_h({SYNOPSYS_UNCONNECTED_1, hr_h[2:0]}), .hr_l(hr_l), 
        .min_h({SYNOPSYS_UNCONNECTED_2, min_h[2:0]}), .min_l(min_l), .sec_h({
        SYNOPSYS_UNCONNECTED_3, sec_h[2:0]}), .sec_l(sec_l) );
  clk_gen clk_gen ( .clk_in(clk), .rst_n(rst_n) );
endmodule

