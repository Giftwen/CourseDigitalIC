/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Tue Oct  4 14:04:05 2022
/////////////////////////////////////////////////////////////


module BinToBCD_m1_DW01_add_26 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n58, n60, n61, n62, n63, n64, n65, n66, n67, n68;
  assign SUM[0] = A[0];

  OAI21XLM U41 ( .A0(n62), .A1(n65), .B0(n63), .Y(CO) );
  NAND2XLM U42 ( .A(n64), .B(A[6]), .Y(n63) );
  AOI21X1M U43 ( .A0(A[2]), .A1(A[1]), .B0(n68), .Y(n62) );
  NAND2X1M U44 ( .A(n66), .B(n67), .Y(n64) );
  INVXLM U45 ( .A(n61), .Y(n68) );
  XOR2XLM U46 ( .A(A[2]), .B(A[1]), .Y(SUM[2]) );
  INVXLM U47 ( .A(A[6]), .Y(n65) );
  INVXLM U48 ( .A(A[5]), .Y(n67) );
  XNOR2X1M U49 ( .A(A[3]), .B(n58), .Y(SUM[3]) );
  INVXLM U50 ( .A(A[1]), .Y(SUM[1]) );
  INVXLM U51 ( .A(A[3]), .Y(n61) );
  INVXLM U52 ( .A(A[2]), .Y(n60) );
  CLKINVX2M U53 ( .A(A[4]), .Y(n66) );
  NOR2X1M U54 ( .A(SUM[1]), .B(n60), .Y(n58) );
endmodule


module BinToBCD_m1_DW01_add_25 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n58, n59, n60, n61, n62;
  assign SUM[0] = A[0];
  assign SUM[1] = A[1];

  OAI21X1M U41 ( .A0(n60), .A1(n61), .B0(n58), .Y(CO) );
  XNOR2XLM U42 ( .A(n59), .B(A[2]), .Y(SUM[3]) );
  INVXLM U43 ( .A(A[6]), .Y(n58) );
  NAND2X2M U44 ( .A(A[4]), .B(n62), .Y(n60) );
  NOR2X2M U45 ( .A(n59), .B(SUM[2]), .Y(n62) );
  CLKINVX2M U46 ( .A(A[3]), .Y(n59) );
  INVXLM U47 ( .A(A[5]), .Y(n61) );
  INVXLM U48 ( .A(A[2]), .Y(SUM[2]) );
endmodule


module BinToBCD_m1_DW01_add_24 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n58, n59, n60, n62, n63, n64, n65, n66, n67, n68;
  assign SUM[0] = A[0];

  XOR2XLM U41 ( .A(SUM[1]), .B(A[2]), .Y(SUM[2]) );
  NAND2XLM U42 ( .A(n64), .B(n65), .Y(CO) );
  CLKINVX2M U43 ( .A(A[6]), .Y(n64) );
  NAND2X2M U44 ( .A(n66), .B(n67), .Y(n65) );
  NAND2X2M U45 ( .A(SUM[1]), .B(n58), .Y(n66) );
  NOR2X2M U46 ( .A(n68), .B(n59), .Y(n67) );
  INVXLM U47 ( .A(A[4]), .Y(n59) );
  INVXLM U48 ( .A(A[5]), .Y(n68) );
  XNOR2X1M U49 ( .A(A[3]), .B(n60), .Y(SUM[3]) );
  AND2X1M U50 ( .A(n62), .B(n63), .Y(n58) );
  INVX1M U51 ( .A(A[3]), .Y(n63) );
  INVXLM U52 ( .A(A[2]), .Y(n62) );
  INVXLM U53 ( .A(A[1]), .Y(SUM[1]) );
  NAND2X2M U54 ( .A(SUM[1]), .B(n62), .Y(n60) );
endmodule


module BinToBCD_m1_DW01_add_22 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n57, n58, n60, n61, n62, n63;
  assign SUM[0] = A[0];

  OAI21XLM U41 ( .A0(SUM[1]), .A1(n62), .B0(n57), .Y(CO) );
  NAND2XLM U42 ( .A(A[4]), .B(n63), .Y(n62) );
  NOR2X1M U43 ( .A(n61), .B(n60), .Y(n63) );
  CLKINVX2M U44 ( .A(A[3]), .Y(n61) );
  INVXLM U45 ( .A(A[1]), .Y(SUM[1]) );
  NOR2XLM U46 ( .A(A[6]), .B(A[5]), .Y(n57) );
  INVXLM U47 ( .A(A[2]), .Y(n60) );
  NOR2X1M U48 ( .A(SUM[1]), .B(n60), .Y(n58) );
  XNOR2X1M U49 ( .A(n61), .B(n58), .Y(SUM[3]) );
  XNOR2X1M U50 ( .A(SUM[1]), .B(A[2]), .Y(SUM[2]) );
endmodule


module BinToBCD_m1_DW01_add_21 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n47, n48, n49, n50, n51, n52;
  assign SUM[0] = A[0];
  assign SUM[1] = A[1];

  INVX2M U29 ( .A(A[4]), .Y(n51) );
  XOR2XLM U30 ( .A(A[3]), .B(SUM[2]), .Y(SUM[3]) );
  NAND3X2M U31 ( .A(n48), .B(n49), .C(n47), .Y(CO) );
  NAND2X1M U32 ( .A(n50), .B(A[3]), .Y(n49) );
  NAND2X2M U33 ( .A(n52), .B(A[2]), .Y(n48) );
  CLKINVX2M U34 ( .A(n51), .Y(n52) );
  CLKINVX2M U35 ( .A(n51), .Y(n50) );
  NOR2X2M U36 ( .A(A[6]), .B(A[5]), .Y(n47) );
  INVXLM U37 ( .A(A[2]), .Y(SUM[2]) );
endmodule


module BinToBCD_m1_DW01_add_20 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n50, n51, n52, n54, n55, n56, n57;
  assign SUM[0] = A[0];

  NAND4XLM U33 ( .A(n50), .B(n54), .C(n55), .D(n56), .Y(CO) );
  INVXLM U34 ( .A(A[5]), .Y(n56) );
  NOR2X1M U35 ( .A(A[4]), .B(A[6]), .Y(n55) );
  OR2X1M U36 ( .A(n52), .B(n57), .Y(n50) );
  NAND2XLM U37 ( .A(A[3]), .B(A[1]), .Y(n54) );
  INVX1M U38 ( .A(A[3]), .Y(n57) );
  INVXLM U39 ( .A(A[1]), .Y(SUM[1]) );
  INVXLM U40 ( .A(A[2]), .Y(n52) );
  NOR2X1M U41 ( .A(A[1]), .B(A[2]), .Y(n51) );
  XOR2X1M U42 ( .A(n57), .B(n51), .Y(SUM[3]) );
  XNOR2X1M U43 ( .A(A[2]), .B(A[1]), .Y(SUM[2]) );
endmodule


module BinToBCD_m1_DW01_add_15 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n56, n57, n58, n59, n60, n61, n62, n63;
  assign SUM[0] = A[0];

  INVX2M U39 ( .A(A[2]), .Y(n58) );
  INVX2M U40 ( .A(A[1]), .Y(n57) );
  XOR2XLM U41 ( .A(A[3]), .B(n56), .Y(SUM[3]) );
  XOR2XLM U42 ( .A(n57), .B(n58), .Y(SUM[2]) );
  INVXLM U43 ( .A(n60), .Y(SUM[1]) );
  NOR2XLM U44 ( .A(n57), .B(n58), .Y(n56) );
  INVX2M U45 ( .A(n57), .Y(n60) );
  AND2X2M U46 ( .A(n61), .B(n62), .Y(CO) );
  NOR2X1M U47 ( .A(n63), .B(n58), .Y(n61) );
  INVX2M U48 ( .A(A[4]), .Y(n63) );
  INVXLM U49 ( .A(A[3]), .Y(n59) );
  NOR2X1M U50 ( .A(n59), .B(n57), .Y(n62) );
