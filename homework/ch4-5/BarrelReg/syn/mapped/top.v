/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Sun Oct 23 23:02:29 2022
/////////////////////////////////////////////////////////////


module barrel ( data_out, data_in, dir, sh );
  output [31:0] data_out;
  input [31:0] data_in;
  input [4:0] sh;
  input dir;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408;

  OAI2B11XLM U1 ( .A1N(data_in[25]), .A0(n1), .B0(n2), .C0(n3), .Y(data_out[9]) );
  AOI22X1M U2 ( .A0(n4), .A1(n5), .B0(n6), .B1(n7), .Y(n3) );
  AOI21X1M U3 ( .A0(n8), .A1(n9), .B0(n10), .Y(n2) );
  OAI222X1M U4 ( .A0(n11), .A1(n12), .B0(n13), .B1(n14), .C0(n15), .C1(n16), 
        .Y(n10) );
  OAI2B11XLM U5 ( .A1N(data_in[24]), .A0(n1), .B0(n17), .C0(n18), .Y(
        data_out[8]) );
  AOI22X1M U6 ( .A0(n4), .A1(n19), .B0(n6), .B1(n20), .Y(n18) );
  AOI21X1M U7 ( .A0(n8), .A1(n21), .B0(n22), .Y(n17) );
  OAI222X1M U8 ( .A0(n23), .A1(n12), .B0(n24), .B1(n14), .C0(n25), .C1(n16), 
        .Y(n22) );
  OAI21X1M U9 ( .A0(n26), .A1(n14), .B0(n27), .Y(data_out[7]) );
  AOI21X1M U10 ( .A0(n28), .A1(n29), .B0(n30), .Y(n27) );
  OAI211X1M U11 ( .A0(n31), .A1(n32), .B0(n33), .C0(n34), .Y(n30) );
  AOI22X1M U12 ( .A0(data_in[23]), .A1(n35), .B0(n4), .B1(n36), .Y(n34) );
  OAI21X1M U14 ( .A0(n40), .A1(n14), .B0(n41), .Y(data_out[6]) );
  AOI21X1M U15 ( .A0(n28), .A1(n42), .B0(n43), .Y(n41) );
  OAI211X1M U16 ( .A0(n44), .A1(n32), .B0(n45), .C0(n46), .Y(n43) );
  AOI22X1M U18 ( .A0(n37), .A1(n48), .B0(n8), .B1(n49), .Y(n45) );
  CLKNAND2X2M U19 ( .A(n50), .B(n51), .Y(data_out[5]) );
  AOI211X1M U20 ( .A0(n4), .A1(n52), .B0(n53), .C0(n54), .Y(n51) );
  OAI22X1M U21 ( .A0(n55), .A1(n14), .B0(n56), .B1(n12), .Y(n54) );
  OAI2BB2X1M U22 ( .B0(n15), .B1(n32), .A0N(data_in[21]), .A1N(n35), .Y(n53)
         );
  AOI22X1M U23 ( .A0(n37), .A1(n5), .B0(n8), .B1(n7), .Y(n50) );
  CLKNAND2X2M U24 ( .A(n57), .B(n58), .Y(data_out[4]) );
  AOI211X1M U25 ( .A0(n4), .A1(n59), .B0(n60), .C0(n61), .Y(n58) );
  OAI22X1M U26 ( .A0(n62), .A1(n14), .B0(n63), .B1(n12), .Y(n61) );
  AOI22X1M U28 ( .A0(n37), .A1(n19), .B0(n8), .B1(n20), .Y(n57) );
  AOI211X1M U30 ( .A0(n68), .A1(n38), .B0(n69), .C0(n70), .Y(n67) );
  OAI21X1M U31 ( .A0(n31), .A1(n71), .B0(n72), .Y(n70) );
  AOI22X1M U32 ( .A0(sh[4]), .A1(n73), .B0(n74), .B1(n36), .Y(n72) );
  NAND4X1M U33 ( .A(n75), .B(n76), .C(n77), .D(n78), .Y(n36) );
  AOI31X1M U34 ( .A0(n79), .A1(n80), .A2(n81), .B0(n82), .Y(n69) );
  AOI22XLM U35 ( .A0(n83), .A1(data_in[3]), .B0(n84), .B1(data_in[4]), .Y(n79)
         );
  INVXLM U36 ( .A(data_in[19]), .Y(n64) );
  OAI222X1M U37 ( .A0(dir), .A1(n85), .B0(n86), .B1(n87), .C0(n88), .C1(n12), 
        .Y(data_out[31]) );
  INVXLM U38 ( .A(data_in[15]), .Y(n88) );
  AOI21X1M U39 ( .A0(n68), .A1(n89), .B0(n90), .Y(n85) );
  OAI221X1M U40 ( .A0(n91), .A1(n71), .B0(n82), .B1(n92), .C0(n93), .Y(n90) );
  AOI22X1M U41 ( .A0(sh[4]), .A1(n94), .B0(n74), .B1(n95), .Y(n93) );
  AOI221X1M U42 ( .A0(n96), .A1(data_in[29]), .B0(n83), .B1(data_in[31]), .C0(
        n97), .Y(n92) );
  OAI21XLM U43 ( .A0(n98), .A1(n99), .B0(n100), .Y(n97) );
  OAI222X1M U44 ( .A0(n101), .A1(n12), .B0(dir), .B1(n102), .C0(n86), .C1(n103), .Y(data_out[30]) );
  AOI211X1M U45 ( .A0(n68), .A1(n104), .B0(n105), .C0(n106), .Y(n102) );
  OAI21X1M U46 ( .A0(n107), .A1(n71), .B0(n108), .Y(n106) );
  AOI22X1M U47 ( .A0(sh[4]), .A1(n109), .B0(n74), .B1(n110), .Y(n108) );
  AOI31X1M U48 ( .A0(n111), .A1(n112), .A2(n113), .B0(n82), .Y(n105) );
  AOI22XLM U49 ( .A0(n96), .A1(data_in[28]), .B0(n83), .B1(data_in[30]), .Y(
        n111) );
  OAI222X1M U50 ( .A0(n14), .A1(n114), .B0(n66), .B1(n115), .C0(n1), .C1(n116), 
        .Y(data_out[2]) );
  INVXLM U51 ( .A(data_in[18]), .Y(n116) );
  AOI21X1M U52 ( .A0(n68), .A1(n48), .B0(n117), .Y(n115) );
  OAI221X1M U53 ( .A0(n44), .A1(n71), .B0(n82), .B1(n118), .C0(n119), .Y(n117)
         );
  AOI22X1M U54 ( .A0(sh[4]), .A1(n120), .B0(n74), .B1(n47), .Y(n119) );
  NAND4X1M U55 ( .A(n121), .B(n122), .C(n123), .D(n124), .Y(n47) );
  AOI221X1M U56 ( .A0(n96), .A1(data_in[4]), .B0(n83), .B1(data_in[2]), .C0(
        n125), .Y(n118) );
  OAI2BB1XLM U57 ( .A0N(n84), .A1N(data_in[3]), .B0(n126), .Y(n125) );
  OAI222X1M U58 ( .A0(n127), .A1(n12), .B0(dir), .B1(n128), .C0(n86), .C1(n129), .Y(data_out[29]) );
  AOI211X1M U59 ( .A0(n68), .A1(n130), .B0(n131), .C0(n132), .Y(n128) );
  OAI21X1M U60 ( .A0(n133), .A1(n71), .B0(n134), .Y(n132) );
  AOI22X1M U61 ( .A0(sh[4]), .A1(n135), .B0(n74), .B1(n136), .Y(n134) );
  AOI31X1M U62 ( .A0(n137), .A1(n138), .A2(n139), .B0(n82), .Y(n131) );
  AOI22XLM U63 ( .A0(data_in[26]), .A1(n140), .B0(n84), .B1(data_in[28]), .Y(
        n137) );
  AOI31X1M U68 ( .A0(n151), .A1(n152), .A2(n153), .B0(n82), .Y(n145) );
  AOI22XLM U69 ( .A0(data_in[27]), .A1(n84), .B0(n83), .B1(data_in[28]), .Y(
        n151) );
  INVXLM U70 ( .A(data_in[12]), .Y(n141) );
  CLKNAND2X2M U71 ( .A(n154), .B(n155), .Y(data_out[27]) );
  AOI211X1M U72 ( .A0(n156), .A1(n95), .B0(n157), .C0(n158), .Y(n155) );
  OAI22X1M U73 ( .A0(n159), .A1(n86), .B0(n160), .B1(n1), .Y(n158) );
  OAI2BB2X1M U74 ( .B0(n91), .B1(n161), .A0N(data_in[11]), .A1N(n28), .Y(n157)
         );
  NAND4X1M U75 ( .A(n162), .B(n163), .C(n164), .D(n165), .Y(n95) );
  AOI22X1M U76 ( .A0(n166), .A1(n89), .B0(n167), .B1(n168), .Y(n154) );
  CLKNAND2X2M U77 ( .A(n169), .B(n170), .Y(data_out[26]) );
  AOI211X1M U78 ( .A0(n156), .A1(n110), .B0(n171), .C0(n172), .Y(n170) );
  OAI22X1M U79 ( .A0(n173), .A1(n86), .B0(n174), .B1(n1), .Y(n172) );
  OAI2BB2X1M U80 ( .B0(n107), .B1(n161), .A0N(data_in[10]), .A1N(n28), .Y(n171) );
  NAND4X1M U81 ( .A(n175), .B(n176), .C(n177), .D(n178), .Y(n110) );
  NAND2XLM U82 ( .A(data_in[26]), .B(n83), .Y(n177) );
  OAI2B11XLM U84 ( .A1N(data_in[9]), .A0(n12), .B0(n180), .C0(n181), .Y(
        data_out[25]) );
  AOI22X1M U85 ( .A0(n166), .A1(n130), .B0(n167), .B1(n182), .Y(n181) );
  AOI21X1M U86 ( .A0(n156), .A1(n136), .B0(n183), .Y(n180) );
  OAI222X1M U87 ( .A0(n11), .A1(n86), .B0(n13), .B1(n1), .C0(n133), .C1(n161), 
        .Y(n183) );
  AOI221X1M U88 ( .A0(n184), .A1(n185), .B0(data_in[29]), .B1(n186), .C0(n187), 
        .Y(n13) );
  AO22X1M U89 ( .A0(n188), .A1(n189), .B0(n190), .B1(n191), .Y(n187) );
  AOI222XLM U90 ( .A0(n192), .A1(n190), .B0(sh[3]), .B1(data_in[1]), .C0(n193), 
        .C1(n188), .Y(n11) );
  NAND4X1M U91 ( .A(n194), .B(n195), .C(n196), .D(n197), .Y(n136) );
  OAI2B11XLM U92 ( .A1N(data_in[8]), .A0(n12), .B0(n198), .C0(n199), .Y(
        data_out[24]) );
  AOI22X1M U93 ( .A0(n166), .A1(n144), .B0(n167), .B1(n200), .Y(n199) );
  AOI21X1M U94 ( .A0(n156), .A1(n150), .B0(n201), .Y(n198) );
  OAI222X1M U95 ( .A0(n23), .A1(n86), .B0(n24), .B1(n1), .C0(n147), .C1(n161), 
        .Y(n201) );
  AOI221X1M U96 ( .A0(n184), .A1(n202), .B0(data_in[28]), .B1(n186), .C0(n203), 
        .Y(n24) );
  AOI222XLM U98 ( .A0(n206), .A1(n188), .B0(data_in[0]), .B1(sh[3]), .C0(n207), 
        .C1(n190), .Y(n23) );
  OAI21X1M U100 ( .A0(n26), .A1(n1), .B0(n212), .Y(data_out[23]) );
  AOI21X1M U101 ( .A0(n213), .A1(n29), .B0(n214), .Y(n212) );
  AOI22XLM U103 ( .A0(data_in[7]), .A1(n28), .B0(n167), .B1(n218), .Y(n217) );
  AOI22X1M U104 ( .A0(n156), .A1(n89), .B0(n219), .B1(n168), .Y(n216) );
  CLKNAND2X2M U106 ( .A(n224), .B(n225), .Y(n29) );
  AOI22X1M U107 ( .A0(n184), .A1(n226), .B0(n186), .B1(data_in[3]), .Y(n225)
         );
  AOI22X1M U108 ( .A0(n190), .A1(n227), .B0(n188), .B1(n228), .Y(n224) );
  AOI222XLM U109 ( .A0(n229), .A1(n190), .B0(data_in[31]), .B1(sh[3]), .C0(
        n230), .C1(n188), .Y(n26) );
  OAI21X1M U110 ( .A0(n40), .A1(n1), .B0(n231), .Y(data_out[22]) );
  AOI21X1M U111 ( .A0(n213), .A1(n42), .B0(n232), .Y(n231) );
  OAI211X1M U112 ( .A0(n107), .A1(n215), .B0(n233), .C0(n234), .Y(n232) );
  AOI22XLM U113 ( .A0(data_in[6]), .A1(n28), .B0(n167), .B1(n235), .Y(n234) );
  AOI22X1M U114 ( .A0(n156), .A1(n104), .B0(n219), .B1(n179), .Y(n233) );
  NAND4X1M U115 ( .A(n236), .B(n237), .C(n238), .D(n239), .Y(n104) );
  CLKNAND2X2M U116 ( .A(n240), .B(n241), .Y(n42) );
  AOI22X1M U117 ( .A0(n184), .A1(n242), .B0(n186), .B1(data_in[2]), .Y(n241)
         );
  AOI22X1M U118 ( .A0(n190), .A1(n243), .B0(n188), .B1(n244), .Y(n240) );
  AOI222XLM U119 ( .A0(n245), .A1(n190), .B0(data_in[30]), .B1(sh[3]), .C0(
        n246), .C1(n188), .Y(n40) );
  OAI2B11XLM U120 ( .A1N(data_in[5]), .A0(n12), .B0(n247), .C0(n248), .Y(
        data_out[21]) );
  AOI22X1M U121 ( .A0(n156), .A1(n130), .B0(n219), .B1(n182), .Y(n248) );
  NAND4X1M U122 ( .A(n249), .B(n250), .C(n251), .D(n252), .Y(n130) );
  OAI222X1M U124 ( .A0(n55), .A1(n1), .B0(n56), .B1(n86), .C0(n133), .C1(n215), 
        .Y(n253) );
  AOI221X1M U125 ( .A0(n184), .A1(n193), .B0(data_in[1]), .B1(n186), .C0(n254), 
        .Y(n56) );
  AO22X1M U126 ( .A0(n188), .A1(n192), .B0(n190), .B1(n9), .Y(n254) );
  AOI222XLM U127 ( .A0(n189), .A1(n190), .B0(data_in[29]), .B1(sh[3]), .C0(
        n185), .C1(n188), .Y(n55) );
  OAI2B11XLM U128 ( .A1N(data_in[4]), .A0(n12), .B0(n255), .C0(n256), .Y(
        data_out[20]) );
  AOI22X1M U129 ( .A0(n156), .A1(n144), .B0(n219), .B1(n200), .Y(n256) );
  NAND4X1M U130 ( .A(n257), .B(n258), .C(n259), .D(n260), .Y(n144) );
  AOI21X1M U131 ( .A0(n167), .A1(n205), .B0(n261), .Y(n255) );
  OAI222X1M U132 ( .A0(n62), .A1(n1), .B0(n63), .B1(n86), .C0(n147), .C1(n215), 
        .Y(n261) );
  CLKINVX1M U133 ( .A(n166), .Y(n215) );
  AOI221X1M U134 ( .A0(n184), .A1(n206), .B0(data_in[0]), .B1(n186), .C0(n262), 
        .Y(n63) );
  AO22X1M U135 ( .A0(n188), .A1(n207), .B0(n190), .B1(n21), .Y(n262) );
  AOI222XLM U136 ( .A0(n204), .A1(n190), .B0(data_in[28]), .B1(sh[3]), .C0(
        n202), .C1(n188), .Y(n62) );
  OAI222X1M U137 ( .A0(n14), .A1(n263), .B0(n66), .B1(n264), .C0(n1), .C1(n265), .Y(data_out[1]) );
  INVXLM U138 ( .A(data_in[17]), .Y(n265) );
  AOI21X1M U139 ( .A0(n68), .A1(n5), .B0(n266), .Y(n264) );
  OAI221X1M U140 ( .A0(n15), .A1(n71), .B0(n82), .B1(n267), .C0(n268), .Y(n266) );
  AOI22X1M U141 ( .A0(sh[4]), .A1(n269), .B0(n74), .B1(n52), .Y(n268) );
  NAND4X1M U142 ( .A(n270), .B(n271), .C(n272), .D(n273), .Y(n52) );
  AOI221X1M U143 ( .A0(n140), .A1(data_in[4]), .B0(n84), .B1(data_in[2]), .C0(
        n274), .Y(n267) );
  OAI21XLM U144 ( .A0(n275), .A1(n276), .B0(n277), .Y(n274) );
  NAND4X1M U145 ( .A(n278), .B(n279), .C(n280), .D(n281), .Y(n5) );
  OAI21X1M U146 ( .A0(n65), .A1(n1), .B0(n282), .Y(data_out[19]) );
  AOI21X1M U147 ( .A0(n213), .A1(n73), .B0(n283), .Y(n282) );
  AOI22X1M U149 ( .A0(data_in[3]), .A1(n28), .B0(n219), .B1(n218), .Y(n286) );
  AOI22X1M U150 ( .A0(n166), .A1(n168), .B0(n167), .B1(n229), .Y(n285) );
  AND4X1M U151 ( .A(n287), .B(n288), .C(n289), .D(n290), .Y(n91) );
  NAND2XLM U152 ( .A(n140), .B(data_in[16]), .Y(n288) );
  CLKNAND2X2M U153 ( .A(n291), .B(n292), .Y(n73) );
  AOI22X1M U154 ( .A0(n184), .A1(n228), .B0(n186), .B1(n226), .Y(n292) );
  AOI222XLM U156 ( .A0(n230), .A1(n190), .B0(data_in[31]), .B1(n188), .C0(
        sh[3]), .C1(data_in[27]), .Y(n65) );
  OAI21X1M U157 ( .A0(n114), .A1(n1), .B0(n293), .Y(data_out[18]) );
  AOI21X1M U158 ( .A0(n213), .A1(n120), .B0(n294), .Y(n293) );
  OAI211X1M U159 ( .A0(n107), .A1(n284), .B0(n295), .C0(n296), .Y(n294) );
  AOI22X1M U160 ( .A0(data_in[2]), .A1(n28), .B0(n219), .B1(n235), .Y(n296) );
  AOI22X1M U161 ( .A0(n166), .A1(n179), .B0(n167), .B1(n245), .Y(n295) );
  AND4X1M U162 ( .A(n297), .B(n298), .C(n299), .D(n300), .Y(n107) );
  CLKNAND2X2M U163 ( .A(n301), .B(n302), .Y(n120) );
  AOI22X1M U164 ( .A0(n184), .A1(n244), .B0(n186), .B1(n242), .Y(n302) );
  AOI22X1M U165 ( .A0(n190), .A1(n49), .B0(n188), .B1(n243), .Y(n301) );
  AOI222XLM U166 ( .A0(n246), .A1(n190), .B0(data_in[30]), .B1(n188), .C0(
        sh[3]), .C1(data_in[26]), .Y(n114) );
  OAI21X1M U167 ( .A0(n263), .A1(n1), .B0(n303), .Y(data_out[17]) );
  OAI211X1M U169 ( .A0(n133), .A1(n284), .B0(n305), .C0(n306), .Y(n304) );
  AOI22X1M U170 ( .A0(data_in[1]), .A1(n28), .B0(n219), .B1(n191), .Y(n306) );
  AOI22X1M U171 ( .A0(n166), .A1(n182), .B0(n167), .B1(n189), .Y(n305) );
  AND4X1M U172 ( .A(n307), .B(n308), .C(n309), .D(n310), .Y(n133) );
  CLKNAND2X2M U173 ( .A(n96), .B(data_in[15]), .Y(n308) );
  CLKNAND2X2M U174 ( .A(n311), .B(n312), .Y(n269) );
  AOI22X1M U175 ( .A0(n184), .A1(n192), .B0(n186), .B1(n193), .Y(n312) );
  AOI22X1M U176 ( .A0(n190), .A1(n7), .B0(n188), .B1(n9), .Y(n311) );
  AOI222XLM U177 ( .A0(n185), .A1(n190), .B0(data_in[29]), .B1(n188), .C0(
        sh[3]), .C1(data_in[25]), .Y(n263) );
  OAI21X1M U178 ( .A0(n313), .A1(n1), .B0(n314), .Y(data_out[16]) );
  AOI21X1M U179 ( .A0(n213), .A1(n315), .B0(n316), .Y(n314) );
  OAI211X1M U180 ( .A0(n147), .A1(n284), .B0(n317), .C0(n318), .Y(n316) );
  AOI22X1M U181 ( .A0(data_in[0]), .A1(n28), .B0(n219), .B1(n205), .Y(n318) );
  CLKINVX1M U182 ( .A(n161), .Y(n219) );
  CLKNAND2X2M U183 ( .A(n66), .B(n68), .Y(n161) );
  CLKINVX1M U184 ( .A(n12), .Y(n28) );
  AOI22X1M U185 ( .A0(n166), .A1(n200), .B0(n167), .B1(n204), .Y(n317) );
  NOR2X1M U186 ( .A(dir), .B(n71), .Y(n167) );
  NOR2X1M U187 ( .A(dir), .B(n319), .Y(n166) );
  CLKINVX1M U188 ( .A(n156), .Y(n284) );
  NOR2X1M U189 ( .A(n82), .B(dir), .Y(n156) );
  AND4X1M U190 ( .A(n320), .B(n321), .C(n322), .D(n323), .Y(n147) );
  CLKINVX1M U191 ( .A(n86), .Y(n213) );
  OAI21X1M U193 ( .A0(n87), .A1(n12), .B0(n325), .Y(data_out[15]) );
  AOI21X1M U194 ( .A0(n326), .A1(n94), .B0(n327), .Y(n325) );
  OAI211X1M U195 ( .A0(n31), .A1(n328), .B0(n329), .C0(n330), .Y(n327) );
  AOI22X1M U196 ( .A0(data_in[31]), .A1(n35), .B0(n6), .B1(n227), .Y(n330) );
  AOI22X1M U197 ( .A0(n37), .A1(n39), .B0(n8), .B1(n228), .Y(n329) );
  CLKNAND2X2M U198 ( .A(n331), .B(n332), .Y(n94) );
  AOI22X1M U199 ( .A0(n184), .A1(n229), .B0(n186), .B1(n230), .Y(n332) );
  NAND4X1M U201 ( .A(n333), .B(n280), .C(n334), .D(n335), .Y(n168) );
  CLKNAND2X2M U202 ( .A(n140), .B(data_in[12]), .Y(n280) );
  NAND2X1M U203 ( .A(n84), .B(data_in[14]), .Y(n333) );
  AOI222XLM U204 ( .A0(n226), .A1(n190), .B0(n188), .B1(data_in[3]), .C0(sh[3]), .C1(data_in[7]), .Y(n87) );
  AOI21X1M U206 ( .A0(n326), .A1(n109), .B0(n337), .Y(n336) );
  OAI211X1M U207 ( .A0(n44), .A1(n328), .B0(n338), .C0(n339), .Y(n337) );
  AOI22X1M U208 ( .A0(data_in[30]), .A1(n35), .B0(n6), .B1(n243), .Y(n339) );
  AOI22X1M U209 ( .A0(n37), .A1(n49), .B0(n8), .B1(n244), .Y(n338) );
  CLKNAND2X2M U210 ( .A(n340), .B(n341), .Y(n109) );
  AOI22X1M U211 ( .A0(n184), .A1(n245), .B0(n186), .B1(n246), .Y(n341) );
  AOI22X1M U212 ( .A0(n190), .A1(n179), .B0(n188), .B1(n235), .Y(n340) );
  NAND4X1M U213 ( .A(n342), .B(n343), .C(n344), .D(n345), .Y(n179) );
  AOI222XLM U214 ( .A0(n242), .A1(n190), .B0(n188), .B1(data_in[2]), .C0(sh[3]), .C1(data_in[6]), .Y(n103) );
  OAI21X1M U215 ( .A0(n129), .A1(n12), .B0(n346), .Y(data_out[13]) );
  AOI21X1M U216 ( .A0(n326), .A1(n135), .B0(n347), .Y(n346) );
  OAI211X1M U217 ( .A0(n15), .A1(n328), .B0(n348), .C0(n349), .Y(n347) );
  AOI22X1M U218 ( .A0(data_in[29]), .A1(n35), .B0(n6), .B1(n9), .Y(n349) );
  NAND4X1M U219 ( .A(n195), .B(n163), .C(n250), .D(n221), .Y(n9) );
  CLKNAND2X2M U220 ( .A(n84), .B(data_in[22]), .Y(n221) );
  CLKNAND2X2M U221 ( .A(n83), .B(data_in[21]), .Y(n250) );
  CLKNAND2X2M U222 ( .A(n140), .B(data_in[24]), .Y(n163) );
  CLKNAND2X2M U223 ( .A(n96), .B(data_in[23]), .Y(n195) );
  AOI22X1M U224 ( .A0(n37), .A1(n7), .B0(n8), .B1(n192), .Y(n348) );
  NAND4X1M U225 ( .A(n138), .B(n100), .C(n194), .D(n162), .Y(n192) );
  CLKNAND2X2M U226 ( .A(data_in[26]), .B(n84), .Y(n162) );
  CLKNAND2X2M U227 ( .A(n83), .B(data_in[25]), .Y(n194) );
  NAND2X1M U228 ( .A(n140), .B(data_in[28]), .Y(n100) );
  CLKNAND2X2M U229 ( .A(n96), .B(data_in[27]), .Y(n138) );
  NAND4X1M U230 ( .A(n249), .B(n220), .C(n307), .D(n287), .Y(n7) );
  CLKNAND2X2M U231 ( .A(n84), .B(data_in[18]), .Y(n287) );
  CLKNAND2X2M U233 ( .A(n140), .B(data_in[20]), .Y(n220) );
  CLKNAND2X2M U234 ( .A(n96), .B(data_in[19]), .Y(n249) );
  AOI211X1M U235 ( .A0(data_in[15]), .A1(n96), .B0(n350), .C0(n351), .Y(n15)
         );
  OAI22XLM U236 ( .A0(n352), .A1(n353), .B0(n98), .B1(n101), .Y(n351) );
  INVXLM U237 ( .A(data_in[14]), .Y(n101) );
  CLKNAND2X2M U238 ( .A(n354), .B(n355), .Y(n135) );
  AOI22X1M U239 ( .A0(n184), .A1(n189), .B0(n186), .B1(n185), .Y(n355) );
  OAI222X1M U240 ( .A0(n356), .A1(n98), .B0(n357), .B1(n358), .C0(n275), .C1(
        n276), .Y(n185) );
  NAND3X1M U241 ( .A(n359), .B(n271), .C(n277), .Y(n189) );
  CLKNAND2X2M U242 ( .A(n96), .B(data_in[3]), .Y(n277) );
  CLKNAND2X2M U243 ( .A(n83), .B(data_in[5]), .Y(n271) );
  AOI22X1M U244 ( .A0(n140), .A1(data_in[2]), .B0(n84), .B1(data_in[4]), .Y(
        n359) );
  AOI22X1M U245 ( .A0(n190), .A1(n182), .B0(n188), .B1(n191), .Y(n354) );
  NAND4X1M U246 ( .A(n270), .B(n278), .C(n80), .D(n76), .Y(n191) );
  CLKNAND2X2M U247 ( .A(n84), .B(data_in[8]), .Y(n76) );
  CLKNAND2X2M U248 ( .A(n140), .B(data_in[6]), .Y(n80) );
  CLKNAND2X2M U249 ( .A(n83), .B(data_in[9]), .Y(n278) );
  CLKNAND2X2M U250 ( .A(n96), .B(data_in[7]), .Y(n270) );
  NAND4BX1M U251 ( .AN(n350), .B(n279), .C(n360), .D(n75), .Y(n182) );
  NAND2X1M U252 ( .A(n140), .B(data_in[10]), .Y(n75) );
  CLKNAND2X2M U253 ( .A(n96), .B(data_in[11]), .Y(n279) );
  NOR2X1M U254 ( .A(n275), .B(n127), .Y(n350) );
  INVXLM U255 ( .A(data_in[13]), .Y(n127) );
  AOI222XLM U256 ( .A0(n193), .A1(n190), .B0(n188), .B1(data_in[1]), .C0(sh[3]), .C1(data_in[5]), .Y(n129) );
  OAI211X1M U257 ( .A0(n356), .A1(n352), .B0(n361), .C0(n139), .Y(n193) );
  CLKNAND2X2M U258 ( .A(n83), .B(data_in[29]), .Y(n139) );
  OAI21X1M U260 ( .A0(n143), .A1(n12), .B0(n362), .Y(data_out[12]) );
  AOI21X1M U261 ( .A0(n326), .A1(n149), .B0(n363), .Y(n362) );
  OAI211X1M U262 ( .A0(n25), .A1(n328), .B0(n364), .C0(n365), .Y(n363) );
  AOI22X1M U263 ( .A0(data_in[28]), .A1(n35), .B0(n6), .B1(n21), .Y(n365) );
  CLKINVX1M U264 ( .A(n1), .Y(n35) );
  AOI22X1M U265 ( .A0(n37), .A1(n20), .B0(n8), .B1(n207), .Y(n364) );
  CLKINVX1M U266 ( .A(n16), .Y(n37) );
  CLKINVX1M U267 ( .A(n4), .Y(n328) );
  CLKNAND2X2M U268 ( .A(n366), .B(n367), .Y(n149) );
  AOI22X1M U269 ( .A0(n184), .A1(n204), .B0(n186), .B1(n202), .Y(n367) );
  NAND3X1M U270 ( .A(n368), .B(n369), .C(n370), .Y(n204) );
  AOI22X1M U272 ( .A0(n190), .A1(n200), .B0(n188), .B1(n205), .Y(n366) );
  NAND4X1M U273 ( .A(n371), .B(n372), .C(n126), .D(n122), .Y(n205) );
  CLKNAND2X2M U274 ( .A(n84), .B(data_in[7]), .Y(n122) );
  NAND2X1M U275 ( .A(n140), .B(data_in[5]), .Y(n126) );
  NAND4X1M U276 ( .A(n373), .B(n374), .C(n375), .D(n121), .Y(n200) );
  NAND2X1M U277 ( .A(n140), .B(data_in[9]), .Y(n121) );
  CLKINVX1M U278 ( .A(n14), .Y(n326) );
  AOI222XLM U279 ( .A0(n206), .A1(n190), .B0(n188), .B1(data_in[0]), .C0(sh[3]), .C1(data_in[4]), .Y(n143) );
  OAI2B11XLM U280 ( .A1N(data_in[27]), .A0(n1), .B0(n376), .C0(n377), .Y(
        data_out[11]) );
  AOI22X1M U281 ( .A0(n4), .A1(n38), .B0(n6), .B1(n39), .Y(n377) );
  NAND4X1M U282 ( .A(n197), .B(n252), .C(n290), .D(n223), .Y(n39) );
  CLKNAND2X2M U283 ( .A(n96), .B(data_in[21]), .Y(n223) );
  CLKNAND2X2M U285 ( .A(n84), .B(data_in[20]), .Y(n252) );
  NAND4X1M U287 ( .A(n360), .B(n310), .C(n335), .D(n378), .Y(n38) );
  CLKNAND2X2M U288 ( .A(n96), .B(data_in[13]), .Y(n335) );
  CLKNAND2X2M U289 ( .A(n140), .B(data_in[14]), .Y(n310) );
  CLKNAND2X2M U290 ( .A(n84), .B(data_in[12]), .Y(n360) );
  AOI21X1M U291 ( .A0(n8), .A1(n227), .B0(n379), .Y(n376) );
  OAI222X1M U292 ( .A0(n159), .A1(n12), .B0(n160), .B1(n14), .C0(n31), .C1(n16), .Y(n379) );
  AND4X1M U293 ( .A(n309), .B(n251), .C(n334), .D(n289), .Y(n31) );
  CLKNAND2X2M U295 ( .A(n83), .B(data_in[15]), .Y(n334) );
  CLKNAND2X2M U296 ( .A(n140), .B(data_in[18]), .Y(n251) );
  CLKNAND2X2M U297 ( .A(n84), .B(data_in[16]), .Y(n309) );
  AOI221X1M U298 ( .A0(n184), .A1(n230), .B0(data_in[31]), .B1(n186), .C0(n380), .Y(n160) );
  NAND4X1M U300 ( .A(n273), .B(n281), .C(n378), .D(n78), .Y(n218) );
  CLKNAND2X2M U301 ( .A(n96), .B(data_in[9]), .Y(n78) );
  CLKNAND2X2M U302 ( .A(n83), .B(data_in[11]), .Y(n378) );
  CLKNAND2X2M U303 ( .A(n84), .B(data_in[10]), .Y(n281) );
  NAND2X1M U304 ( .A(n140), .B(data_in[8]), .Y(n273) );
  NAND4X1M U305 ( .A(n272), .B(n381), .C(n81), .D(n77), .Y(n229) );
  CLKNAND2X2M U306 ( .A(n83), .B(data_in[7]), .Y(n77) );
  CLKNAND2X2M U307 ( .A(n96), .B(data_in[5]), .Y(n81) );
  NAND2XLM U308 ( .A(n140), .B(data_in[4]), .Y(n381) );
  CLKNAND2X2M U309 ( .A(n84), .B(data_in[6]), .Y(n272) );
  OAI211X1M U310 ( .A0(n356), .A1(n352), .B0(n382), .C0(n383), .Y(n230) );
  CLKNAND2X2M U311 ( .A(n84), .B(data_in[2]), .Y(n383) );
  AOI22X1M U312 ( .A0(n96), .A1(data_in[1]), .B0(n83), .B1(data_in[3]), .Y(
        n382) );
  AOI222XLM U313 ( .A0(n228), .A1(n190), .B0(sh[3]), .B1(data_in[3]), .C0(n226), .C1(n188), .Y(n159) );
  OAI222X1M U314 ( .A0(n356), .A1(n98), .B0(n276), .B1(n358), .C0(n357), .C1(
        n275), .Y(n226) );
  CLKINVX1M U315 ( .A(data_in[1]), .Y(n276) );
  OAI211X1M U316 ( .A0(n99), .A1(n352), .B0(n384), .C0(n165), .Y(n228) );
  AOI22X1M U318 ( .A0(n96), .A1(data_in[29]), .B0(n84), .B1(data_in[28]), .Y(
        n384) );
  CLKNAND2X2M U320 ( .A(n83), .B(data_in[23]), .Y(n222) );
  CLKNAND2X2M U321 ( .A(n96), .B(data_in[25]), .Y(n164) );
  NAND2X1M U322 ( .A(data_in[26]), .B(n140), .Y(n385) );
  CLKNAND2X2M U323 ( .A(data_in[24]), .B(n84), .Y(n196) );
  OAI2B11XLM U324 ( .A1N(data_in[26]), .A0(n1), .B0(n386), .C0(n387), .Y(
        data_out[10]) );
  AOI22X1M U325 ( .A0(n4), .A1(n48), .B0(n6), .B1(n49), .Y(n387) );
  NAND4X1M U326 ( .A(n211), .B(n260), .C(n238), .D(n299), .Y(n49) );
  CLKNAND2X2M U327 ( .A(n83), .B(data_in[18]), .Y(n299) );
  CLKNAND2X2M U328 ( .A(n96), .B(data_in[20]), .Y(n238) );
  CLKNAND2X2M U329 ( .A(n84), .B(data_in[19]), .Y(n260) );
  CLKNAND2X2M U330 ( .A(n140), .B(data_in[21]), .Y(n211) );
  CLKINVX1M U331 ( .A(n32), .Y(n6) );
  CLKNAND2X2M U332 ( .A(dir), .B(n68), .Y(n32) );
  NAND4X1M U333 ( .A(n375), .B(n323), .C(n345), .D(n388), .Y(n48) );
  CLKNAND2X2M U334 ( .A(n96), .B(data_in[12]), .Y(n345) );
  CLKNAND2X2M U335 ( .A(n140), .B(data_in[13]), .Y(n323) );
  CLKNAND2X2M U336 ( .A(n84), .B(data_in[11]), .Y(n375) );
  NOR2X1M U337 ( .A(n66), .B(n82), .Y(n4) );
  AOI21X1M U338 ( .A0(n8), .A1(n243), .B0(n389), .Y(n386) );
  OAI222X1M U339 ( .A0(n173), .A1(n12), .B0(n174), .B1(n14), .C0(n44), .C1(n16), .Y(n389) );
  CLKNAND2X2M U340 ( .A(dir), .B(n74), .Y(n16) );
  AND4X1M U341 ( .A(n322), .B(n259), .C(n300), .D(n344), .Y(n44) );
  CLKNAND2X2M U342 ( .A(n83), .B(data_in[14]), .Y(n344) );
  CLKNAND2X2M U343 ( .A(n96), .B(data_in[16]), .Y(n300) );
  CLKNAND2X2M U345 ( .A(n84), .B(data_in[15]), .Y(n322) );
  AOI221X1M U346 ( .A0(n184), .A1(n246), .B0(data_in[30]), .B1(n186), .C0(n390), .Y(n174) );
  AO22X1M U347 ( .A0(n188), .A1(n245), .B0(n190), .B1(n235), .Y(n390) );
  NAND4X1M U348 ( .A(n391), .B(n392), .C(n124), .D(n388), .Y(n235) );
  CLKNAND2X2M U349 ( .A(n83), .B(data_in[10]), .Y(n388) );
  CLKNAND2X2M U350 ( .A(n96), .B(data_in[8]), .Y(n124) );
  NAND4X1M U351 ( .A(n393), .B(n394), .C(n123), .D(n395), .Y(n245) );
  CLKNAND2X2M U352 ( .A(n96), .B(data_in[4]), .Y(n395) );
  CLKNAND2X2M U353 ( .A(n83), .B(data_in[6]), .Y(n123) );
  OAI211X1M U354 ( .A0(n357), .A1(n352), .B0(n396), .C0(n397), .Y(n246) );
  CLKNAND2X2M U355 ( .A(n83), .B(data_in[2]), .Y(n397) );
  AOI22X1M U356 ( .A0(n96), .A1(data_in[0]), .B0(n84), .B1(data_in[1]), .Y(
        n396) );
  CLKNAND2X2M U357 ( .A(dir), .B(sh[4]), .Y(n12) );
  AOI222XLM U358 ( .A0(n244), .A1(n190), .B0(sh[3]), .B1(data_in[2]), .C0(n242), .C1(n188), .Y(n173) );
  OAI222X1M U359 ( .A0(n357), .A1(n98), .B0(n356), .B1(n358), .C0(n99), .C1(
        n275), .Y(n242) );
  CLKNAND2X2M U360 ( .A(n398), .B(n399), .Y(n244) );
  AOI22X1M U361 ( .A0(n96), .A1(data_in[28]), .B0(data_in[26]), .B1(n83), .Y(
        n399) );
  AOI22X1M U362 ( .A0(n140), .A1(data_in[29]), .B0(data_in[27]), .B1(n84), .Y(
        n398) );
  NAND4X1M U363 ( .A(n210), .B(n153), .C(n178), .D(n239), .Y(n243) );
  CLKNAND2X2M U364 ( .A(n83), .B(data_in[22]), .Y(n239) );
  CLKNAND2X2M U365 ( .A(n96), .B(data_in[24]), .Y(n178) );
  CLKNAND2X2M U366 ( .A(n140), .B(data_in[25]), .Y(n153) );
  CLKNAND2X2M U367 ( .A(n84), .B(data_in[23]), .Y(n210) );
  NOR2X1M U368 ( .A(n66), .B(n71), .Y(n8) );
  OAI222X1M U369 ( .A0(n1), .A1(n353), .B0(n14), .B1(n313), .C0(n66), .C1(n400), .Y(data_out[0]) );
  AOI211X1M U370 ( .A0(n68), .A1(n19), .B0(n401), .C0(n402), .Y(n400) );
  OAI21X1M U371 ( .A0(n25), .A1(n71), .B0(n403), .Y(n402) );
  AOI22X1M U372 ( .A0(sh[4]), .A1(n315), .B0(n74), .B1(n59), .Y(n403) );
  NAND4X1M U373 ( .A(n371), .B(n369), .C(n393), .D(n391), .Y(n59) );
  NAND2X1M U374 ( .A(n140), .B(data_in[7]), .Y(n391) );
  CLKNAND2X2M U375 ( .A(n84), .B(data_in[5]), .Y(n393) );
  CLKNAND2X2M U376 ( .A(n83), .B(data_in[4]), .Y(n369) );
  CLKNAND2X2M U377 ( .A(n96), .B(data_in[6]), .Y(n371) );
  CLKINVX1M U378 ( .A(n319), .Y(n74) );
  CLKNAND2X2M U379 ( .A(n324), .B(n188), .Y(n319) );
  CLKNAND2X2M U380 ( .A(n404), .B(n405), .Y(n315) );
  AOI22X1M U381 ( .A0(n184), .A1(n207), .B0(n186), .B1(n206), .Y(n405) );
  OAI211X1M U382 ( .A0(n357), .A1(n352), .B0(n406), .C0(n113), .Y(n206) );
  CLKNAND2X2M U383 ( .A(n84), .B(data_in[29]), .Y(n113) );
  AOI22X1M U384 ( .A0(n96), .A1(data_in[30]), .B0(n83), .B1(data_in[28]), .Y(
        n406) );
  NOR2BX1M U385 ( .AN(sh[2]), .B(n407), .Y(n186) );
  NAND4X1M U386 ( .A(n152), .B(n112), .C(n208), .D(n175), .Y(n207) );
  CLKNAND2X2M U387 ( .A(n84), .B(data_in[25]), .Y(n175) );
  CLKNAND2X2M U388 ( .A(n83), .B(data_in[24]), .Y(n208) );
  NAND2X1M U389 ( .A(n140), .B(data_in[27]), .Y(n112) );
  CLKNAND2X2M U390 ( .A(n96), .B(data_in[26]), .Y(n152) );
  NOR2X1M U391 ( .A(sh[2]), .B(n407), .Y(n184) );
  AOI22X1M U392 ( .A0(n190), .A1(n20), .B0(n188), .B1(n21), .Y(n404) );
  NAND4X1M U393 ( .A(n209), .B(n176), .C(n258), .D(n237), .Y(n21) );
  CLKNAND2X2M U394 ( .A(n84), .B(data_in[21]), .Y(n237) );
  CLKNAND2X2M U395 ( .A(n83), .B(data_in[20]), .Y(n258) );
  CLKNAND2X2M U397 ( .A(n96), .B(data_in[22]), .Y(n209) );
  NAND4X1M U398 ( .A(n257), .B(n236), .C(n320), .D(n297), .Y(n20) );
  CLKNAND2X2M U399 ( .A(n84), .B(data_in[17]), .Y(n297) );
  CLKNAND2X2M U401 ( .A(n140), .B(data_in[19]), .Y(n236) );
  CLKNAND2X2M U402 ( .A(n96), .B(data_in[18]), .Y(n257) );
  NAND3X1M U403 ( .A(sh[2]), .B(sh[3]), .C(n324), .Y(n71) );
  AND4X1M U404 ( .A(n321), .B(n298), .C(n373), .D(n342), .Y(n25) );
  CLKNAND2X2M U405 ( .A(n84), .B(data_in[13]), .Y(n342) );
  CLKNAND2X2M U406 ( .A(n83), .B(data_in[12]), .Y(n373) );
  CLKNAND2X2M U407 ( .A(n140), .B(data_in[15]), .Y(n298) );
  CLKNAND2X2M U408 ( .A(n96), .B(data_in[14]), .Y(n321) );
  AOI31X1M U409 ( .A0(n408), .A1(n370), .A2(n394), .B0(n82), .Y(n401) );
  CLKNAND2X2M U410 ( .A(n190), .B(n324), .Y(n82) );
  CLKNAND2X2M U411 ( .A(n140), .B(data_in[3]), .Y(n394) );
  CLKNAND2X2M U412 ( .A(n96), .B(data_in[2]), .Y(n370) );
  AOI22XLM U413 ( .A0(n83), .A1(data_in[0]), .B0(n84), .B1(data_in[1]), .Y(
        n408) );
  NAND4X1M U414 ( .A(n372), .B(n374), .C(n343), .D(n392), .Y(n19) );
  CLKNAND2X2M U415 ( .A(n84), .B(data_in[9]), .Y(n392) );
  CLKINVX1M U416 ( .A(n98), .Y(n84) );
  CLKNAND2X2M U417 ( .A(n140), .B(data_in[11]), .Y(n343) );
  CLKINVX1M U418 ( .A(n352), .Y(n140) );
  CLKNAND2X2M U419 ( .A(sh[1]), .B(sh[0]), .Y(n352) );
  CLKNAND2X2M U420 ( .A(n96), .B(data_in[10]), .Y(n374) );
  NOR2X1M U421 ( .A(sh[0]), .B(n358), .Y(n96) );
  CLKNAND2X2M U422 ( .A(n83), .B(data_in[8]), .Y(n372) );
  NOR3X1M U423 ( .A(sh[4]), .B(sh[2]), .C(n407), .Y(n68) );
  AOI222XLM U424 ( .A0(n202), .A1(n190), .B0(data_in[28]), .B1(n188), .C0(
        sh[3]), .C1(data_in[24]), .Y(n313) );
  AND2X1M U425 ( .A(sh[2]), .B(n407), .Y(n188) );
  CLKINVX1M U426 ( .A(sh[3]), .Y(n407) );
  NOR2X1M U427 ( .A(sh[2]), .B(sh[3]), .Y(n190) );
  OAI222X1M U428 ( .A0(n357), .A1(n98), .B0(n99), .B1(n358), .C0(n275), .C1(
        n356), .Y(n202) );
  CLKINVX1M U429 ( .A(data_in[0]), .Y(n356) );
  CLKINVX1M U430 ( .A(n83), .Y(n275) );
  NOR2X1M U431 ( .A(sh[1]), .B(sh[0]), .Y(n83) );
  CLKINVX1M U432 ( .A(data_in[30]), .Y(n99) );
  CLKNAND2X2M U433 ( .A(sh[0]), .B(n358), .Y(n98) );
  CLKINVX1M U434 ( .A(sh[1]), .Y(n358) );
  CLKINVX1M U435 ( .A(data_in[31]), .Y(n357) );
  CLKNAND2X2M U436 ( .A(n66), .B(n324), .Y(n14) );
  CLKINVX1M U437 ( .A(sh[4]), .Y(n324) );
  INVXLM U438 ( .A(data_in[16]), .Y(n353) );
  CLKNAND2X2M U439 ( .A(sh[4]), .B(n66), .Y(n1) );
  CLKINVX1M U440 ( .A(dir), .Y(n66) );
  AOI22XLM U13 ( .A0(n140), .A1(data_in[1]), .B0(n84), .B1(data_in[3]), .Y(
        n368) );
  AO22XLM U17 ( .A0(n188), .A1(n204), .B0(n190), .B1(n205), .Y(n203) );
  AO22XLM U27 ( .A0(n188), .A1(n229), .B0(n190), .B1(n218), .Y(n380) );
  NAND2XLM U29 ( .A(n96), .B(data_in[17]), .Y(n289) );
  AOI22XLM U64 ( .A0(sh[4]), .A1(n149), .B0(n74), .B1(n150), .Y(n148) );
  NAND2XLM U65 ( .A(n83), .B(data_in[19]), .Y(n290) );
  NAND2XLM U66 ( .A(n140), .B(data_in[17]), .Y(n259) );
  NAND2XLM U67 ( .A(n140), .B(data_in[22]), .Y(n197) );
  NAND2XLM U83 ( .A(data_in[27]), .B(n83), .Y(n165) );
  NAND2XLM U97 ( .A(n140), .B(data_in[23]), .Y(n176) );
  NAND2XLM U99 ( .A(n83), .B(data_in[17]), .Y(n307) );
  NAND2XLM U102 ( .A(n83), .B(data_in[16]), .Y(n320) );
  AOI22XLM U105 ( .A0(n96), .A1(data_in[31]), .B0(n84), .B1(data_in[30]), .Y(
        n361) );
  AOI22XLM U123 ( .A0(n190), .A1(n39), .B0(n188), .B1(n227), .Y(n291) );
  AOI22XLM U148 ( .A0(n190), .A1(n168), .B0(n188), .B1(n218), .Y(n331) );
  AOI22XLM U155 ( .A0(n37), .A1(n38), .B0(n8), .B1(n39), .Y(n33) );
  AOI22XLM U168 ( .A0(data_in[22]), .A1(n35), .B0(n4), .B1(n47), .Y(n46) );
  OAI21XLM U192 ( .A0(n147), .A1(n71), .B0(n148), .Y(n146) );
  NAND4XLM U200 ( .A(n196), .B(n385), .C(n164), .D(n222), .Y(n227) );
  NAND4XLM U205 ( .A(n208), .B(n209), .C(n210), .D(n211), .Y(n150) );
  NAND4XLM U232 ( .A(n220), .B(n221), .C(n222), .D(n223), .Y(n89) );
  OAI2BB2XLM U259 ( .B0(n25), .B1(n32), .A0N(data_in[20]), .A1N(n35), .Y(n60)
         );
  OAI211XLM U271 ( .A0(n91), .A1(n284), .B0(n285), .C0(n286), .Y(n283) );
  OAI211XLM U284 ( .A0(n91), .A1(n215), .B0(n216), .C0(n217), .Y(n214) );
  AOI211XLM U286 ( .A0(n68), .A1(n144), .B0(n145), .C0(n146), .Y(n142) );
  AOI21XLM U294 ( .A0(n167), .A1(n191), .B0(n253), .Y(n247) );
  NAND2XLM U299 ( .A(dir), .B(n324), .Y(n86) );
  AOI22XLM U317 ( .A0(n166), .A1(n104), .B0(n167), .B1(n179), .Y(n169) );
  AOI21XLM U319 ( .A0(n213), .A1(n269), .B0(n304), .Y(n303) );
  OAI222XLM U344 ( .A0(n12), .A1(n141), .B0(dir), .B1(n142), .C0(n86), .C1(
        n143), .Y(data_out[28]) );
  OAI222XLM U396 ( .A0(n1), .A1(n64), .B0(n14), .B1(n65), .C0(n66), .C1(n67), 
        .Y(data_out[3]) );
  OAI21XLM U400 ( .A0(n103), .A1(n12), .B0(n336), .Y(data_out[14]) );
