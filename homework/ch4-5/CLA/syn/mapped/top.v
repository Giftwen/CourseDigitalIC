/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Sun Oct 23 22:57:45 2022
/////////////////////////////////////////////////////////////


module adder_0 ( a, b, ci, sum );
  input a, b, ci;
  output sum;


  XOR2XLM U1 ( .A(a), .B(b), .Y(sum) );
endmodule


module adder_15 ( a, b, ci, sum );
  input a, b, ci;
  output sum;


  XOR3XLM U1 ( .A(a), .B(ci), .C(b), .Y(sum) );
endmodule


module adder_14 ( a, b, ci, sum );
  input a, b, ci;
  output sum;


  XOR3XLM U1 ( .A(a), .B(ci), .C(b), .Y(sum) );
endmodule


module adder_13 ( a, b, ci, sum );
  input a, b, ci;
  output sum;


  XOR3XLM U1 ( .A(a), .B(ci), .C(b), .Y(sum) );
endmodule


module cla_0 ( c0, c1, c2, c3, c4, p1, p2, p3, p4, g1, g2, g3, g4 );
  input c0, p1, p2, p3, p4, g1, g2, g3, g4;
  output c1, c2, c3, c4;
  wire   g1, n1, n5, n6, n7, n2, n3;
  assign c1 = g1;

  XOR3XLM U1 ( .A(g4), .B(n1), .C(n3), .Y(c4) );
  AOI21XLM U4 ( .A0(n5), .A1(g3), .B0(n6), .Y(n1) );
  XNOR3XLM U6 ( .A(n5), .B(g3), .C(n7), .Y(c3) );
  AND3X2M U2 ( .A(p2), .B(p3), .C(g1), .Y(n5) );
  OAI21XLM U3 ( .A0(n5), .A1(g3), .B0(p4), .Y(n6) );
  XOR2XLM U5 ( .A(n2), .B(g2), .Y(c2) );
  NAND2XLM U7 ( .A(g2), .B(p3), .Y(n7) );
  AND2X1M U8 ( .A(p2), .B(g1), .Y(n2) );
  AND3XLM U9 ( .A(p3), .B(p4), .C(g2), .Y(n3) );
endmodule