endmodule


module BinToBCD_m1_DW01_add_14 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n43, n44, n46, n47;
  assign SUM[0] = A[0];
  assign SUM[1] = A[1];

  NAND2X2M U26 ( .A(n43), .B(n46), .Y(CO) );
  XNOR2XLM U27 ( .A(A[3]), .B(A[2]), .Y(SUM[3]) );
  NAND2X2M U28 ( .A(A[4]), .B(A[2]), .Y(n46) );
  OR2X2M U29 ( .A(n47), .B(n44), .Y(n43) );
  INVX1M U30 ( .A(A[4]), .Y(n47) );
  CLKINVX1M U31 ( .A(A[3]), .Y(n44) );
  INVXLM U32 ( .A(A[2]), .Y(SUM[2]) );
endmodule


module BinToBCD_m1_DW01_add_50 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n71, n72, n73;

  OAI22XLM U54 ( .A0(n71), .A1(n72), .B0(n72), .B1(n73), .Y(CO) );
  AOI21X1M U55 ( .A0(A[2]), .A1(A[1]), .B0(A[3]), .Y(n71) );
  INVXLM U56 ( .A(A[6]), .Y(n72) );
  NOR2X1M U57 ( .A(A[4]), .B(A[5]), .Y(n73) );
endmodule


module BinToBCD_m1_DW01_add_49 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n71, n72, n73;

  OAI21X1M U54 ( .A0(n72), .A1(n73), .B0(n71), .Y(CO) );
  INVXLM U55 ( .A(A[5]), .Y(n73) );
  NAND3X2M U56 ( .A(A[3]), .B(A[2]), .C(A[4]), .Y(n72) );
  INVXLM U57 ( .A(A[6]), .Y(n71) );
endmodule


module BinToBCD_m1_DW01_add_48 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n71, n72, n73, n74, n75, n76;

  OAI21XLM U54 ( .A0(n72), .A1(n73), .B0(n74), .Y(CO) );
  NAND2XLM U55 ( .A(n76), .B(n71), .Y(n75) );
  INVX1M U56 ( .A(A[3]), .Y(n71) );
  NOR2X2M U57 ( .A(A[1]), .B(n75), .Y(n72) );
  INVXLM U58 ( .A(A[2]), .Y(n76) );
  NAND2X2M U59 ( .A(A[4]), .B(A[5]), .Y(n73) );
  CLKINVX2M U60 ( .A(A[6]), .Y(n74) );
endmodule


module BinToBCD_m1_DW01_add_46 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n70, n71, n72;

  AND2X1M U54 ( .A(A[2]), .B(A[3]), .Y(n70) );
  NOR2XLM U55 ( .A(A[6]), .B(A[5]), .Y(n71) );
  CLKNAND2X2M U56 ( .A(n71), .B(n72), .Y(CO) );
  NAND3X2M U57 ( .A(n70), .B(A[1]), .C(A[4]), .Y(n72) );
endmodule


module BinToBCD_m1_DW01_add_45 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n55, n56, n57;

  OAI2B11XLM U38 ( .A1N(A[2]), .A0(n55), .B0(n56), .C0(n57), .Y(CO) );
  NAND2XLM U39 ( .A(A[4]), .B(A[3]), .Y(n56) );
  INVXLM U40 ( .A(A[4]), .Y(n55) );
  NOR2XLM U41 ( .A(A[6]), .B(A[5]), .Y(n57) );
endmodule


module BinToBCD_m1_DW01_add_44 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n63, n64, n65, n66, n67;

  INVXLM U46 ( .A(A[3]), .Y(n64) );
  OR2X1M U47 ( .A(n64), .B(n67), .Y(n63) );
  INVXLM U48 ( .A(A[1]), .Y(n65) );
  OAI211X2M U49 ( .A0(n64), .A1(n65), .B0(n63), .C0(n66), .Y(CO) );
  NOR3X2M U50 ( .A(A[4]), .B(A[6]), .C(A[5]), .Y(n66) );
  INVXLM U51 ( .A(A[2]), .Y(n67) );
endmodule


module BinToBCD_m1_DW01_add_39 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n56, n57, n58, n60;
  assign SUM[0] = A[0];

  AND3X2M U39 ( .A(n60), .B(A[1]), .C(A[4]), .Y(CO) );
  INVXLM U40 ( .A(A[3]), .Y(n58) );
  XOR2XLM U41 ( .A(A[3]), .B(n56), .Y(SUM[3]) );
  INVXLM U42 ( .A(A[1]), .Y(SUM[1]) );
  NOR2X2M U43 ( .A(n58), .B(n57), .Y(n60) );
  XNOR2XLM U44 ( .A(n57), .B(A[1]), .Y(SUM[2]) );
  NOR2XLM U45 ( .A(SUM[1]), .B(n57), .Y(n56) );
  INVXLM U46 ( .A(A[2]), .Y(n57) );
endmodule


module BinToBCD_m1_DW01_add_37 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n47, n49, n50, n51, n52, n53;
  assign SUM[0] = A[0];

  XNOR2XLM U30 ( .A(A[2]), .B(A[1]), .Y(SUM[2]) );
  XNOR2XLM U31 ( .A(n50), .B(n47), .Y(SUM[3]) );
  NAND2X1M U32 ( .A(SUM[1]), .B(n49), .Y(n47) );
  NAND2X2M U33 ( .A(n51), .B(n52), .Y(CO) );
  AOI21X1M U34 ( .A0(A[3]), .A1(A[1]), .B0(n53), .Y(n51) );
  INVX2M U35 ( .A(A[4]), .Y(n52) );
  NOR2X1M U36 ( .A(n50), .B(n49), .Y(n53) );
  INVX2M U37 ( .A(A[3]), .Y(n50) );
  INVX1M U38 ( .A(A[2]), .Y(n49) );
  INVX1M U39 ( .A(A[1]), .Y(SUM[1]) );
endmodule


module BinToBCD_m1_DW01_add_51 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n3, n5;
  assign SUM[0] = A[0];
  assign SUM[1] = A[1];

  NOR2X2M U15 ( .A(n3), .B(n5), .Y(CO) );
  INVX2M U16 ( .A(A[4]), .Y(n3) );
  NOR2X2M U17 ( .A(A[2]), .B(A[3]), .Y(n5) );
  INVXLM U18 ( .A(A[2]), .Y(SUM[2]) );
  XNOR2XLM U19 ( .A(A[2]), .B(A[3]), .Y(SUM[3]) );
endmodule


module BinToBCD_m1_DW01_add_52 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n4, n5, n10;

  OAI21X6M U3 ( .A0(n10), .A1(n4), .B0(n5), .Y(CO) );
  NOR2X2M U23 ( .A(A[4]), .B(A[3]), .Y(n10) );
  INVX2M U24 ( .A(A[5]), .Y(n4) );
  INVX1M U25 ( .A(A[6]), .Y(n5) );
endmodule