endmodule


module top ( clk, rst_n, data_in, dir, sh, data_out );
  input [31:0] data_in;
  input [4:0] sh;
  output [31:0] data_out;
  input clk, rst_n, dir;
  wire   dir_r;
  wire   [31:0] data_out_r;
  wire   [31:0] data_in_r;
  wire   [4:0] sh_r;

  barrel barrel_u0 ( .data_out(data_out_r), .data_in(data_in_r), .dir(dir_r), 
        .sh(sh_r) );
  DFFRQX1M sh_r_reg_4_ ( .D(sh[4]), .CK(clk), .RN(rst_n), .Q(sh_r[4]) );
  DFFRQX1M sh_r_reg_3_ ( .D(sh[3]), .CK(clk), .RN(rst_n), .Q(sh_r[3]) );
  DFFRQX1M sh_r_reg_2_ ( .D(sh[2]), .CK(clk), .RN(rst_n), .Q(sh_r[2]) );
  DFFRQX1M sh_r_reg_1_ ( .D(sh[1]), .CK(clk), .RN(rst_n), .Q(sh_r[1]) );
  DFFRQX1M sh_r_reg_0_ ( .D(sh[0]), .CK(clk), .RN(rst_n), .Q(sh_r[0]) );
  DFFRQX1M dir_r_reg ( .D(dir), .CK(clk), .RN(rst_n), .Q(dir_r) );
  DFFRQX1M data_in_r_reg_31_ ( .D(data_in[31]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[31]) );
  DFFRQX1M data_in_r_reg_30_ ( .D(data_in[30]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[30]) );
  DFFRQX1M data_in_r_reg_29_ ( .D(data_in[29]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[29]) );
  DFFRQX1M data_in_r_reg_28_ ( .D(data_in[28]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[28]) );
  DFFRQX1M data_in_r_reg_27_ ( .D(data_in[27]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[27]) );
  DFFRQX1M data_in_r_reg_26_ ( .D(data_in[26]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[26]) );
  DFFRQX1M data_in_r_reg_25_ ( .D(data_in[25]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[25]) );
  DFFRQX1M data_in_r_reg_24_ ( .D(data_in[24]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[24]) );
  DFFRQX1M data_in_r_reg_23_ ( .D(data_in[23]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[23]) );
  DFFRQX1M data_in_r_reg_22_ ( .D(data_in[22]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[22]) );
  DFFRQX1M data_in_r_reg_21_ ( .D(data_in[21]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[21]) );
  DFFRQX1M data_in_r_reg_20_ ( .D(data_in[20]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[20]) );
  DFFRQX1M data_in_r_reg_19_ ( .D(data_in[19]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[19]) );
  DFFRQX1M data_in_r_reg_18_ ( .D(data_in[18]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[18]) );
  DFFRQX1M data_in_r_reg_17_ ( .D(data_in[17]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[17]) );
  DFFRQX1M data_in_r_reg_16_ ( .D(data_in[16]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[16]) );
  DFFRQX1M data_in_r_reg_15_ ( .D(data_in[15]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[15]) );
  DFFRQX1M data_in_r_reg_14_ ( .D(data_in[14]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[14]) );
  DFFRQX1M data_in_r_reg_13_ ( .D(data_in[13]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[13]) );
  DFFRQX1M data_in_r_reg_12_ ( .D(data_in[12]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[12]) );
  DFFRQX1M data_in_r_reg_11_ ( .D(data_in[11]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[11]) );
  DFFRQX1M data_in_r_reg_10_ ( .D(data_in[10]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[10]) );
  DFFRQX1M data_in_r_reg_9_ ( .D(data_in[9]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[9]) );
  DFFRQX1M data_in_r_reg_8_ ( .D(data_in[8]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[8]) );
  DFFRQX1M data_in_r_reg_7_ ( .D(data_in[7]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[7]) );
  DFFRQX1M data_in_r_reg_6_ ( .D(data_in[6]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[6]) );
  DFFRQX1M data_in_r_reg_5_ ( .D(data_in[5]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[5]) );
  DFFRQX1M data_in_r_reg_4_ ( .D(data_in[4]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[4]) );
  DFFRQX1M data_in_r_reg_3_ ( .D(data_in[3]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[3]) );
  DFFRQX1M data_in_r_reg_2_ ( .D(data_in[2]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[2]) );
  DFFRQX1M data_in_r_reg_1_ ( .D(data_in[1]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[1]) );
  DFFRQX1M data_in_r_reg_0_ ( .D(data_in[0]), .CK(clk), .RN(rst_n), .Q(
        data_in_r[0]) );
  DFFRQX1M data_out_reg_6_ ( .D(data_out_r[6]), .CK(clk), .RN(rst_n), .Q(
        data_out[6]) );
  DFFRQX1M data_out_reg_22_ ( .D(data_out_r[22]), .CK(clk), .RN(rst_n), .Q(
        data_out[22]) );
  DFFRQX1M data_out_reg_7_ ( .D(data_out_r[7]), .CK(clk), .RN(rst_n), .Q(
        data_out[7]) );
  DFFRQX1M data_out_reg_23_ ( .D(data_out_r[23]), .CK(clk), .RN(rst_n), .Q(
        data_out[23]) );
  DFFRQX1M data_out_reg_14_ ( .D(data_out_r[14]), .CK(clk), .RN(rst_n), .Q(
        data_out[14]) );
  DFFRQX1M data_out_reg_15_ ( .D(data_out_r[15]), .CK(clk), .RN(rst_n), .Q(
        data_out[15]) );
  DFFRQX1M data_out_reg_17_ ( .D(data_out_r[17]), .CK(clk), .RN(rst_n), .Q(
        data_out[17]) );
  DFFRQX1M data_out_reg_16_ ( .D(data_out_r[16]), .CK(clk), .RN(rst_n), .Q(
        data_out[16]) );
  DFFRQX1M data_out_reg_19_ ( .D(data_out_r[19]), .CK(clk), .RN(rst_n), .Q(
        data_out[19]) );
  DFFRQX1M data_out_reg_18_ ( .D(data_out_r[18]), .CK(clk), .RN(rst_n), .Q(
        data_out[18]) );
  DFFRQX1M data_out_reg_12_ ( .D(data_out_r[12]), .CK(clk), .RN(rst_n), .Q(
        data_out[12]) );
  DFFRQX1M data_out_reg_13_ ( .D(data_out_r[13]), .CK(clk), .RN(rst_n), .Q(
        data_out[13]) );
  DFFRQX1M data_out_reg_4_ ( .D(data_out_r[4]), .CK(clk), .RN(rst_n), .Q(
        data_out[4]) );
  DFFRQX1M data_out_reg_5_ ( .D(data_out_r[5]), .CK(clk), .RN(rst_n), .Q(
        data_out[5]) );
  DFFRQX1M data_out_reg_26_ ( .D(data_out_r[26]), .CK(clk), .RN(rst_n), .Q(
        data_out[26]) );
  DFFRQX1M data_out_reg_27_ ( .D(data_out_r[27]), .CK(clk), .RN(rst_n), .Q(
        data_out[27]) );
  DFFRQX1M data_out_reg_0_ ( .D(data_out_r[0]), .CK(clk), .RN(rst_n), .Q(
        data_out[0]) );
  DFFRQX1M data_out_reg_3_ ( .D(data_out_r[3]), .CK(clk), .RN(rst_n), .Q(
        data_out[3]) );
  DFFRQX1M data_out_reg_25_ ( .D(data_out_r[25]), .CK(clk), .RN(rst_n), .Q(
        data_out[25]) );
  DFFRQX1M data_out_reg_24_ ( .D(data_out_r[24]), .CK(clk), .RN(rst_n), .Q(
        data_out[24]) );
  DFFRQX1M data_out_reg_31_ ( .D(data_out_r[31]), .CK(clk), .RN(rst_n), .Q(
        data_out[31]) );
  DFFRQX1M data_out_reg_9_ ( .D(data_out_r[9]), .CK(clk), .RN(rst_n), .Q(
        data_out[9]) );
  DFFRQX1M data_out_reg_8_ ( .D(data_out_r[8]), .CK(clk), .RN(rst_n), .Q(
        data_out[8]) );
  DFFRQX1M data_out_reg_1_ ( .D(data_out_r[1]), .CK(clk), .RN(rst_n), .Q(
        data_out[1]) );
  DFFRQX1M data_out_reg_10_ ( .D(data_out_r[10]), .CK(clk), .RN(rst_n), .Q(
        data_out[10]) );
  DFFRQX1M data_out_reg_11_ ( .D(data_out_r[11]), .CK(clk), .RN(rst_n), .Q(
        data_out[11]) );
  DFFRQX1M data_out_reg_30_ ( .D(data_out_r[30]), .CK(clk), .RN(rst_n), .Q(
        data_out[30]) );
  DFFRQX1M data_out_reg_20_ ( .D(data_out_r[20]), .CK(clk), .RN(rst_n), .Q(
        data_out[20]) );
  DFFRQX1M data_out_reg_21_ ( .D(data_out_r[21]), .CK(clk), .RN(rst_n), .Q(
        data_out[21]) );
  DFFRQX1M data_out_reg_2_ ( .D(data_out_r[2]), .CK(clk), .RN(rst_n), .Q(
        data_out[2]) );
  DFFRQX1M data_out_reg_29_ ( .D(data_out_r[29]), .CK(clk), .RN(rst_n), .Q(
        data_out[29]) );
  DFFRQX1M data_out_reg_28_ ( .D(data_out_r[28]), .CK(clk), .RN(rst_n), .Q(
        data_out[28]) );
endmodule

