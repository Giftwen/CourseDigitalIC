/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Tue Oct  4 15:25:34 2022
/////////////////////////////////////////////////////////////


module top ( data_in, clk, rst, pos_out );
  input [31:0] data_in;
  output [5:0] pos_out;
  input clk, rst;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30,
         N31, N32, N33, N34, N35, N36, N37, N38, N39, N40;
  tri   [31:0] data_in_r;
  tri   [5:0] pos_out_r;

  AND2X1M U3 ( .A(N2), .B(data_in[0]), .Y(N9) );
  AND2X1M U4 ( .A(N2), .B(pos_out_r[5]), .Y(N8) );
  AND2X1M U5 ( .A(N2), .B(pos_out_r[4]), .Y(N7) );
  AND2X1M U6 ( .A(N2), .B(pos_out_r[3]), .Y(N6) );
  AND2X1M U7 ( .A(N2), .B(pos_out_r[2]), .Y(N5) );
  AND2X1M U8 ( .A(N2), .B(data_in[31]), .Y(N40) );
  AND2X1M U9 ( .A(N2), .B(pos_out_r[1]), .Y(N4) );
  AND2X1M U10 ( .A(N2), .B(data_in[30]), .Y(N39) );
  AND2X1M U11 ( .A(N2), .B(data_in[29]), .Y(N38) );
  AND2X1M U12 ( .A(N2), .B(data_in[28]), .Y(N37) );
  AND2X1M U13 ( .A(N2), .B(data_in[27]), .Y(N36) );
  AND2X1M U14 ( .A(N2), .B(data_in[26]), .Y(N35) );
  AND2X1M U15 ( .A(N2), .B(data_in[25]), .Y(N34) );
  AND2X1M U16 ( .A(N2), .B(data_in[24]), .Y(N33) );
  AND2X1M U17 ( .A(N2), .B(data_in[23]), .Y(N32) );
  AND2X1M U18 ( .A(N2), .B(data_in[22]), .Y(N31) );
  AND2X1M U19 ( .A(N2), .B(data_in[21]), .Y(N30) );
  AND2X1M U20 ( .A(N2), .B(pos_out_r[0]), .Y(N3) );
  AND2X1M U21 ( .A(N2), .B(data_in[20]), .Y(N29) );
  AND2X1M U22 ( .A(N2), .B(data_in[19]), .Y(N28) );
  AND2X1M U23 ( .A(N2), .B(data_in[18]), .Y(N27) );
  AND2X1M U24 ( .A(N2), .B(data_in[17]), .Y(N26) );
  AND2X1M U25 ( .A(N2), .B(data_in[16]), .Y(N25) );
  AND2X1M U26 ( .A(N2), .B(data_in[15]), .Y(N24) );
  AND2X1M U27 ( .A(N2), .B(data_in[14]), .Y(N23) );
  AND2X1M U28 ( .A(N2), .B(data_in[13]), .Y(N22) );
  AND2X1M U29 ( .A(N2), .B(data_in[12]), .Y(N21) );
  AND2X1M U30 ( .A(N2), .B(data_in[11]), .Y(N20) );
  AND2X1M U31 ( .A(N2), .B(data_in[10]), .Y(N19) );
  AND2X1M U32 ( .A(N2), .B(data_in[9]), .Y(N18) );
  AND2X1M U33 ( .A(N2), .B(data_in[8]), .Y(N17) );
  AND2X1M U34 ( .A(N2), .B(data_in[7]), .Y(N16) );
  AND2X1M U35 ( .A(N2), .B(data_in[6]), .Y(N15) );
  AND2X1M U36 ( .A(N2), .B(data_in[5]), .Y(N14) );
  AND2X1M U37 ( .A(N2), .B(data_in[4]), .Y(N13) );
  AND2X1M U38 ( .A(N2), .B(data_in[3]), .Y(N12) );
  AND2X1M U39 ( .A(N2), .B(data_in[2]), .Y(N11) );
  AND2X1M U40 ( .A(N2), .B(data_in[1]), .Y(N10) );
  VectorDetector_m2 VectorDetector_m2_u0 ( .data_in(data_in_r), .pos_out(
        pos_out_r) );
  DFFQX1M data_in_r_reg_31_ ( .D(N40), .CK(clk), .Q(data_in_r[31]) );
  DFFQX1M data_in_r_reg_30_ ( .D(N39), .CK(clk), .Q(data_in_r[30]) );
  DFFQX1M data_in_r_reg_29_ ( .D(N38), .CK(clk), .Q(data_in_r[29]) );
  DFFQX1M data_in_r_reg_28_ ( .D(N37), .CK(clk), .Q(data_in_r[28]) );
  DFFQX1M data_in_r_reg_27_ ( .D(N36), .CK(clk), .Q(data_in_r[27]) );
  DFFQX1M data_in_r_reg_26_ ( .D(N35), .CK(clk), .Q(data_in_r[26]) );
  DFFQX1M data_in_r_reg_25_ ( .D(N34), .CK(clk), .Q(data_in_r[25]) );
  DFFQX1M data_in_r_reg_24_ ( .D(N33), .CK(clk), .Q(data_in_r[24]) );
  DFFQX1M data_in_r_reg_23_ ( .D(N32), .CK(clk), .Q(data_in_r[23]) );
  DFFQX1M data_in_r_reg_22_ ( .D(N31), .CK(clk), .Q(data_in_r[22]) );
  DFFQX1M data_in_r_reg_21_ ( .D(N30), .CK(clk), .Q(data_in_r[21]) );
  DFFQX1M data_in_r_reg_20_ ( .D(N29), .CK(clk), .Q(data_in_r[20]) );
  DFFQX1M data_in_r_reg_19_ ( .D(N28), .CK(clk), .Q(data_in_r[19]) );
  DFFQX1M data_in_r_reg_18_ ( .D(N27), .CK(clk), .Q(data_in_r[18]) );
  DFFQX1M data_in_r_reg_17_ ( .D(N26), .CK(clk), .Q(data_in_r[17]) );
  DFFQX1M data_in_r_reg_16_ ( .D(N25), .CK(clk), .Q(data_in_r[16]) );
  DFFQX1M data_in_r_reg_15_ ( .D(N24), .CK(clk), .Q(data_in_r[15]) );
  DFFQX1M data_in_r_reg_14_ ( .D(N23), .CK(clk), .Q(data_in_r[14]) );
  DFFQX1M data_in_r_reg_13_ ( .D(N22), .CK(clk), .Q(data_in_r[13]) );
  DFFQX1M data_in_r_reg_12_ ( .D(N21), .CK(clk), .Q(data_in_r[12]) );
  DFFQX1M data_in_r_reg_11_ ( .D(N20), .CK(clk), .Q(data_in_r[11]) );
  DFFQX1M data_in_r_reg_10_ ( .D(N19), .CK(clk), .Q(data_in_r[10]) );
  DFFQX1M data_in_r_reg_9_ ( .D(N18), .CK(clk), .Q(data_in_r[9]) );
  DFFQX1M data_in_r_reg_8_ ( .D(N17), .CK(clk), .Q(data_in_r[8]) );
  DFFQX1M data_in_r_reg_7_ ( .D(N16), .CK(clk), .Q(data_in_r[7]) );
  DFFQX1M data_in_r_reg_6_ ( .D(N15), .CK(clk), .Q(data_in_r[6]) );
  DFFQX1M data_in_r_reg_5_ ( .D(N14), .CK(clk), .Q(data_in_r[5]) );
  DFFQX1M data_in_r_reg_4_ ( .D(N13), .CK(clk), .Q(data_in_r[4]) );
  DFFQX1M data_in_r_reg_3_ ( .D(N12), .CK(clk), .Q(data_in_r[3]) );
  DFFQX1M data_in_r_reg_2_ ( .D(N11), .CK(clk), .Q(data_in_r[2]) );
  DFFQX1M data_in_r_reg_1_ ( .D(N10), .CK(clk), .Q(data_in_r[1]) );
  DFFQX1M data_in_r_reg_0_ ( .D(N9), .CK(clk), .Q(data_in_r[0]) );
  DFFQX4M pos_out_reg_5_ ( .D(N8), .CK(clk), .Q(pos_out[5]) );
  DFFQX4M pos_out_reg_0_ ( .D(N3), .CK(clk), .Q(pos_out[0]) );
  DFFQX4M pos_out_reg_1_ ( .D(N4), .CK(clk), .Q(pos_out[1]) );
  DFFQX4M pos_out_reg_2_ ( .D(N5), .CK(clk), .Q(pos_out[2]) );
  DFFQX4M pos_out_reg_3_ ( .D(N6), .CK(clk), .Q(pos_out[3]) );
  DFFQX4M pos_out_reg_4_ ( .D(N7), .CK(clk), .Q(pos_out[4]) );
  INVXLM U41 ( .A(rst), .Y(N2) );
endmodule

