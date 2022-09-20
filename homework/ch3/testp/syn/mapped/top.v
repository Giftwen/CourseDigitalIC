/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Sun Sep 18 17:18:08 2022
/////////////////////////////////////////////////////////////


module top ( clk, rst, d, q );
  input clk, rst, d;
  output q;
  wire   N2, N3;

  INVXLM I_0 ( .A(rst), .Y(N2) );
  AND2X1M U3 ( .A(N2), .B(d), .Y(N3) );
  DFFQX1M q_reg ( .D(N3), .CK(clk), .Q(q) );
endmodule