module adder_cla4_0 ( a, b, ci, Gm, Pm, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input ci;
  output Gm, Pm;
  wire   c1, c2, c3, p1, p2, p3, p4, g1, g2, g3, g4, n1, n2, n3, n4, n5, n6,
         n7, n8;

  INVXLM U1 ( .A(n1), .Y(g4) );
  XOR2XLM U3 ( .A(b[0]), .B(a[0]), .Y(p1) );
  adder_0 adder_u0 ( .a(a[0]), .b(b[0]), .ci(1'b0), .sum(sum[0]) );
  adder_15 adder_u1 ( .a(a[1]), .b(b[1]), .ci(c1), .sum(sum[1]) );
  adder_14 adder_u2 ( .a(a[2]), .b(b[2]), .ci(c2), .sum(sum[2]) );
  adder_13 adder_u3 ( .a(n7), .b(b[3]), .ci(c3), .sum(sum[3]) );
  cla_0 cla ( .c0(1'b0), .c1(c1), .c2(c2), .c3(c3), .p1(p1), .p2(p2), .p3(p3), 
        .p4(n8), .g1(g1), .g2(g2), .g3(g3), .g4(g4) );
  XOR2X3M U2 ( .A(b[3]), .B(a[3]), .Y(n4) );
  XOR2X4M U4 ( .A(b[3]), .B(a[3]), .Y(n5) );
  XOR2X4M U5 ( .A(b[3]), .B(a[3]), .Y(p4) );
  CLKAND2X4M U6 ( .A(b[2]), .B(a[2]), .Y(g3) );
  INVXLM U7 ( .A(a[3]), .Y(n6) );
  CLKINVX1M U8 ( .A(n6), .Y(n7) );
  CLKAND2X6M U9 ( .A(b[1]), .B(a[1]), .Y(g2) );
  CLKBUFX1M U10 ( .A(n4), .Y(n8) );
  NAND3X4M U11 ( .A(p2), .B(p3), .C(n5), .Y(n2) );
  AND2X4M U12 ( .A(b[0]), .B(a[0]), .Y(g1) );
  NAND2XLM U13 ( .A(b[3]), .B(n7), .Y(n1) );
  NOR2BXLM U14 ( .AN(p1), .B(n2), .Y(Pm) );
  AOI32X4M U15 ( .A0(p3), .A1(p4), .A2(g2), .B0(g3), .B1(n4), .Y(n3) );
  XOR2X4M U16 ( .A(b[1]), .B(a[1]), .Y(p2) );
  OAI2B11X4M U17 ( .A1N(g1), .A0(n2), .B0(n3), .C0(n1), .Y(Gm) );
  XOR2X8M U18 ( .A(b[2]), .B(a[2]), .Y(p3) );
endmodule


module adder_12 ( a, b, ci, sum );
  input a, b, ci;
  output sum;


  XOR3XLM U1 ( .A(ci), .B(a), .C(b), .Y(sum) );
endmodule


module adder_11 ( a, b, ci, sum );
  input a, b, ci;
  output sum;


  XOR3XLM U1 ( .A(a), .B(b), .C(ci), .Y(sum) );
endmodule


module adder_10 ( a, b, ci, sum );
  input a, b, ci;
  output sum;
  wire   n1;

  XOR2X2M U1 ( .A(ci), .B(n1), .Y(sum) );
  XOR2X2M U2 ( .A(b), .B(a), .Y(n1) );
endmodule


module adder_9 ( a, b, ci, sum );
  input a, b, ci;
  output sum;
  wire   n1;

  XOR2X2M U1 ( .A(ci), .B(n1), .Y(sum) );
  XOR2X2M U2 ( .A(b), .B(a), .Y(n1) );
endmodule


module cla_3 ( c0, c1, c2, c3, c4, p1, p2, p3, p4, g1, g2, g3, g4 );
  input c0, p1, p2, p3, p4, g1, g2, g3, g4;
  output c1, c2, c3, c4;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XOR3XLM U1 ( .A(g4), .B(n20), .C(n19), .Y(c4) );
  AOI21XLM U2 ( .A0(n18), .A1(g2), .B0(n17), .Y(n19) );
  AOI21XLM U4 ( .A0(n16), .A1(g3), .B0(n15), .Y(n20) );
  CLKNAND2X2M U8 ( .A(g2), .B(n18), .Y(n13) );
  XNOR3X2M U10 ( .A(n18), .B(g2), .C(n12), .Y(c2) );
  OAI211X2M U7 ( .A0(g2), .A1(n18), .B0(n13), .C0(p3), .Y(n14) );
  AND3X4M U3 ( .A(p1), .B(c0), .C(p2), .Y(n18) );
  XNOR3X1M U5 ( .A(n16), .B(g3), .C(n14), .Y(c3) );
  XNOR2XLM U6 ( .A(g1), .B(n11), .Y(c1) );
  NAND2XLM U9 ( .A(c0), .B(p1), .Y(n11) );
  NAND2XLM U11 ( .A(p2), .B(g1), .Y(n12) );
  AND3X1M U12 ( .A(p2), .B(p3), .C(g1), .Y(n16) );
  OAI21XLM U13 ( .A0(n16), .A1(g3), .B0(p4), .Y(n15) );
  OAI211XLM U14 ( .A0(n18), .A1(g2), .B0(p4), .C0(p3), .Y(n17) );
endmodule


module adder_cla4_3 ( a, b, ci, Gm, Pm, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input ci;
  output Gm, Pm;
  wire   c1, c2, c3, p1, p2, p3, p4, g1, g2, g3, g4, n4, n5, n6, n7;

  INVXLM U1 ( .A(n7), .Y(g4) );
  CLKNAND2X2M U5 ( .A(b[3]), .B(a[3]), .Y(n7) );
  adder_12 adder_u0 ( .a(a[0]), .b(b[0]), .ci(ci), .sum(sum[0]) );
  adder_11 adder_u1 ( .a(a[1]), .b(b[1]), .ci(c1), .sum(sum[1]) );
  adder_10 adder_u2 ( .a(a[2]), .b(b[2]), .ci(c2), .sum(sum[2]) );
  adder_9 adder_u3 ( .a(a[3]), .b(b[3]), .ci(c3), .sum(sum[3]) );
  cla_3 cla ( .c0(ci), .c1(c1), .c2(c2), .c3(c3), .p1(p1), .p2(p2), .p3(p3), 
        .p4(n4), .g1(g1), .g2(g2), .g3(g3), .g4(g4) );
  AND2X4M U7 ( .A(b[2]), .B(a[2]), .Y(g3) );
  XOR2X2M U3 ( .A(b[0]), .B(a[0]), .Y(p1) );
  AND2X2M U13 ( .A(b[0]), .B(a[0]), .Y(g1) );
  NOR2BX2M U2 ( .AN(p1), .B(n6), .Y(Pm) );
  CLKAND2X6M U4 ( .A(b[1]), .B(a[1]), .Y(g2) );
  XOR2X4M U6 ( .A(b[1]), .B(a[1]), .Y(p2) );
  XOR2X4M U8 ( .A(a[3]), .B(b[3]), .Y(p4) );
  XOR2X8M U9 ( .A(a[3]), .B(b[3]), .Y(n4) );
  OAI2B11X4M U10 ( .A1N(g1), .A0(n6), .B0(n5), .C0(n7), .Y(Gm) );
  NAND3X6M U11 ( .A(n4), .B(p3), .C(p2), .Y(n6) );
  AOI32X4M U12 ( .A0(p3), .A1(p4), .A2(g2), .B0(g3), .B1(n4), .Y(n5) );
  XOR2X8M U14 ( .A(b[2]), .B(a[2]), .Y(p3) );
endmodule


module adder_8 ( a, b, ci, sum );
  input a, b, ci;
  output sum;


  XOR3XLM U1 ( .A(a), .B(ci), .C(b), .Y(sum) );
endmodule


module adder_7 ( a, b, ci, sum );
  input a, b, ci;
  output sum;


  XOR3X2M U1 ( .A(a), .B(ci), .C(b), .Y(sum) );
endmodule


module adder_6 ( a, b, ci, sum );
  input a, b, ci;
  output sum;
  wire   n1;

  XOR2XLM U1 ( .A(b), .B(a), .Y(n1) );
  XOR2X1M U2 ( .A(ci), .B(n1), .Y(sum) );
endmodule


module adder_5 ( a, b, ci, sum );
  input a, b, ci;
  output sum;
  wire   n1;

  XOR2X2M U1 ( .A(ci), .B(n1), .Y(sum) );
  XOR2X2M U2 ( .A(b), .B(a), .Y(n1) );
endmodule


module cla_2 ( c0, c1, c2, c3, c4, p1, p2, p3, p4, g1, g2, g3, g4 );
  input c0, p1, p2, p3, p4, g1, g2, g3, g4;
  output c1, c2, c3, c4;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XOR3XLM U1 ( .A(g4), .B(n20), .C(n19), .Y(c4) );
  AOI21XLM U2 ( .A0(n18), .A1(g2), .B0(n17), .Y(n19) );
  OAI211XLM U3 ( .A0(n18), .A1(g2), .B0(p4), .C0(p3), .Y(n17) );
  AOI21XLM U4 ( .A0(n16), .A1(g3), .B0(n15), .Y(n20) );
  OAI21XLM U5 ( .A0(n16), .A1(g3), .B0(p4), .Y(n15) );
  AND3X2M U9 ( .A(p2), .B(p3), .C(g1), .Y(n16) );
  XNOR2X1M U13 ( .A(g1), .B(n11), .Y(c1) );
  XNOR3X2M U6 ( .A(n16), .B(g3), .C(n14), .Y(c3) );
  OAI211X2M U7 ( .A0(g2), .A1(n18), .B0(n13), .C0(p3), .Y(n14) );
  CLKNAND2X2M U8 ( .A(g2), .B(n18), .Y(n13) );
  NAND2XLM U10 ( .A(p2), .B(g1), .Y(n12) );
  AND3X6M U11 ( .A(c0), .B(p1), .C(p2), .Y(n18) );
  XNOR3X2M U12 ( .A(n18), .B(g2), .C(n12), .Y(c2) );
  NAND2XLM U14 ( .A(c0), .B(p1), .Y(n11) );
endmodule


module adder_cla4_2 ( a, b, ci, Gm, Pm, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input ci;
  output Gm, Pm;
  wire   c1, c2, c3, p1, p2, p3, p4, g1, g2, g3, g4, n4, n5, n6, n7;

  INVXLM U1 ( .A(n7), .Y(g4) );
  CLKNAND2X2M U5 ( .A(b[3]), .B(a[3]), .Y(n7) );
  AOI32X1M U6 ( .A0(p3), .A1(p4), .A2(g2), .B0(g3), .B1(p4), .Y(n5) );
  adder_8 adder_u0 ( .a(a[0]), .b(b[0]), .ci(ci), .sum(sum[0]) );
  adder_7 adder_u1 ( .a(a[1]), .b(b[1]), .ci(c1), .sum(sum[1]) );
  adder_6 adder_u2 ( .a(a[2]), .b(b[2]), .ci(c2), .sum(sum[2]) );
  adder_5 adder_u3 ( .a(a[3]), .b(b[3]), .ci(c3), .sum(sum[3]) );
  cla_2 cla ( .c0(ci), .c1(c1), .c2(c2), .c3(c3), .p1(p1), .p2(p2), .p3(p3), 
        .p4(p4), .g1(g1), .g2(g2), .g3(g3), .g4(g4) );
  XOR2X2M U10 ( .A(b[1]), .B(a[1]), .Y(p2) );
  AND2X4M U8 ( .A(b[1]), .B(a[1]), .Y(g2) );
  XOR2X4M U11 ( .A(b[2]), .B(a[2]), .Y(p3) );
  OAI2B11X4M U4 ( .A1N(g1), .A0(n6), .B0(n5), .C0(n7), .Y(Gm) );
  XOR2X2M U3 ( .A(b[0]), .B(a[0]), .Y(p1) );
  AND2X2M U7 ( .A(b[2]), .B(a[2]), .Y(g3) );
  CLKAND2X2M U13 ( .A(b[0]), .B(a[0]), .Y(g1) );
  NOR2X2M U2 ( .A(n6), .B(n4), .Y(Pm) );
  XOR2X2M U9 ( .A(b[3]), .B(a[3]), .Y(p4) );
  INVXLM U12 ( .A(p1), .Y(n4) );
  NAND3X4M U14 ( .A(p4), .B(p3), .C(p2), .Y(n6) );
endmodule


module adder_4 ( a, b, ci, sum );
  input a, b, ci;
  output sum;


  XOR3XLM U1 ( .A(a), .B(ci), .C(b), .Y(sum) );
endmodule


module adder_3 ( a, b, ci, sum );
  input a, b, ci;
  output sum;
  wire   n1;

  XOR2X2M U1 ( .A(ci), .B(n1), .Y(sum) );
  XOR2X2M U2 ( .A(b), .B(a), .Y(n1) );
endmodule


module adder_2 ( a, b, ci, sum );
  input a, b, ci;
  output sum;
  wire   n1;

  XOR2X2M U1 ( .A(ci), .B(n1), .Y(sum) );
  XOR2XLM U2 ( .A(b), .B(a), .Y(n1) );
endmodule


module adder_1 ( a, b, ci, sum );
  input a, b, ci;
  output sum;
  wire   n1, n2;

  XOR2XLM U1 ( .A(n2), .B(b), .Y(n1) );
  XNOR2X2M U2 ( .A(ci), .B(n1), .Y(sum) );
  INVXLM U3 ( .A(a), .Y(n2) );
endmodule


module cla_1 ( c0, c1, c2, c3, c4, p1, p2, p3, p4, g1, g2, g3, g4 );
  input c0, p1, p2, p3, p4, g1, g2, g3, g4;
  output c1, c2, c3, c4;
  wire   n7, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27;

  XOR3XLM U1 ( .A(g4), .B(n27), .C(n26), .Y(c4) );
  AOI21XLM U4 ( .A0(n23), .A1(g3), .B0(n22), .Y(n27) );
  OAI21XLM U5 ( .A0(n23), .A1(g3), .B0(p4), .Y(n22) );
  CLKNAND2X2M U11 ( .A(p2), .B(g1), .Y(n20) );
  XNOR2X2M U13 ( .A(g1), .B(n19), .Y(c1) );
  XOR2X1M U2 ( .A(n13), .B(n15), .Y(c2) );
  XNOR2X2M U3 ( .A(n20), .B(g2), .Y(n15) );
  NAND2X2M U6 ( .A(n12), .B(p1), .Y(n19) );
  AND2X2M U7 ( .A(p1), .B(p2), .Y(n16) );
  AND3XLM U8 ( .A(p2), .B(p3), .C(g1), .Y(n23) );
  BUFX2M U9 ( .A(n7), .Y(n13) );
  NAND2X4M U10 ( .A(n7), .B(g2), .Y(n21) );
  CLKINVX8M U12 ( .A(n11), .Y(n7) );
  INVX2M U14 ( .A(n11), .Y(n25) );
  INVXLM U15 ( .A(g2), .Y(n14) );
  NAND2X8M U16 ( .A(c0), .B(n16), .Y(n11) );
  BUFX2M U17 ( .A(c0), .Y(n12) );
  OAI2B11X4M U18 ( .A1N(n14), .A0(n25), .B0(n21), .C0(p3), .Y(n18) );
  XOR2X4M U19 ( .A(n18), .B(n17), .Y(c3) );
  XNOR2X8M U20 ( .A(n23), .B(g3), .Y(n17) );
  AOI21XLM U21 ( .A0(n13), .A1(g2), .B0(n24), .Y(n26) );
  OAI211XLM U22 ( .A0(n13), .A1(g2), .B0(p4), .C0(p3), .Y(n24) );
endmodule


module adder_cla4_1 ( a, b, ci, Gm, Pm, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input ci;
  output Gm, Pm;
  wire   c1, c2, c3, p1, p2, p3, p4, g1, g2, g3, g4, n4, n5, n6, n7, n8;

  INVXLM U1 ( .A(n8), .Y(g4) );
  NOR2BXLM U2 ( .AN(p1), .B(n7), .Y(Pm) );
  XOR2X1M U3 ( .A(b[0]), .B(a[0]), .Y(p1) );
  OAI2B11XLM U4 ( .A1N(g1), .A0(n7), .B0(n6), .C0(n8), .Y(Gm) );
  NAND2XLM U5 ( .A(b[3]), .B(a[3]), .Y(n8) );
  AOI32XLM U6 ( .A0(p3), .A1(p4), .A2(g2), .B0(g3), .B1(p4), .Y(n6) );
  AND2X1M U7 ( .A(b[2]), .B(a[2]), .Y(g3) );
  NAND3XLM U9 ( .A(p4), .B(p3), .C(p2), .Y(n7) );
  XOR2XLM U12 ( .A(b[3]), .B(a[3]), .Y(p4) );
  AND2X1M U13 ( .A(b[0]), .B(a[0]), .Y(g1) );
  adder_4 adder_u0 ( .a(a[0]), .b(b[0]), .ci(n5), .sum(sum[0]) );
  adder_3 adder_u1 ( .a(a[1]), .b(b[1]), .ci(c1), .sum(sum[1]) );
  adder_2 adder_u2 ( .a(a[2]), .b(b[2]), .ci(c2), .sum(sum[2]) );
  adder_1 adder_u3 ( .a(a[3]), .b(b[3]), .ci(c3), .sum(sum[3]) );
  cla_1 cla ( .c0(ci), .c1(c1), .c2(c2), .c3(c3), .p1(p1), .p2(p2), .p3(p3), 
        .p4(p4), .g1(g1), .g2(g2), .g3(g3), .g4(g4) );
  XOR2X2M U11 ( .A(b[2]), .B(a[2]), .Y(p3) );
  CLKAND2X12M U8 ( .A(b[1]), .B(a[1]), .Y(g2) );
  XOR2XLM U10 ( .A(b[1]), .B(a[1]), .Y(p2) );
  INVX1M U14 ( .A(ci), .Y(n4) );
  CLKINVX2M U15 ( .A(n4), .Y(n5) );
endmodule


module cla16 ( a_i, b_i, sum_o );
  input [15:0] a_i;
  input [15:0] b_i;
  output [16:0] sum_o;
  wire   Gm1, Gm2, Pm2, c8, Gm3, Pm3, c12, n1, n2, n3, n4, n5, n6, n7, n8;
  assign sum_o[15] = sum_o[16];

  adder_cla4_0 adder_4_u0 ( .a(a_i[3:0]), .b(b_i[3:0]), .ci(1'b0), .Gm(Gm1), 
        .sum(sum_o[3:0]) );
  adder_cla4_3 adder_4_u1 ( .a(a_i[7:4]), .b(b_i[7:4]), .ci(n8), .Gm(Gm2), 
        .Pm(Pm2), .sum(sum_o[7:4]) );
  adder_cla4_2 adder_4_u2 ( .a(a_i[11:8]), .b(b_i[11:8]), .ci(c8), .Gm(Gm3), 
        .Pm(Pm3), .sum(sum_o[11:8]) );
  adder_cla4_1 adder_4_u3 ( .a(a_i[15:12]), .b(b_i[15:12]), .ci(c12), .sum({
        sum_o[16], sum_o[14:12]}) );
  BUFX2M U2 ( .A(n4), .Y(n8) );
  INVX2M U3 ( .A(Pm3), .Y(n6) );
  INVXLM U4 ( .A(Gm1), .Y(n3) );
  INVXLM U5 ( .A(n3), .Y(n4) );
  XOR2X3M U6 ( .A(n1), .B(Gm2), .Y(c8) );
  INVX4M U7 ( .A(n5), .Y(n1) );
  NAND2X4M U8 ( .A(Gm1), .B(Pm2), .Y(n5) );
  NOR2X12M U9 ( .A(n7), .B(n6), .Y(n2) );
  XNOR2X8M U10 ( .A(n1), .B(Gm2), .Y(n7) );
  XOR2X8M U11 ( .A(n2), .B(Gm3), .Y(c12) );
endmodule


module top ( clk, rst_n, a, b, sum );
  input [15:0] a;
  input [15:0] b;
  output [16:0] sum;
  input clk, rst_n;

  wire   [15:0] a_r;
  wire   [15:0] b_r;
  wire   [16:0] sum_r;

  DFFRHQX8M a_r_reg_7_ ( .D(a[7]), .CK(clk), .RN(rst_n), .Q(a_r[7]) );
  DFFRHQX8M a_r_reg_6_ ( .D(a[6]), .CK(clk), .RN(rst_n), .Q(a_r[6]) );
  DFFRHQX8M a_r_reg_5_ ( .D(a[5]), .CK(clk), .RN(rst_n), .Q(a_r[5]) );
  DFFRHQX8M a_r_reg_3_ ( .D(a[3]), .CK(clk), .RN(rst_n), .Q(a_r[3]) );
  DFFRHQX8M a_r_reg_2_ ( .D(a[2]), .CK(clk), .RN(rst_n), .Q(a_r[2]) );
  DFFRHQX8M a_r_reg_1_ ( .D(a[1]), .CK(clk), .RN(rst_n), .Q(a_r[1]) );
  DFFRHQX8M b_r_reg_7_ ( .D(b[7]), .CK(clk), .RN(rst_n), .Q(b_r[7]) );
  DFFRHQX8M b_r_reg_5_ ( .D(b[5]), .CK(clk), .RN(rst_n), .Q(b_r[5]) );
  DFFRHQX8M b_r_reg_3_ ( .D(b[3]), .CK(clk), .RN(rst_n), .Q(b_r[3]) );
  DFFRHQX8M b_r_reg_1_ ( .D(b[1]), .CK(clk), .RN(rst_n), .Q(b_r[1]) );
  cla16 cla16_u0 ( .a_i(a_r), .b_i(b_r), .sum_o(sum_r) );
  DFFRHQX2M sum_reg_16_ ( .D(sum_r[16]), .CK(clk), .RN(rst_n), .Q(sum[16]) );
  DFFRHQX2M sum_reg_11_ ( .D(sum_r[11]), .CK(clk), .RN(rst_n), .Q(sum[11]) );
  DFFRHQX2M sum_reg_7_ ( .D(sum_r[7]), .CK(clk), .RN(rst_n), .Q(sum[7]) );
  DFFRQX4M sum_reg_0_ ( .D(sum_r[0]), .CK(clk), .RN(rst_n), .Q(sum[0]) );
  DFFRHQX2M sum_reg_10_ ( .D(sum_r[10]), .CK(clk), .RN(rst_n), .Q(sum[10]) );
  DFFRHQX2M sum_reg_13_ ( .D(sum_r[13]), .CK(clk), .RN(rst_n), .Q(sum[13]) );
  DFFRHQX2M sum_reg_14_ ( .D(sum_r[14]), .CK(clk), .RN(rst_n), .Q(sum[14]) );
  DFFRHQX2M sum_reg_15_ ( .D(sum_r[15]), .CK(clk), .RN(rst_n), .Q(sum[15]) );
  DFFRHQX4M b_r_reg_2_ ( .D(b[2]), .CK(clk), .RN(rst_n), .Q(b_r[2]) );
  DFFRHQX4M b_r_reg_6_ ( .D(b[6]), .CK(clk), .RN(rst_n), .Q(b_r[6]) );
  DFFRHQX1M b_r_reg_0_ ( .D(b[0]), .CK(clk), .RN(rst_n), .Q(b_r[0]) );
  DFFRHQX2M b_r_reg_4_ ( .D(b[4]), .CK(clk), .RN(rst_n), .Q(b_r[4]) );
  DFFRHQX1M a_r_reg_0_ ( .D(a[0]), .CK(clk), .RN(rst_n), .Q(a_r[0]) );
  DFFRHQX1M b_r_reg_9_ ( .D(b[9]), .CK(clk), .RN(rst_n), .Q(b_r[9]) );
  DFFRHQX1M b_r_reg_8_ ( .D(b[8]), .CK(clk), .RN(rst_n), .Q(b_r[8]) );
  DFFRHQX1M a_r_reg_8_ ( .D(a[8]), .CK(clk), .RN(rst_n), .Q(a_r[8]) );
  DFFRHQX2M a_r_reg_9_ ( .D(a[9]), .CK(clk), .RN(rst_n), .Q(a_r[9]) );
  DFFRHQX2M a_r_reg_10_ ( .D(a[10]), .CK(clk), .RN(rst_n), .Q(a_r[10]) );
  DFFRQX2M a_r_reg_12_ ( .D(a[12]), .CK(clk), .RN(rst_n), .Q(a_r[12]) );
  DFFRQX2M b_r_reg_12_ ( .D(b[12]), .CK(clk), .RN(rst_n), .Q(b_r[12]) );
  DFFRQX2M a_r_reg_14_ ( .D(a[14]), .CK(clk), .RN(rst_n), .Q(a_r[14]) );
  DFFRQX2M b_r_reg_14_ ( .D(b[14]), .CK(clk), .RN(rst_n), .Q(b_r[14]) );
  DFFRQX2M a_r_reg_15_ ( .D(a[15]), .CK(clk), .RN(rst_n), .Q(a_r[15]) );
  DFFRQX2M b_r_reg_15_ ( .D(b[15]), .CK(clk), .RN(rst_n), .Q(b_r[15]) );
  DFFRQX4M sum_reg_1_ ( .D(sum_r[1]), .CK(clk), .RN(rst_n), .Q(sum[1]) );
  DFFRQX4M sum_reg_12_ ( .D(sum_r[12]), .CK(clk), .RN(rst_n), .Q(sum[12]) );
  DFFRQX4M sum_reg_5_ ( .D(sum_r[5]), .CK(clk), .RN(rst_n), .Q(sum[5]) );
  DFFRQX4M sum_reg_3_ ( .D(sum_r[3]), .CK(clk), .RN(rst_n), .Q(sum[3]) );
  DFFRQX4M sum_reg_2_ ( .D(sum_r[2]), .CK(clk), .RN(rst_n), .Q(sum[2]) );
  DFFRQX4M sum_reg_4_ ( .D(sum_r[4]), .CK(clk), .RN(rst_n), .Q(sum[4]) );
  DFFRQX4M sum_reg_8_ ( .D(sum_r[8]), .CK(clk), .RN(rst_n), .Q(sum[8]) );
  DFFRQX4M sum_reg_9_ ( .D(sum_r[9]), .CK(clk), .RN(rst_n), .Q(sum[9]) );
  DFFRHQX2M a_r_reg_4_ ( .D(a[4]), .CK(clk), .RN(rst_n), .Q(a_r[4]) );
  DFFRHQX4M a_r_reg_11_ ( .D(a[11]), .CK(clk), .RN(rst_n), .Q(a_r[11]) );
  DFFRHQX2M b_r_reg_11_ ( .D(b[11]), .CK(clk), .RN(rst_n), .Q(b_r[11]) );
  DFFRHQX1M b_r_reg_10_ ( .D(b[10]), .CK(clk), .RN(rst_n), .Q(b_r[10]) );
  DFFRHQX1M a_r_reg_13_ ( .D(a[13]), .CK(clk), .RN(rst_n), .Q(a_r[13]) );
  DFFRQX2M b_r_reg_13_ ( .D(b[13]), .CK(clk), .RN(rst_n), .Q(b_r[13]) );
  DFFRQX4M sum_reg_6_ ( .D(sum_r[6]), .CK(clk), .RN(rst_n), .Q(sum[6]) );
endmodule