module BinToBCD_m1_DW01_add_53 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n5, n6, n7, n8;
  assign SUM[0] = A[0];

  XNOR2XLM U6 ( .A(n7), .B(n6), .Y(SUM[3]) );
  OAI21XLM U4 ( .A0(n8), .A1(n6), .B0(n5), .Y(CO) );
  NOR2X2M U20 ( .A(A[2]), .B(A[1]), .Y(n8) );
  INVXLM U21 ( .A(A[1]), .Y(SUM[1]) );
  INVXLM U22 ( .A(n8), .Y(n7) );
  INVX2M U23 ( .A(A[3]), .Y(n6) );
  INVXLM U24 ( .A(A[4]), .Y(n5) );
  XNOR2XLM U25 ( .A(A[2]), .B(A[1]), .Y(SUM[2]) );
endmodule


module BinToBCD_m1_DW01_add_55 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4;
  assign SUM[0] = A[0];
  assign SUM[1] = A[1];
  assign SUM[2] = A[2];

  OAI21X4M U2 ( .A0(n4), .A1(n2), .B0(n3), .Y(CO) );
  INVXLM U12 ( .A(A[6]), .Y(n3) );
  NOR2X1M U13 ( .A(A[4]), .B(A[3]), .Y(n4) );
  INVXLM U14 ( .A(A[5]), .Y(n2) );
  INVX2M U15 ( .A(A[3]), .Y(SUM[3]) );
endmodule


