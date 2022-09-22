/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Wed Sep 21 18:28:02 2022
/////////////////////////////////////////////////////////////


module check_sequence_1 ( clk, rst_n, din, result );
  input clk, rst_n, din;
  output result;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [2:0] state;
  wire   [2:0] next_state;

  OAI32X1M U4 ( .A0(din), .A1(n3), .A2(n4), .B0(n5), .B1(din), .Y(
        next_state[2]) );
  OAI32X1M U5 ( .A0(din), .A1(n3), .A2(n5), .B0(n6), .B1(n7), .Y(next_state[1]) );
  CLKINVX1M U6 ( .A(din), .Y(n7) );
  OAI211X1M U7 ( .A0(state[0]), .A1(state[1]), .B0(n8), .C0(n2), .Y(n6) );
  CLKINVX1M U9 ( .A(state[0]), .Y(n3) );
  AOI31X1M U10 ( .A0(n4), .A1(n5), .A2(state[0]), .B0(n9), .Y(next_state[0])
         );
  AOI2BB1X1M U11 ( .A0N(n5), .A1N(state[0]), .B0(din), .Y(n9) );
  CLKINVX1M U13 ( .A(state[1]), .Y(n1) );
  CLKNAND2X2M U14 ( .A(state[1]), .B(n2), .Y(n4) );
  DFFRHQX4M state_reg_1_ ( .D(next_state[1]), .CK(clk), .RN(rst_n), .Q(
        state[1]) );
  DFFRHQX4M state_reg_2_ ( .D(next_state[2]), .CK(clk), .RN(rst_n), .Q(
        state[2]) );
  DFFRHQX2M state_reg_0_ ( .D(next_state[0]), .CK(clk), .RN(rst_n), .Q(
        state[0]) );
  NAND2XLM U3 ( .A(state[0]), .B(state[1]), .Y(n8) );
  CLKINVX2M U8 ( .A(state[2]), .Y(n2) );
  NOR3X4M U12 ( .A(state[0]), .B(n1), .C(n2), .Y(result) );
  NAND2XLM U15 ( .A(state[2]), .B(n1), .Y(n5) );
endmodule


module check_sequence_2 ( clk, rst_n, din, result );
  input clk, rst_n, din;
  output result;
  wire   n1, n2, n3, n4;
  wire   [2:0] state;
  wire   [2:0] next_state;

  DFFRHQX8M state_reg_0_ ( .D(next_state[0]), .CK(clk), .RN(rst_n), .Q(
        state[0]) );
  OAI22X1M U4 ( .A0(state[1]), .A1(n2), .B0(n3), .B1(n1), .Y(next_state[2]) );
  OAI221X1M U5 ( .A0(state[0]), .A1(din), .B0(n1), .B1(n4), .C0(state[2]), .Y(
        n2) );
  OAI32X1M U6 ( .A0(n1), .A1(state[1]), .A2(din), .B0(state[0]), .B1(n3), .Y(
        next_state[1]) );
  NAND3BX1M U7 ( .AN(state[2]), .B(din), .C(state[1]), .Y(n3) );
  CLKINVX1M U8 ( .A(state[0]), .Y(n1) );
  AOI21X1M U9 ( .A0(state[0]), .A1(state[1]), .B0(n4), .Y(next_state[0]) );
  CLKINVX1M U10 ( .A(din), .Y(n4) );
  DFFRHQX1M state_reg_1_ ( .D(next_state[1]), .CK(clk), .RN(rst_n), .Q(
        state[1]) );
  DFFRHQX1M state_reg_2_ ( .D(next_state[2]), .CK(clk), .RN(rst_n), .Q(
        state[2]) );
  AND3X2M U3 ( .A(state[1]), .B(state[2]), .C(n1), .Y(result) );
endmodule


module top ( clk, rst_n, din, result );
  input clk, rst_n, din;
  output result;
  wire   result_1, result_2;

  OR2X12M C7 ( .A(result_1), .B(result_2), .Y(result) );
  check_sequence_1 check_sequence_1_1 ( .clk(clk), .rst_n(rst_n), .din(din), 
        .result(result_1) );
  check_sequence_2 check_sequence_2_1 ( .clk(clk), .rst_n(rst_n), .din(din), 
        .result(result_2) );
endmodule

