/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Fri Sep 30 16:32:18 2022
/////////////////////////////////////////////////////////////


module top ( clk, rst, in1, in2, out1, out2 );
  output [1:0] out1;
  output [1:0] out2;
  input clk, rst, in1, in2;
  wire   N3;
  wire   [1:0] outr1;

  INVX2M add_x_1_U3 ( .A(outr1[0]), .Y(outr1[0]) );
  ADDHX1M add_x_1_U2 ( .A(outr1[1]), .B(outr1[0]), .S(N3) );
  OR2X1M U3 ( .A(outr1[0]), .B(N3), .Y(outr1[1]) );
  DFFRQX1M out1_reg_0_ ( .D(outr1[0]), .CK(clk), .RN(rst), .Q(out1[0]) );
  DFFRQX1M out1_reg_1_ ( .D(outr1[1]), .CK(clk), .RN(rst), .Q(out1[1]) );
endmodule