module BinToBCD_m1 ( bin_in, bcd_out );
  input [7:0] bin_in;
  output [9:0] bcd_out;
  wire   N1, N0, rem_3_u_div_PartRem_2__2_, rem_3_u_div_PartRem_2__1_,
         rem_3_u_div_PartRem_1__4_, rem_3_u_div_PartRem_1__3_,
         rem_3_u_div_PartRem_1__2_, rem_3_u_div_PartRem_1__1_,
         rem_3_u_div_SumTmp_1__3_, rem_3_u_div_SumTmp_1__2_,
         rem_3_u_div_SumTmp_0__3_, rem_3_u_div_SumTmp_0__2_,
         rem_3_u_div_SumTmp_0__1_, rem_3_quotient_0_,
         div_1_u_div_u_add_PartRem_1_1_n2, div_1_u_div_u_add_PartRem_1_1_n3,
         div_1_u_div_PartRem_2__4_, div_1_u_div_PartRem_1__7_,
         div_1_u_div_PartRem_1__6_, div_1_u_div_PartRem_1__5_,
         div_1_u_div_PartRem_1__4_, div_1_u_div_PartRem_1__3_,
         div_1_u_div_PartRem_1__2_, div_1_u_div_SumTmp_2__3_,
         div_1_u_div_SumTmp_2__2_, div_1_u_div_SumTmp_1__6_,
         div_1_u_div_SumTmp_1__5_, div_1_u_div_SumTmp_1__4_,
         div_1_u_div_SumTmp_1__3_, div_1_u_div_SumTmp_1__2_,
         rem_4_u_div_CryOut_1__1_, rem_4_u_div_CryOut_1__0_,
         rem_4_u_div_CryOut_2__1_, rem_4_u_div_CryOut_2__0_,
         rem_4_u_div_CryOut_3__1_, rem_4_u_div_CryOut_3__0_,
         rem_4_u_div_CryOut_5__0_, rem_4_u_div_CryOut_6__0_,
         rem_4_u_div_CryOut_7__0_, rem_4_u_div_SumTmp_1__1__3_,
         rem_4_u_div_SumTmp_1__1__2_, rem_4_u_div_SumTmp_1__1__1_,
         rem_4_u_div_SumTmp_1__1__0_, rem_4_u_div_SumTmp_1__0__3_,
         rem_4_u_div_SumTmp_1__0__2_, rem_4_u_div_SumTmp_1__0__1_,
         rem_4_u_div_SumTmp_1__0__0_, rem_4_u_div_SumTmp_2__1__3_,
         rem_4_u_div_SumTmp_2__1__2_, rem_4_u_div_SumTmp_2__1__1_,
         rem_4_u_div_SumTmp_2__1__0_, rem_4_u_div_SumTmp_2__0__3_,
         rem_4_u_div_SumTmp_2__0__2_, rem_4_u_div_SumTmp_2__0__1_,
         rem_4_u_div_SumTmp_2__0__0_, rem_4_u_div_SumTmp_3__1__3_,
         rem_4_u_div_SumTmp_3__1__2_, rem_4_u_div_SumTmp_3__1__1_,
         rem_4_u_div_SumTmp_3__1__0_, rem_4_u_div_SumTmp_3__0__3_,
         rem_4_u_div_SumTmp_3__0__2_, rem_4_u_div_SumTmp_3__0__1_,
         rem_4_u_div_SumTmp_3__0__0_, rem_4_u_div_SumTmp_4__0__3_,
         rem_4_u_div_SumTmp_4__0__2_, rem_4_u_div_SumTmp_4__0__1_,
         rem_4_u_div_SumTmp_4__0__0_, rem_4_u_div_SumTmp_5__0__3_,
         rem_4_u_div_SumTmp_5__0__2_, rem_4_u_div_SumTmp_5__0__1_,
         rem_4_u_div_SumTmp_5__0__0_, rem_4_u_div_SumTmp_6__0__3_,
         rem_4_u_div_SumTmp_6__0__2_, rem_4_u_div_SumTmp_6__0__1_,
         rem_4_u_div_SumTmp_6__0__0_, rem_4_u_div_SumTmp_7__0__3_,
         rem_4_u_div_SumTmp_7__0__2_, rem_4_u_div_SumTmp_7__0__1_,
         rem_4_u_div_SumTmp_7__0__0_, rem_4_quotient_2_,
         div_2_u_div_PartRem_1__4_, div_2_u_div_CryOut_1__1_,
         div_2_u_div_CryOut_1__0_, div_2_u_div_CryOut_2__1_,
         div_2_u_div_CryOut_2__0_, div_2_u_div_CryOut_3__1_,
         div_2_u_div_CryOut_3__0_, div_2_u_div_CryOut_5__0_,
         div_2_u_div_CryOut_6__0_, div_2_u_div_CryOut_7__0_,
         div_2_u_div_SumTmp_1__1__3_, div_2_u_div_SumTmp_1__1__2_,
         div_2_u_div_SumTmp_1__1__1_, div_2_u_div_SumTmp_1__1__0_,
         div_2_u_div_SumTmp_2__1__3_, div_2_u_div_SumTmp_2__1__2_,
         div_2_u_div_SumTmp_2__1__1_, div_2_u_div_SumTmp_2__1__0_,
         div_2_u_div_SumTmp_3__1__3_, div_2_u_div_SumTmp_3__1__2_,
         div_2_u_div_SumTmp_3__1__1_, div_2_u_div_SumTmp_3__1__0_, n1, n3, n4,
         n5, n6, n7, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n72, n73, n74, n75, n76, n77,
         n78, n79, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22,
         SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24,
         SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26,
         SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28,
         SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30,
         SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32,
         SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34,
         SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36,
         SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38,
         SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40,
         SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42,
         SYNOPSYS_UNCONNECTED_43, SYNOPSYS_UNCONNECTED_44,
         SYNOPSYS_UNCONNECTED_45, SYNOPSYS_UNCONNECTED_46,
         SYNOPSYS_UNCONNECTED_47, SYNOPSYS_UNCONNECTED_48,
         SYNOPSYS_UNCONNECTED_49, SYNOPSYS_UNCONNECTED_50,
         SYNOPSYS_UNCONNECTED_51, SYNOPSYS_UNCONNECTED_52,
         SYNOPSYS_UNCONNECTED_53, SYNOPSYS_UNCONNECTED_54,
         SYNOPSYS_UNCONNECTED_55, SYNOPSYS_UNCONNECTED_56,
         SYNOPSYS_UNCONNECTED_57, SYNOPSYS_UNCONNECTED_58,
         SYNOPSYS_UNCONNECTED_59, SYNOPSYS_UNCONNECTED_60,
         SYNOPSYS_UNCONNECTED_61, SYNOPSYS_UNCONNECTED_62,
         SYNOPSYS_UNCONNECTED_63, SYNOPSYS_UNCONNECTED_64,
         SYNOPSYS_UNCONNECTED_65, SYNOPSYS_UNCONNECTED_66,
         SYNOPSYS_UNCONNECTED_67, SYNOPSYS_UNCONNECTED_68,
         SYNOPSYS_UNCONNECTED_69, SYNOPSYS_UNCONNECTED_70,
         SYNOPSYS_UNCONNECTED_71, SYNOPSYS_UNCONNECTED_72,
         SYNOPSYS_UNCONNECTED_73, SYNOPSYS_UNCONNECTED_74,
         SYNOPSYS_UNCONNECTED_75, SYNOPSYS_UNCONNECTED_76,
         SYNOPSYS_UNCONNECTED_77, SYNOPSYS_UNCONNECTED_78,
         SYNOPSYS_UNCONNECTED_79, SYNOPSYS_UNCONNECTED_80,
         SYNOPSYS_UNCONNECTED_81, SYNOPSYS_UNCONNECTED_82,
         SYNOPSYS_UNCONNECTED_83, SYNOPSYS_UNCONNECTED_84,
         SYNOPSYS_UNCONNECTED_85, SYNOPSYS_UNCONNECTED_86,
         SYNOPSYS_UNCONNECTED_87, SYNOPSYS_UNCONNECTED_88;

  ADDHX1M div_1_u_div_u_add_PartRem_1_1_U2 ( .A(bin_in[7]), .B(
        div_1_u_div_u_add_PartRem_1_1_n2), .CO(bcd_out[9]), .S(
        div_1_u_div_SumTmp_1__6_) );
  ADDHX1M div_1_u_div_u_add_PartRem_1_1_U3 ( .A(bin_in[6]), .B(
        div_1_u_div_u_add_PartRem_1_1_n3), .CO(
        div_1_u_div_u_add_PartRem_1_1_n2), .S(div_1_u_div_SumTmp_1__5_) );
  MX2X2M div_1_u_div_u_mx_PartRem_0_1_1 ( .A(bin_in[2]), .B(bin_in[2]), .S0(
        bcd_out[9]), .Y(div_1_u_div_PartRem_1__2_) );
  MX2X2M div_1_u_div_u_mx_PartRem_0_1_3 ( .A(bin_in[4]), .B(
        div_1_u_div_SumTmp_1__3_), .S0(bcd_out[9]), .Y(
        div_1_u_div_PartRem_1__4_) );
  BinToBCD_m1_DW01_add_26 rem_4_u_div_u_add_PartRem_0_7 ( .A({n3, n5, n4, n70, 
        bin_in[2:0]}), .B({1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1}), .CI(
        1'b1), .SUM({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, rem_4_u_div_SumTmp_7__0__3_, 
        rem_4_u_div_SumTmp_7__0__2_, rem_4_u_div_SumTmp_7__0__1_, 
        rem_4_u_div_SumTmp_7__0__0_}), .CO(rem_4_u_div_CryOut_7__0_) );
  BinToBCD_m1_DW01_add_25 rem_4_u_div_u_add_PartRem_0_6 ( .A({n3, n5, n4, n70, 
        bin_in[2:0]}), .B({1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1}), .CI(
        1'b1), .SUM({SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, rem_4_u_div_SumTmp_6__0__3_, 
        rem_4_u_div_SumTmp_6__0__2_, rem_4_u_div_SumTmp_6__0__1_, 
        rem_4_u_div_SumTmp_6__0__0_}), .CO(rem_4_u_div_CryOut_6__0_) );
  BinToBCD_m1_DW01_add_24 rem_4_u_div_u_add_PartRem_0_5 ( .A({n3, n5, n4, n70, 
        bin_in[2:0]}), .B({1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1}), .CI(
        1'b1), .SUM({SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, 
        SYNOPSYS_UNCONNECTED_9, rem_4_u_div_SumTmp_5__0__3_, 
        rem_4_u_div_SumTmp_5__0__2_, rem_4_u_div_SumTmp_5__0__1_, 
        rem_4_u_div_SumTmp_5__0__0_}), .CO(rem_4_u_div_CryOut_5__0_) );
  BinToBCD_m1_DW01_add_22 rem_4_u_div_u_add_PartRem_0_3 ( .A({n3, n5, n4, n70, 
        bin_in[2:0]}), .B({1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .CI(
        1'b1), .SUM({SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, rem_4_u_div_SumTmp_3__0__3_, 
        rem_4_u_div_SumTmp_3__0__2_, rem_4_u_div_SumTmp_3__0__1_, 
        rem_4_u_div_SumTmp_3__0__0_}), .CO(rem_4_u_div_CryOut_3__0_) );
  BinToBCD_m1_DW01_add_21 rem_4_u_div_u_add_PartRem_0_2 ( .A({n3, n5, n4, n70, 
        bin_in[2:0]}), .B({1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1}), .CI(
        1'b1), .SUM({SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, rem_4_u_div_SumTmp_2__0__3_, 
        rem_4_u_div_SumTmp_2__0__2_, rem_4_u_div_SumTmp_2__0__1_, 
        rem_4_u_div_SumTmp_2__0__0_}), .CO(rem_4_u_div_CryOut_2__0_) );
  BinToBCD_m1_DW01_add_20 rem_4_u_div_u_add_PartRem_0_1 ( .A({n3, n5, n4, n70, 
        bin_in[2:0]}), .B({1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1}), .CI(
        1'b1), .SUM({SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, rem_4_u_div_SumTmp_1__0__3_, 
        rem_4_u_div_SumTmp_1__0__2_, rem_4_u_div_SumTmp_1__0__1_, 
        rem_4_u_div_SumTmp_1__0__0_}), .CO(rem_4_u_div_CryOut_1__0_) );
  BinToBCD_m1_DW01_add_15 rem_4_u_div_u_add_PartRem_1_3 ( .A({1'b0, 1'b0, 
        bin_in[7:3]}), .B({1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .CI(
        1'b1), .SUM({SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, 
        SYNOPSYS_UNCONNECTED_21, rem_4_u_div_SumTmp_3__1__3_, 
        rem_4_u_div_SumTmp_3__1__2_, rem_4_u_div_SumTmp_3__1__1_, 
        rem_4_u_div_SumTmp_3__1__0_}), .CO(rem_4_u_div_CryOut_3__1_) );
  BinToBCD_m1_DW01_add_14 rem_4_u_div_u_add_PartRem_1_2 ( .A({1'b0, 1'b0, 
        bin_in[7:3]}), .B({1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1}), .CI(
        1'b1), .SUM({SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, 
        SYNOPSYS_UNCONNECTED_24, rem_4_u_div_SumTmp_2__1__3_, 
        rem_4_u_div_SumTmp_2__1__2_, rem_4_u_div_SumTmp_2__1__1_, 
        rem_4_u_div_SumTmp_2__1__0_}), .CO(rem_4_u_div_CryOut_2__1_) );
  BinToBCD_m1_DW01_add_50 div_2_u_div_u_add_PartRem_0_7 ( .A({n28, n7, 
        div_2_u_div_PartRem_1__4_, n6, bin_in[2:0]}), .B({1'b0, 1'b1, 1'b1, 
        1'b1, 1'b0, 1'b0, 1'b1}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_25, 
        SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27, 
        SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29, 
        SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31}), .CO(
        div_2_u_div_CryOut_7__0_) );
  BinToBCD_m1_DW01_add_49 div_2_u_div_u_add_PartRem_0_6 ( .A({n28, n7, 
        div_2_u_div_PartRem_1__4_, n6, bin_in[2:0]}), .B({1'b1, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b1, 1'b1}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_32, 
        SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34, 
        SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36, 
        SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38}), .CO(
        div_2_u_div_CryOut_6__0_) );
  BinToBCD_m1_DW01_add_48 div_2_u_div_u_add_PartRem_0_5 ( .A({n28, n7, 
        div_2_u_div_PartRem_1__4_, n6, bin_in[2:0]}), .B({1'b1, 1'b0, 1'b0, 
        1'b1, 1'b1, 1'b0, 1'b1}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_39, 
        SYNOPSYS_UNCONNECTED_40, SYNOPSYS_UNCONNECTED_41, 
        SYNOPSYS_UNCONNECTED_42, SYNOPSYS_UNCONNECTED_43, 
        SYNOPSYS_UNCONNECTED_44, SYNOPSYS_UNCONNECTED_45}), .CO(
        div_2_u_div_CryOut_5__0_) );
  BinToBCD_m1_DW01_add_46 div_2_u_div_u_add_PartRem_0_3 ( .A({n28, n7, 
        div_2_u_div_PartRem_1__4_, n6, bin_in[2:0]}), .B({1'b1, 1'b1, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b1}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_46, 
        SYNOPSYS_UNCONNECTED_47, SYNOPSYS_UNCONNECTED_48, 
        SYNOPSYS_UNCONNECTED_49, SYNOPSYS_UNCONNECTED_50, 
        SYNOPSYS_UNCONNECTED_51, SYNOPSYS_UNCONNECTED_52}), .CO(
        div_2_u_div_CryOut_3__0_) );
  BinToBCD_m1_DW01_add_45 div_2_u_div_u_add_PartRem_0_2 ( .A({n28, n7, 
        div_2_u_div_PartRem_1__4_, n6, bin_in[2:0]}), .B({1'b1, 1'b1, 1'b0, 
        1'b1, 1'b0, 1'b1, 1'b1}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_53, 
        SYNOPSYS_UNCONNECTED_54, SYNOPSYS_UNCONNECTED_55, 
        SYNOPSYS_UNCONNECTED_56, SYNOPSYS_UNCONNECTED_57, 
        SYNOPSYS_UNCONNECTED_58, SYNOPSYS_UNCONNECTED_59}), .CO(
        div_2_u_div_CryOut_2__0_) );
  BinToBCD_m1_DW01_add_44 div_2_u_div_u_add_PartRem_0_1 ( .A({n28, n7, 
        div_2_u_div_PartRem_1__4_, n6, bin_in[2:0]}), .B({1'b1, 1'b1, 1'b1, 
        1'b0, 1'b1, 1'b0, 1'b1}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_60, 
        SYNOPSYS_UNCONNECTED_61, SYNOPSYS_UNCONNECTED_62, 
        SYNOPSYS_UNCONNECTED_63, SYNOPSYS_UNCONNECTED_64, 
        SYNOPSYS_UNCONNECTED_65, SYNOPSYS_UNCONNECTED_66}), .CO(
        div_2_u_div_CryOut_1__0_) );
  BinToBCD_m1_DW01_add_39 div_2_u_div_u_add_PartRem_1_3 ( .A({1'b0, 1'b0, 
        bin_in[7:3]}), .B({1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .CI(
        1'b1), .SUM({SYNOPSYS_UNCONNECTED_67, SYNOPSYS_UNCONNECTED_68, 
        SYNOPSYS_UNCONNECTED_69, div_2_u_div_SumTmp_3__1__3_, 
        div_2_u_div_SumTmp_3__1__2_, div_2_u_div_SumTmp_3__1__1_, 
        div_2_u_div_SumTmp_3__1__0_}), .CO(div_2_u_div_CryOut_3__1_) );
  BinToBCD_m1_DW01_add_37 div_2_u_div_u_add_PartRem_1_1 ( .A({1'b0, 1'b0, 
        bin_in[7:3]}), .B({1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1}), .CI(
        1'b1), .SUM({SYNOPSYS_UNCONNECTED_70, SYNOPSYS_UNCONNECTED_71, 
        SYNOPSYS_UNCONNECTED_72, div_2_u_div_SumTmp_1__1__3_, 
        div_2_u_div_SumTmp_1__1__2_, div_2_u_div_SumTmp_1__1__1_, 
        div_2_u_div_SumTmp_1__1__0_}), .CO(div_2_u_div_CryOut_1__1_) );
  BinToBCD_m1_DW01_add_51 div_2_u_div_u_add_PartRem_1_2 ( .A({1'b0, 1'b0, 
        bin_in[7:3]}), .B({1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1}), .CI(
        1'b1), .SUM({SYNOPSYS_UNCONNECTED_73, SYNOPSYS_UNCONNECTED_74, 
        SYNOPSYS_UNCONNECTED_75, div_2_u_div_SumTmp_2__1__3_, 
        div_2_u_div_SumTmp_2__1__2_, div_2_u_div_SumTmp_2__1__1_, 
        div_2_u_div_SumTmp_2__1__0_}), .CO(div_2_u_div_CryOut_2__1_) );
  BinToBCD_m1_DW01_add_52 div_2_u_div_u_add_PartRem_0_4 ( .A({n28, n7, 
        div_2_u_div_PartRem_1__4_, n6, bin_in[2:0]}), .B({1'b1, 1'b0, 1'b1, 
        1'b0, 1'b1, 1'b1, 1'b1}), .CI(1'b1), .SUM({SYNOPSYS_UNCONNECTED_76, 
        SYNOPSYS_UNCONNECTED_77, SYNOPSYS_UNCONNECTED_78, 
        SYNOPSYS_UNCONNECTED_79, SYNOPSYS_UNCONNECTED_80, 
        SYNOPSYS_UNCONNECTED_81, SYNOPSYS_UNCONNECTED_82}), .CO(
        rem_3_u_div_PartRem_2__1_) );
  BinToBCD_m1_DW01_add_53 rem_4_u_div_u_add_PartRem_1_1 ( .A({1'b0, 1'b0, 
        bin_in[7:3]}), .B({1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1}), .CI(
        1'b1), .SUM({SYNOPSYS_UNCONNECTED_83, SYNOPSYS_UNCONNECTED_84, 
        SYNOPSYS_UNCONNECTED_85, rem_4_u_div_SumTmp_1__1__3_, 
        rem_4_u_div_SumTmp_1__1__2_, rem_4_u_div_SumTmp_1__1__1_, 
        rem_4_u_div_SumTmp_1__1__0_}), .CO(rem_4_u_div_CryOut_1__1_) );
  BinToBCD_m1_DW01_add_55 rem_4_u_div_u_add_PartRem_0_4 ( .A({n3, n5, n4, n70, 
        bin_in[2:0]}), .B({1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1}), .CI(
        1'b1), .SUM({SYNOPSYS_UNCONNECTED_86, SYNOPSYS_UNCONNECTED_87, 
        SYNOPSYS_UNCONNECTED_88, rem_4_u_div_SumTmp_4__0__3_, 
        rem_4_u_div_SumTmp_4__0__2_, rem_4_u_div_SumTmp_4__0__1_, 
        rem_4_u_div_SumTmp_4__0__0_}), .CO(rem_4_quotient_2_) );
  MX2X1M rem_3_u_div_u_mx_PartRem_0_1_1 ( .A(rem_3_u_div_PartRem_2__1_), .B(
        n10), .S0(n79), .Y(rem_3_u_div_PartRem_1__2_) );
  MX2XLM div_1_u_div_u_mx_PartRem_0_2_3 ( .A(bin_in[5]), .B(
        div_1_u_div_SumTmp_2__3_), .S0(1'b0), .Y(div_1_u_div_PartRem_2__4_) );
  MX2XLM rem_3_u_div_u_mx_PartRem_0_0_1 ( .A(rem_3_u_div_PartRem_1__1_), .B(
        rem_3_u_div_SumTmp_0__1_), .S0(rem_3_quotient_0_), .Y(bcd_out[5]) );
  MX2XLM div_1_u_div_u_mx_PartRem_0_1_6 ( .A(bin_in[7]), .B(
        div_1_u_div_SumTmp_1__6_), .S0(bcd_out[9]), .Y(
        div_1_u_div_PartRem_1__7_) );
  MX2XLM div_1_u_div_u_mx_PartRem_0_1_2 ( .A(bin_in[3]), .B(
        div_1_u_div_SumTmp_1__2_), .S0(bcd_out[9]), .Y(
        div_1_u_div_PartRem_1__3_) );
  MX2X2M rem_3_u_div_u_mx_PartRem_0_1_0 ( .A(N1), .B(N1), .S0(n79), .Y(
        rem_3_u_div_PartRem_1__1_) );
  MX2X2M rem_3_u_div_u_mx_PartRem_0_1_2 ( .A(rem_3_u_div_PartRem_2__2_), .B(
        rem_3_u_div_SumTmp_1__2_), .S0(n79), .Y(rem_3_u_div_PartRem_1__3_) );
  MX2XLM rem_3_u_div_u_mx_PartRem_0_1_3 ( .A(div_2_u_div_CryOut_2__1_), .B(
        rem_3_u_div_SumTmp_1__3_), .S0(n79), .Y(rem_3_u_div_PartRem_1__4_) );
  MX2XLM div_1_u_div_u_mx_PartRem_0_1_4 ( .A(div_1_u_div_PartRem_2__4_), .B(
        div_1_u_div_SumTmp_1__4_), .S0(bcd_out[9]), .Y(
        div_1_u_div_PartRem_1__5_) );
  MX2XLM div_1_u_div_u_mx_PartRem_0_1_5 ( .A(bin_in[6]), .B(
        div_1_u_div_SumTmp_1__5_), .S0(bcd_out[9]), .Y(
        div_1_u_div_PartRem_1__6_) );
  MX2X1M rem_3_u_div_u_mx_PartRem_0_0_0 ( .A(N0), .B(N0), .S0(
        rem_3_quotient_0_), .Y(bcd_out[4]) );
  MX2XLM rem_3_u_div_u_mx_PartRem_0_0_2 ( .A(rem_3_u_div_PartRem_1__2_), .B(
        rem_3_u_div_SumTmp_0__2_), .S0(rem_3_quotient_0_), .Y(bcd_out[6]) );
  MX2X1M rem_3_u_div_u_mx_PartRem_0_0_3 ( .A(rem_3_u_div_PartRem_1__3_), .B(
        rem_3_u_div_SumTmp_0__3_), .S0(rem_3_quotient_0_), .Y(bcd_out[7]) );
  MXI2X4M U3 ( .A(rem_4_u_div_CryOut_6__0_), .B(rem_4_u_div_CryOut_2__0_), 
        .S0(n56), .Y(n50) );
  INVX4M U5 ( .A(rem_3_u_div_PartRem_2__1_), .Y(n10) );
  NAND2X2M U6 ( .A(n69), .B(n68), .Y(n3) );
  NAND2X2M U7 ( .A(n21), .B(n20), .Y(n7) );
  NAND2X2M U8 ( .A(n27), .B(n26), .Y(n28) );
  NAND2X2M U9 ( .A(n61), .B(n60), .Y(n4) );
  AND2X2M U10 ( .A(n19), .B(n18), .Y(n1) );
  NOR2X2M U11 ( .A(n47), .B(rem_4_u_div_CryOut_2__1_), .Y(n64) );
  AOI22X1M U12 ( .A0(n14), .A1(n15), .B0(n13), .B1(div_2_u_div_CryOut_2__1_), 
        .Y(rem_3_u_div_PartRem_2__2_) );
  AO21X2M U13 ( .A0(rem_3_u_div_PartRem_1__3_), .A1(n77), .B0(
        rem_3_u_div_PartRem_1__4_), .Y(rem_3_quotient_0_) );
  NOR2X1M U14 ( .A(n51), .B(n52), .Y(n55) );
  CLKINVX2M U15 ( .A(rem_3_u_div_PartRem_1__2_), .Y(n78) );
  AOI22XLM U16 ( .A0(rem_4_quotient_2_), .A1(rem_4_u_div_CryOut_5__0_), .B0(
        rem_4_u_div_CryOut_1__0_), .B1(n56), .Y(n30) );
  INVX4M U17 ( .A(n50), .Y(n51) );
  MX2X2M U18 ( .A(div_2_u_div_CryOut_6__0_), .B(div_2_u_div_CryOut_2__0_), 
        .S0(n10), .Y(N1) );
  INVX4M U19 ( .A(rem_4_quotient_2_), .Y(n56) );
  NAND2X2M U20 ( .A(n63), .B(n62), .Y(n5) );
  NAND2X4M U21 ( .A(n49), .B(n48), .Y(n70) );
  NAND2X2M U22 ( .A(n17), .B(n16), .Y(n6) );
  INVX4M U23 ( .A(n1), .Y(div_2_u_div_PartRem_1__4_) );
  AOI22X1M U24 ( .A0(n65), .A1(bin_in[3]), .B0(n64), .B1(
        rem_4_u_div_SumTmp_1__1__0_), .Y(n48) );
  NOR2X2M U25 ( .A(n45), .B(n47), .Y(n66) );
  NOR2X1M U26 ( .A(n14), .B(rem_3_u_div_PartRem_2__2_), .Y(n25) );
  INVX1M U27 ( .A(rem_4_u_div_CryOut_3__1_), .Y(n43) );
  INVX2M U28 ( .A(rem_4_u_div_CryOut_2__1_), .Y(n45) );
  INVXLM U29 ( .A(div_2_u_div_CryOut_3__1_), .Y(n13) );
  INVXLM U30 ( .A(div_2_u_div_CryOut_1__1_), .Y(n15) );
  INVXLM U31 ( .A(rem_4_u_div_CryOut_1__1_), .Y(n44) );
  OAI21XLM U32 ( .A0(bin_in[4]), .A1(bin_in[3]), .B0(div_1_u_div_PartRem_2__4_), .Y(n74) );
  INVXLM U33 ( .A(bin_in[3]), .Y(div_1_u_div_SumTmp_1__2_) );
  AND2X2M U34 ( .A(div_2_u_div_CryOut_2__1_), .B(n75), .Y(n79) );
  OAI21BXLM U35 ( .A0(n72), .A1(n73), .B0N(div_1_u_div_PartRem_1__7_), .Y(
        bcd_out[8]) );
  AOI22XLM U36 ( .A0(n67), .A1(rem_4_u_div_SumTmp_2__1__2_), .B0(n66), .B1(
        rem_4_u_div_SumTmp_3__1__2_), .Y(n63) );
  AOI22X1M U37 ( .A0(n67), .A1(rem_4_u_div_SumTmp_2__1__1_), .B0(n66), .B1(
        rem_4_u_div_SumTmp_3__1__1_), .Y(n61) );
  XOR2XLM U38 ( .A(rem_3_u_div_PartRem_1__3_), .B(n77), .Y(
        rem_3_u_div_SumTmp_0__3_) );
  INVXLM U39 ( .A(rem_3_u_div_PartRem_2__2_), .Y(n76) );
  NOR2X2M U40 ( .A(div_2_u_div_CryOut_2__1_), .B(rem_3_u_div_PartRem_2__2_), 
        .Y(n23) );
  INVX3M U41 ( .A(n46), .Y(n47) );
  AOI22XLM U42 ( .A0(rem_3_u_div_PartRem_2__1_), .A1(div_2_u_div_CryOut_5__0_), 
        .B0(div_2_u_div_CryOut_1__0_), .B1(n10), .Y(n12) );
  OAI221XLM U43 ( .A0(rem_3_u_div_PartRem_2__1_), .A1(div_2_u_div_CryOut_3__0_), .B0(n10), .B1(div_2_u_div_CryOut_7__0_), .C0(N1), .Y(n11) );
  AOI22XLM U44 ( .A0(rem_3_u_div_PartRem_2__1_), .A1(n76), .B0(
        rem_3_u_div_PartRem_2__2_), .B1(n10), .Y(rem_3_u_div_SumTmp_1__2_) );
  AOI222X1M U45 ( .A0(n55), .A1(n70), .B0(rem_4_u_div_SumTmp_2__0__3_), .B1(
        n54), .C0(n53), .C1(n52), .Y(n57) );
  AOI22X4M U46 ( .A0(n45), .A1(n44), .B0(n43), .B1(rem_4_u_div_CryOut_2__1_), 
        .Y(n46) );
  NOR2X2M U47 ( .A(rem_4_u_div_CryOut_2__1_), .B(n46), .Y(n65) );
  NOR2X2M U48 ( .A(n50), .B(n52), .Y(n54) );
  AOI22X4M U49 ( .A0(n50), .A1(n30), .B0(n29), .B1(n51), .Y(n52) );
  AOI22XLM U50 ( .A0(n65), .A1(bin_in[5]), .B0(n64), .B1(
        rem_4_u_div_SumTmp_1__1__2_), .Y(n62) );
  CLKINVX2M U51 ( .A(div_2_u_div_CryOut_2__1_), .Y(n14) );
  AOI2BB2XLM U52 ( .B0(bin_in[5]), .B1(div_1_u_div_SumTmp_2__2_), .A0N(
        div_1_u_div_SumTmp_2__2_), .A1N(bin_in[5]), .Y(
        div_1_u_div_SumTmp_2__3_) );
  AOI22X1M U53 ( .A0(n23), .A1(bin_in[5]), .B0(n22), .B1(
        div_2_u_div_SumTmp_1__1__2_), .Y(n20) );
  OAI21X1M U56 ( .A0(n12), .A1(N1), .B0(n11), .Y(N0) );
  NOR2X1M U57 ( .A(n14), .B(n13), .Y(n24) );
  AOI22X1M U58 ( .A0(n25), .A1(div_2_u_div_SumTmp_2__1__0_), .B0(n24), .B1(
        div_2_u_div_SumTmp_3__1__0_), .Y(n17) );
  NOR2X1M U59 ( .A(n15), .B(div_2_u_div_CryOut_2__1_), .Y(n22) );
  AOI22X1M U60 ( .A0(n23), .A1(bin_in[3]), .B0(n22), .B1(
        div_2_u_div_SumTmp_1__1__0_), .Y(n16) );
  AOI22X1M U61 ( .A0(n25), .A1(div_2_u_div_SumTmp_2__1__1_), .B0(n24), .B1(
        div_2_u_div_SumTmp_3__1__1_), .Y(n19) );
  AOI22X1M U62 ( .A0(n23), .A1(bin_in[4]), .B0(n22), .B1(
        div_2_u_div_SumTmp_1__1__1_), .Y(n18) );
  AOI22X1M U63 ( .A0(n25), .A1(div_2_u_div_SumTmp_2__1__2_), .B0(n24), .B1(
        div_2_u_div_SumTmp_3__1__2_), .Y(n21) );
  AOI22X1M U64 ( .A0(n25), .A1(div_2_u_div_SumTmp_2__1__3_), .B0(n24), .B1(
        div_2_u_div_SumTmp_3__1__3_), .Y(n27) );
  AOI22X1M U65 ( .A0(n23), .A1(bin_in[6]), .B0(n22), .B1(
        div_2_u_div_SumTmp_1__1__3_), .Y(n26) );
  AOI222X1M U66 ( .A0(n55), .A1(bin_in[1]), .B0(rem_4_u_div_SumTmp_2__0__1_), 
        .B1(n54), .C0(n35), .C1(n52), .Y(n36) );
  AOI222X1M U67 ( .A0(n55), .A1(bin_in[2]), .B0(rem_4_u_div_SumTmp_2__0__2_), 
        .B1(n54), .C0(n39), .C1(n52), .Y(n40) );
  AOI222X1M U68 ( .A0(n55), .A1(bin_in[0]), .B0(rem_4_u_div_SumTmp_2__0__0_), 
        .B1(n54), .C0(n31), .C1(n52), .Y(n32) );
  AOI22X1M U69 ( .A0(rem_4_quotient_2_), .A1(rem_4_u_div_CryOut_7__0_), .B0(
        rem_4_u_div_CryOut_3__0_), .B1(n56), .Y(n29) );
  OAI221X1M U70 ( .A0(n51), .A1(rem_4_u_div_SumTmp_5__0__0_), .B0(n50), .B1(
        rem_4_u_div_SumTmp_7__0__0_), .C0(n52), .Y(n34) );
  AOI22X1M U71 ( .A0(n55), .A1(rem_4_u_div_SumTmp_4__0__0_), .B0(n54), .B1(
        rem_4_u_div_SumTmp_6__0__0_), .Y(n33) );
  AO22X1M U72 ( .A0(rem_4_u_div_SumTmp_3__0__0_), .A1(n51), .B0(n50), .B1(
        rem_4_u_div_SumTmp_1__0__0_), .Y(n31) );
  AOI32X1M U73 ( .A0(rem_4_quotient_2_), .A1(n34), .A2(n33), .B0(n32), .B1(n56), .Y(bcd_out[0]) );
  OAI221X1M U74 ( .A0(n51), .A1(rem_4_u_div_SumTmp_5__0__1_), .B0(n50), .B1(
        rem_4_u_div_SumTmp_7__0__1_), .C0(n52), .Y(n38) );
  AOI22X1M U75 ( .A0(n55), .A1(rem_4_u_div_SumTmp_4__0__1_), .B0(n54), .B1(
        rem_4_u_div_SumTmp_6__0__1_), .Y(n37) );
  AO22X1M U76 ( .A0(rem_4_u_div_SumTmp_3__0__1_), .A1(n51), .B0(n50), .B1(
        rem_4_u_div_SumTmp_1__0__1_), .Y(n35) );
  AOI32X1M U77 ( .A0(rem_4_quotient_2_), .A1(n38), .A2(n37), .B0(n36), .B1(n56), .Y(bcd_out[1]) );
  OAI221X1M U78 ( .A0(n51), .A1(rem_4_u_div_SumTmp_5__0__2_), .B0(n50), .B1(
        rem_4_u_div_SumTmp_7__0__2_), .C0(n52), .Y(n42) );
  AOI22X1M U79 ( .A0(n55), .A1(rem_4_u_div_SumTmp_4__0__2_), .B0(n54), .B1(
        rem_4_u_div_SumTmp_6__0__2_), .Y(n41) );
  AO22X1M U80 ( .A0(rem_4_u_div_SumTmp_3__0__2_), .A1(n51), .B0(n50), .B1(
        rem_4_u_div_SumTmp_1__0__2_), .Y(n39) );
  AOI32X1M U81 ( .A0(rem_4_quotient_2_), .A1(n42), .A2(n41), .B0(n40), .B1(n56), .Y(bcd_out[2]) );
  OAI221X1M U82 ( .A0(n51), .A1(rem_4_u_div_SumTmp_5__0__3_), .B0(n50), .B1(
        rem_4_u_div_SumTmp_7__0__3_), .C0(n52), .Y(n59) );
  AOI22X1M U83 ( .A0(n55), .A1(rem_4_u_div_SumTmp_4__0__3_), .B0(n54), .B1(
        rem_4_u_div_SumTmp_6__0__3_), .Y(n58) );
  NOR2X1M U84 ( .A(n45), .B(n46), .Y(n67) );
  AOI22X1M U85 ( .A0(n67), .A1(rem_4_u_div_SumTmp_2__1__0_), .B0(n66), .B1(
        rem_4_u_div_SumTmp_3__1__0_), .Y(n49) );
  AO22X1M U86 ( .A0(rem_4_u_div_SumTmp_3__0__3_), .A1(n51), .B0(n50), .B1(
        rem_4_u_div_SumTmp_1__0__3_), .Y(n53) );
  AOI32X1M U87 ( .A0(rem_4_quotient_2_), .A1(n59), .A2(n58), .B0(n57), .B1(n56), .Y(bcd_out[3]) );
  AOI22X1M U88 ( .A0(n65), .A1(bin_in[4]), .B0(n64), .B1(
        rem_4_u_div_SumTmp_1__1__1_), .Y(n60) );
  AOI22X1M U89 ( .A0(n67), .A1(rem_4_u_div_SumTmp_2__1__3_), .B0(n66), .B1(
        rem_4_u_div_SumTmp_3__1__3_), .Y(n69) );
  AOI22X1M U90 ( .A0(n65), .A1(bin_in[6]), .B0(n64), .B1(
        rem_4_u_div_SumTmp_1__1__3_), .Y(n68) );
  NOR3X1M U92 ( .A(div_1_u_div_PartRem_1__2_), .B(div_1_u_div_PartRem_1__4_), 
        .C(div_1_u_div_PartRem_1__3_), .Y(n73) );
  CLKNAND2X2M U93 ( .A(div_1_u_div_PartRem_1__5_), .B(
        div_1_u_div_PartRem_1__6_), .Y(n72) );
  OR3X1M U94 ( .A(div_1_u_div_PartRem_2__4_), .B(bin_in[4]), .C(bin_in[3]), 
        .Y(div_1_u_div_u_add_PartRem_1_1_n3) );
  OAI31X1M U95 ( .A0(bin_in[4]), .A1(div_1_u_div_PartRem_2__4_), .A2(bin_in[3]), .B0(n74), .Y(div_1_u_div_SumTmp_1__4_) );
  AOI2BB2X1M U96 ( .B0(bin_in[4]), .B1(div_1_u_div_SumTmp_1__2_), .A0N(
        div_1_u_div_SumTmp_1__2_), .A1N(bin_in[4]), .Y(
        div_1_u_div_SumTmp_1__3_) );
  INVXLM U97 ( .A(bin_in[4]), .Y(div_1_u_div_SumTmp_2__2_) );
  XOR2X1M U98 ( .A(div_2_u_div_CryOut_2__1_), .B(n75), .Y(
        rem_3_u_div_SumTmp_1__3_) );
  CLKNAND2X2M U99 ( .A(n76), .B(n10), .Y(n75) );
  AOI22X1M U100 ( .A0(rem_3_u_div_PartRem_1__1_), .A1(n78), .B0(
        rem_3_u_div_PartRem_1__2_), .B1(rem_3_u_div_SumTmp_0__1_), .Y(
        rem_3_u_div_SumTmp_0__2_) );
  CLKNAND2X2M U101 ( .A(n78), .B(rem_3_u_div_SumTmp_0__1_), .Y(n77) );
  CLKINVX1M U102 ( .A(rem_3_u_div_PartRem_1__1_), .Y(rem_3_u_div_SumTmp_0__1_)
         );
endmodule


module top ( bin_in, sampling, clk, rst, flag, bcd_out );
  input [7:0] bin_in;
  output [9:0] bcd_out;
  input sampling, clk, rst;
  output flag;
  wire   N2;
  wire   [7:0] bin_in_r;
  wire   [9:0] bcd_out_r;

  INVXLM I_0 ( .A(rst), .Y(N2) );
  DFFTRX4M bin_in_r_reg_6_ ( .D(N2), .RN(bin_in[6]), .CK(clk), .Q(bin_in_r[6])
         );
  DFFTRX4M bin_in_r_reg_5_ ( .D(N2), .RN(bin_in[5]), .CK(clk), .Q(bin_in_r[5])
         );
  DFFTRX4M bin_in_r_reg_4_ ( .D(N2), .RN(bin_in[4]), .CK(clk), .Q(bin_in_r[4])
         );
  BinToBCD_m1 BinToBCD_m1_u0 ( .bin_in(bin_in_r), .bcd_out(bcd_out_r) );
  DFFTRX1M bin_in_r_reg_1_ ( .D(N2), .RN(bin_in[1]), .CK(clk), .Q(bin_in_r[1])
         );
  DFFTRX1M bcd_out_reg_7_ ( .D(N2), .RN(bcd_out_r[7]), .CK(clk), .Q(bcd_out[7]) );
  DFFTRX1M bcd_out_reg_9_ ( .D(N2), .RN(bcd_out_r[9]), .CK(clk), .Q(bcd_out[9]) );
  DFFTRX1M bin_in_r_reg_3_ ( .D(N2), .RN(bin_in[3]), .CK(clk), .Q(bin_in_r[3])
         );
  DFFTRX1M bin_in_r_reg_2_ ( .D(N2), .RN(bin_in[2]), .CK(clk), .Q(bin_in_r[2])
         );
  DFFTRX1M bin_in_r_reg_0_ ( .D(N2), .RN(bin_in[0]), .CK(clk), .Q(bin_in_r[0])
         );
  DFFTRX1M bcd_out_reg_8_ ( .D(N2), .RN(bcd_out_r[8]), .CK(clk), .Q(bcd_out[8]) );
  DFFTRX1M bcd_out_reg_0_ ( .D(N2), .RN(bcd_out_r[0]), .CK(clk), .Q(bcd_out[0]) );
  DFFTRX1M bcd_out_reg_1_ ( .D(N2), .RN(bcd_out_r[1]), .CK(clk), .Q(bcd_out[1]) );
  DFFTRX1M bcd_out_reg_2_ ( .D(N2), .RN(bcd_out_r[2]), .CK(clk), .Q(bcd_out[2]) );
  DFFTRX1M bcd_out_reg_3_ ( .D(N2), .RN(bcd_out_r[3]), .CK(clk), .Q(bcd_out[3]) );
  DFFTRX1M bcd_out_reg_5_ ( .D(N2), .RN(bcd_out_r[5]), .CK(clk), .Q(bcd_out[5]) );
  DFFTRX1M bcd_out_reg_4_ ( .D(N2), .RN(bcd_out_r[4]), .CK(clk), .Q(bcd_out[4]) );
  DFFTRX1M bcd_out_reg_6_ ( .D(N2), .RN(bcd_out_r[6]), .CK(clk), .Q(bcd_out[6]) );
  DFFTRX2M bin_in_r_reg_7_ ( .D(N2), .RN(bin_in[7]), .CK(clk), .Q(bin_in_r[7])
         );
endmodule

