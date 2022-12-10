/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Sat Dec 10 21:30:31 2022
/////////////////////////////////////////////////////////////


module timerapb_DW01_inc_0 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;

  ADDHX1M U2 ( .A(A[30]), .B(n2), .CO(n1), .S(SUM[30]) );
  ADDHX1M U3 ( .A(A[29]), .B(n3), .CO(n2), .S(SUM[29]) );
  ADDHX1M U4 ( .A(A[28]), .B(n4), .CO(n3), .S(SUM[28]) );
  ADDHX1M U5 ( .A(A[27]), .B(n5), .CO(n4), .S(SUM[27]) );
  ADDHX1M U6 ( .A(A[26]), .B(n6), .CO(n5), .S(SUM[26]) );
  ADDHX1M U7 ( .A(A[25]), .B(n7), .CO(n6), .S(SUM[25]) );
  ADDHX1M U8 ( .A(A[24]), .B(n8), .CO(n7), .S(SUM[24]) );
  ADDHX1M U9 ( .A(A[23]), .B(n9), .CO(n8), .S(SUM[23]) );
  ADDHX1M U10 ( .A(A[22]), .B(n10), .CO(n9), .S(SUM[22]) );
  ADDHX1M U11 ( .A(A[21]), .B(n11), .CO(n10), .S(SUM[21]) );
  ADDHX1M U12 ( .A(A[20]), .B(n12), .CO(n11), .S(SUM[20]) );
  ADDHX1M U13 ( .A(A[19]), .B(n13), .CO(n12), .S(SUM[19]) );
  ADDHX1M U14 ( .A(A[18]), .B(n14), .CO(n13), .S(SUM[18]) );
  ADDHX1M U15 ( .A(A[17]), .B(n15), .CO(n14), .S(SUM[17]) );
  ADDHX1M U16 ( .A(A[16]), .B(n16), .CO(n15), .S(SUM[16]) );
  ADDHX1M U17 ( .A(A[15]), .B(n17), .CO(n16), .S(SUM[15]) );
  ADDHX1M U18 ( .A(A[14]), .B(n18), .CO(n17), .S(SUM[14]) );
  ADDHX1M U19 ( .A(A[13]), .B(n19), .CO(n18), .S(SUM[13]) );
  ADDHX1M U20 ( .A(A[12]), .B(n20), .CO(n19), .S(SUM[12]) );
  ADDHX1M U21 ( .A(A[11]), .B(n21), .CO(n20), .S(SUM[11]) );
  ADDHX1M U22 ( .A(A[10]), .B(n22), .CO(n21), .S(SUM[10]) );
  ADDHX1M U23 ( .A(A[9]), .B(n23), .CO(n22), .S(SUM[9]) );
  ADDHX1M U24 ( .A(A[8]), .B(n24), .CO(n23), .S(SUM[8]) );
  ADDHX1M U25 ( .A(A[7]), .B(n25), .CO(n24), .S(SUM[7]) );
  ADDHX1M U26 ( .A(A[6]), .B(n26), .CO(n25), .S(SUM[6]) );
  ADDHX1M U27 ( .A(A[5]), .B(n27), .CO(n26), .S(SUM[5]) );
  ADDHX1M U28 ( .A(A[4]), .B(n28), .CO(n27), .S(SUM[4]) );
  ADDHX1M U29 ( .A(A[3]), .B(n29), .CO(n28), .S(SUM[3]) );
  ADDHX1M U30 ( .A(A[2]), .B(n30), .CO(n29), .S(SUM[2]) );
  ADDHX1M U31 ( .A(A[1]), .B(A[0]), .CO(n30), .S(SUM[1]) );
  XOR2XLM U35 ( .A(n1), .B(A[31]), .Y(SUM[31]) );
  INVXLM U36 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module timerapb_DW01_inc_1 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;

  ADDHX1M U2 ( .A(A[30]), .B(n2), .CO(n1), .S(SUM[30]) );
  ADDHX1M U3 ( .A(A[29]), .B(n3), .CO(n2), .S(SUM[29]) );
  ADDHX1M U4 ( .A(A[28]), .B(n4), .CO(n3), .S(SUM[28]) );
  ADDHX1M U5 ( .A(A[27]), .B(n5), .CO(n4), .S(SUM[27]) );
  ADDHX1M U6 ( .A(A[26]), .B(n6), .CO(n5), .S(SUM[26]) );
  ADDHX1M U7 ( .A(A[25]), .B(n7), .CO(n6), .S(SUM[25]) );
  ADDHX1M U8 ( .A(A[24]), .B(n8), .CO(n7), .S(SUM[24]) );
  ADDHX1M U9 ( .A(A[23]), .B(n9), .CO(n8), .S(SUM[23]) );
  ADDHX1M U10 ( .A(A[22]), .B(n10), .CO(n9), .S(SUM[22]) );
  ADDHX1M U11 ( .A(A[21]), .B(n11), .CO(n10), .S(SUM[21]) );
  ADDHX1M U12 ( .A(A[20]), .B(n12), .CO(n11), .S(SUM[20]) );
  ADDHX1M U13 ( .A(A[19]), .B(n13), .CO(n12), .S(SUM[19]) );
  ADDHX1M U14 ( .A(A[18]), .B(n14), .CO(n13), .S(SUM[18]) );
  ADDHX1M U15 ( .A(A[17]), .B(n15), .CO(n14), .S(SUM[17]) );
  ADDHX1M U16 ( .A(A[16]), .B(n16), .CO(n15), .S(SUM[16]) );
  ADDHX1M U17 ( .A(A[15]), .B(n17), .CO(n16), .S(SUM[15]) );
  ADDHX1M U18 ( .A(A[14]), .B(n18), .CO(n17), .S(SUM[14]) );
  ADDHX1M U19 ( .A(A[13]), .B(n19), .CO(n18), .S(SUM[13]) );
  ADDHX1M U20 ( .A(A[12]), .B(n20), .CO(n19), .S(SUM[12]) );
  ADDHX1M U21 ( .A(A[11]), .B(n21), .CO(n20), .S(SUM[11]) );
  ADDHX1M U22 ( .A(A[10]), .B(n22), .CO(n21), .S(SUM[10]) );
  ADDHX1M U23 ( .A(A[9]), .B(n23), .CO(n22), .S(SUM[9]) );
  ADDHX1M U24 ( .A(A[8]), .B(n24), .CO(n23), .S(SUM[8]) );
  ADDHX1M U25 ( .A(A[7]), .B(n25), .CO(n24), .S(SUM[7]) );
  ADDHX1M U26 ( .A(A[6]), .B(n26), .CO(n25), .S(SUM[6]) );
  ADDHX1M U27 ( .A(A[5]), .B(n27), .CO(n26), .S(SUM[5]) );
  ADDHX1M U28 ( .A(A[4]), .B(n28), .CO(n27), .S(SUM[4]) );
  ADDHX1M U29 ( .A(A[3]), .B(n29), .CO(n28), .S(SUM[3]) );
  ADDHX1M U30 ( .A(A[2]), .B(n30), .CO(n29), .S(SUM[2]) );
  ADDHX1M U31 ( .A(A[1]), .B(A[0]), .CO(n30), .S(SUM[1]) );
  XOR2XLM U35 ( .A(n1), .B(A[31]), .Y(SUM[31]) );
  INVXLM U36 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module timerapb ( pclk, presetn, penable, psel, paddr, pwrite, pwdata, pready, 
        prdata, timer_irq );
  input [31:0] paddr;
  input [31:0] pwdata;
  output [31:0] prdata;
  output [7:0] timer_irq;
  input pclk, presetn, penable, psel, pwrite;
  output pready;
  wire   n597, n598, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53,
         N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67,
         N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81,
         N82, N85, N86, N87, N89, N90, N92, N93, N94, N96, N97, N101,
         timer_irqr0, N187, N190, N191, N196, N197, N198, N199, N200, N201,
         N202, N203, N204, N205, N206, N207, N208, N209, N210, N211, N212,
         N213, N214, N215, N216, N217, N218, N219, N220, N221, N222, N223,
         N224, N225, N226, N227, N228, N229, N295, N296, N297, N298, N299,
         N300, N301, N302, N303, N304, N305, N306, N307, N308, N309, N310,
         N311, N312, N313, N314, N315, N316, N317, N318, N319, N320, N321,
         N322, N323, N324, N325, N326, N327, N329, N332, N333, N335, N336,
         N337, N338, N339, N340, N341, N342, N343, N344, N345, N346, N347,
         N348, N349, N350, N353, N354, N355, N356, N357, N358, N359, N360,
         N361, N362, N363, N364, N365, N366, N367, N368, N369, N370, N371,
         N372, N373, N374, N382, N383, N385, N386, N388, N391, timer_irqr1,
         N398, N400, N401, N406, N407, N408, N409, N410, N411, N412, N413,
         N414, N415, N416, N417, N418, N419, N420, N421, N422, N423, N424,
         N425, N426, N427, N428, N429, N430, N431, N432, N433, N434, N435,
         N436, N437, N438, N439, N473, N474, N475, N476, N477, N478, N479,
         N480, N481, N482, N483, N484, N485, N486, N487, N490, N491, N492,
         N493, N494, N495, N496, N497, N498, N499, N500, N501, N502, N503,
         N504, N505, N506, N507, N508, N509, N510, N511, N576, N577, N578,
         N579, N580, N581, N582, N583, N584, N585, N586, N587, N588, N589,
         N590, N591, N592, N593, N594, N595, N596, N597, N598, N599, N600,
         N601, N602, N603, N604, N605, N606, N607, N608, N610, N613, N615,
         N654, N662, N663, N664, N665, N666, N667, N670, N673, N674, N678,
         N679, N681, N682, N683, N684, N685, N686, N687, N688, N689, N690,
         N691, N692, N693, N694, N699, N707, N709, N710, N711, N713, N714,
         N718, N719, N722, N726, N728, N729, N730, N83, N669, N668, N655, N612,
         N611, N397, N390, N389, N387, N375, N331, N330, N186, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n515,
         n516, n517, n518, n519, n521, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596;
  wire   [31:0] timer0status;
  wire   [31:0] timer0_value;
  wire   [31:0] timer0count;
  wire   [31:0] timer1status;
  wire   [31:0] timer1_value;
  wire   [31:0] timer1count;
  assign pready = 1'b1;

  AND2X1M C2495 ( .A(N654), .B(N669), .Y(N670) );
  AND2X1M C2494 ( .A(N387), .B(N668), .Y(N669) );
  INVXLM I_73 ( .A(N615), .Y(N668) );
  AND2X1M C2492 ( .A(N615), .B(N387), .Y(N667) );
  OR2X1M C2484 ( .A(N615), .B(N333), .Y(N655) );
  AND2X1M C2476 ( .A(n561), .B(N611), .Y(N612) );
  INVXLM I_70 ( .A(N400), .Y(N611) );
  AND2X1M C2473 ( .A(N400), .B(n561), .Y(N610) );
  CLKINVX1M I_68 ( .A(N510), .Y(N511) );
  INVXLM I_67 ( .A(N406), .Y(N407) );
  AND2X1M C2452 ( .A(timer_irqr1), .B(N397), .Y(N398) );
  INVXLM I_64 ( .A(timer1status[1]), .Y(N397) );
  AND2X1M C2442 ( .A(N374), .B(N390), .Y(N391) );
  AND2X1M C2441 ( .A(N387), .B(N389), .Y(N390) );
  INVXLM I_60 ( .A(N335), .Y(N389) );
  AND2X1M C2439 ( .A(N335), .B(N387), .Y(N388) );
  OR2X1M C2431 ( .A(N335), .B(N333), .Y(N375) );
  AND2X1M C2420 ( .A(n560), .B(N330), .Y(N331) );
  INVXLM I_56 ( .A(N190), .Y(N330) );
  AND2X1M C2417 ( .A(N190), .B(n560), .Y(N329) );
  INVXLM I_54 ( .A(N196), .Y(N197) );
  AND2X1M C2396 ( .A(timer_irqr0), .B(N186), .Y(N187) );
  INVXLM I_51 ( .A(timer0status[1]), .Y(N186) );
  OR2X2M C91 ( .A(N92), .B(N96), .Y(N97) );
  OR2X1M C85 ( .A(N92), .B(N93), .Y(N94) );
  OR2X2M C80 ( .A(N85), .B(N89), .Y(N90) );
  OR2X2M C74 ( .A(N85), .B(N86), .Y(N87) );
  AND2X1M C2479 ( .A(N729), .B(N510), .Y(N654) );
  AND2X1M C2478 ( .A(timer1status[2]), .B(N406), .Y(N615) );
  INVXLM I_65 ( .A(timer1status[2]), .Y(N729) );
  AND2X1M C2454 ( .A(timer1status[0]), .B(N729), .Y(N400) );
  AND2X1M C2426 ( .A(N726), .B(N373), .Y(N374) );
  AND2X1M C2425 ( .A(timer0status[2]), .B(N196), .Y(N335) );
  INVXLM I_52 ( .A(timer0status[2]), .Y(N726) );
  AND2X1M C2401 ( .A(timer0status[0]), .B(N726), .Y(N190) );
  CLKINVX1M I_36 ( .A(paddr[4]), .Y(N56) );
  CLKINVX1M I_35 ( .A(paddr[5]), .Y(N55) );
  CLKINVX1M I_34 ( .A(paddr[6]), .Y(N54) );
  CLKINVX1M I_33 ( .A(paddr[7]), .Y(N53) );
  INVXLM I_32 ( .A(paddr[8]), .Y(N52) );
  INVXLM I_30 ( .A(paddr[10]), .Y(N50) );
  CLKINVX1M I_29 ( .A(paddr[11]), .Y(N49) );
  INVXLM I_28 ( .A(paddr[12]), .Y(N48) );
  CLKINVX1M I_27 ( .A(paddr[13]), .Y(N47) );
  INVXLM I_26 ( .A(paddr[14]), .Y(N46) );
  CLKINVX1M I_25 ( .A(paddr[15]), .Y(N45) );
  INVXLM I_24 ( .A(paddr[16]), .Y(N44) );
  CLKINVX1M I_23 ( .A(paddr[17]), .Y(N43) );
  INVXLM I_22 ( .A(paddr[18]), .Y(N42) );
  INVXLM I_20 ( .A(paddr[20]), .Y(N40) );
  CLKINVX1M I_19 ( .A(paddr[21]), .Y(N39) );
  INVXLM I_18 ( .A(paddr[22]), .Y(N38) );
  CLKINVX1M I_17 ( .A(paddr[23]), .Y(N37) );
  INVXLM I_16 ( .A(paddr[24]), .Y(N36) );
  CLKINVX1M I_15 ( .A(paddr[25]), .Y(N35) );
  INVXLM I_14 ( .A(paddr[26]), .Y(N34) );
  CLKINVX1M I_13 ( .A(paddr[27]), .Y(N33) );
  INVXLM I_12 ( .A(paddr[28]), .Y(N32) );
  CLKINVX1M I_11 ( .A(paddr[29]), .Y(N31) );
  INVXLM I_10 ( .A(paddr[30]), .Y(N30) );
  OR2X12M C2043 ( .A(paddr[20]), .B(N691), .Y(N692) );
  OR2X12M C2042 ( .A(paddr[21]), .B(N690), .Y(N691) );
  OR2X12M C2041 ( .A(paddr[22]), .B(N689), .Y(N690) );
  OR2X1M C90 ( .A(paddr[1]), .B(N714), .Y(N96) );
  OR2X1M C84 ( .A(paddr[1]), .B(paddr[0]), .Y(N93) );
  OR2X2M C79 ( .A(N681), .B(N714), .Y(N89) );
  OR2X2M C73 ( .A(N681), .B(paddr[0]), .Y(N86) );
  OR2X2M C72 ( .A(paddr[3]), .B(paddr[2]), .Y(N85) );
  AND2X2M C63 ( .A(N73), .B(N74), .Y(N79) );
  AND2X2M C61 ( .A(N69), .B(N70), .Y(N77) );
  AND2X2M C59 ( .A(N65), .B(N66), .Y(N75) );
  AND2X1M C58 ( .A(N63), .B(N64), .Y(N74) );
  AND2X2M C57 ( .A(N61), .B(N62), .Y(N73) );
  AND2X2M C56 ( .A(N59), .B(N60), .Y(N72) );
  AND2X2M C55 ( .A(N57), .B(N58), .Y(N71) );
  AND2X1M C54 ( .A(N55), .B(N56), .Y(N70) );
  AND2X1M C53 ( .A(N53), .B(N54), .Y(N69) );
  AND2X1M C52 ( .A(N51), .B(N52), .Y(N68) );
  AND2X1M C51 ( .A(N49), .B(N50), .Y(N67) );
  AND2X1M C50 ( .A(N47), .B(N48), .Y(N66) );
  AND2X1M C49 ( .A(N45), .B(N46), .Y(N65) );
  AND2X1M C48 ( .A(N43), .B(N44), .Y(N64) );
  AND2X1M C47 ( .A(N41), .B(N42), .Y(N63) );
  AND2X1M C46 ( .A(N39), .B(N40), .Y(N62) );
  AND2X1M C45 ( .A(N37), .B(N38), .Y(N61) );
  AND2X1M C44 ( .A(N35), .B(N36), .Y(N60) );
  AND2X1M C43 ( .A(N33), .B(N34), .Y(N59) );
  AND2X1M C42 ( .A(N31), .B(N32), .Y(N58) );
  AND2X1M C41 ( .A(N29), .B(N30), .Y(N57) );
  NAND3XLM U3 ( .A(n1), .B(n2), .C(n3), .Y(n104) );
  AOI222XLM U4 ( .A0(n4), .A1(timer1_value[0]), .B0(n5), .B1(timer0count[0]), 
        .C0(n6), .C1(timer1status[0]), .Y(n3) );
  AOI22XLM U5 ( .A0(n7), .A1(timer0status[0]), .B0(n8), .B1(timer0_value[0]), 
        .Y(n2) );
  AOI22XLM U6 ( .A0(pwrite), .A1(prdata[0]), .B0(n9), .B1(timer1count[0]), .Y(
        n1) );
  NAND3XLM U7 ( .A(n10), .B(n11), .C(n12), .Y(n105) );
  AOI222XLM U8 ( .A0(n4), .A1(timer1_value[1]), .B0(n5), .B1(timer0count[1]), 
        .C0(n6), .C1(timer1status[1]), .Y(n12) );
  AOI22XLM U9 ( .A0(n7), .A1(timer0status[1]), .B0(n8), .B1(timer0_value[1]), 
        .Y(n11) );
  AOI22XLM U10 ( .A0(pwrite), .A1(prdata[1]), .B0(n9), .B1(timer1count[1]), 
        .Y(n10) );
  NAND3XLM U11 ( .A(n13), .B(n14), .C(n15), .Y(n106) );
  AOI222XLM U12 ( .A0(n4), .A1(timer1_value[31]), .B0(n5), .B1(timer0count[31]), .C0(n6), .C1(timer1status[31]), .Y(n15) );
  AOI22XLM U13 ( .A0(n7), .A1(timer0status[31]), .B0(n8), .B1(timer0_value[31]), .Y(n14) );
  AOI22XLM U14 ( .A0(pwrite), .A1(prdata[31]), .B0(n9), .B1(timer1count[31]), 
        .Y(n13) );
  NAND3XLM U15 ( .A(n16), .B(n17), .C(n18), .Y(n107) );
  AOI222XLM U16 ( .A0(n4), .A1(timer1_value[30]), .B0(n5), .B1(timer0count[30]), .C0(n6), .C1(timer1status[30]), .Y(n18) );
  AOI22XLM U17 ( .A0(n7), .A1(timer0status[30]), .B0(n8), .B1(timer0_value[30]), .Y(n17) );
  AOI22XLM U18 ( .A0(pwrite), .A1(prdata[30]), .B0(n9), .B1(timer1count[30]), 
        .Y(n16) );
  NAND3XLM U19 ( .A(n19), .B(n20), .C(n21), .Y(n108) );
  AOI222XLM U20 ( .A0(n4), .A1(timer1_value[29]), .B0(n5), .B1(timer0count[29]), .C0(n6), .C1(timer1status[29]), .Y(n21) );
  AOI22XLM U21 ( .A0(n7), .A1(timer0status[29]), .B0(n8), .B1(timer0_value[29]), .Y(n20) );
  AOI22XLM U22 ( .A0(pwrite), .A1(prdata[29]), .B0(n9), .B1(timer1count[29]), 
        .Y(n19) );
  NAND3XLM U23 ( .A(n22), .B(n23), .C(n24), .Y(n109) );
  AOI222XLM U24 ( .A0(n4), .A1(timer1_value[28]), .B0(n5), .B1(timer0count[28]), .C0(n6), .C1(timer1status[28]), .Y(n24) );
  AOI22XLM U25 ( .A0(n7), .A1(timer0status[28]), .B0(n8), .B1(timer0_value[28]), .Y(n23) );
  AOI22XLM U26 ( .A0(pwrite), .A1(prdata[28]), .B0(n9), .B1(timer1count[28]), 
        .Y(n22) );
  NAND3XLM U27 ( .A(n25), .B(n26), .C(n27), .Y(n110) );
  AOI222XLM U28 ( .A0(n4), .A1(timer1_value[27]), .B0(n5), .B1(timer0count[27]), .C0(n6), .C1(timer1status[27]), .Y(n27) );
  AOI22XLM U29 ( .A0(n7), .A1(timer0status[27]), .B0(n8), .B1(timer0_value[27]), .Y(n26) );
  AOI22XLM U30 ( .A0(pwrite), .A1(prdata[27]), .B0(n9), .B1(timer1count[27]), 
        .Y(n25) );
  NAND3XLM U31 ( .A(n28), .B(n29), .C(n30), .Y(n111) );
  AOI222XLM U32 ( .A0(n4), .A1(timer1_value[26]), .B0(n5), .B1(timer0count[26]), .C0(n6), .C1(timer1status[26]), .Y(n30) );
  AOI22XLM U33 ( .A0(n7), .A1(timer0status[26]), .B0(n8), .B1(timer0_value[26]), .Y(n29) );
  AOI22XLM U34 ( .A0(pwrite), .A1(prdata[26]), .B0(n9), .B1(timer1count[26]), 
        .Y(n28) );
  NAND3XLM U35 ( .A(n31), .B(n32), .C(n33), .Y(n112) );
  AOI222XLM U36 ( .A0(n4), .A1(timer1_value[25]), .B0(n5), .B1(timer0count[25]), .C0(n6), .C1(timer1status[25]), .Y(n33) );
  AOI22XLM U37 ( .A0(n7), .A1(timer0status[25]), .B0(n8), .B1(timer0_value[25]), .Y(n32) );
  AOI22XLM U38 ( .A0(pwrite), .A1(prdata[25]), .B0(n9), .B1(timer1count[25]), 
        .Y(n31) );
  NAND3XLM U39 ( .A(n34), .B(n35), .C(n36), .Y(n113) );
  AOI222XLM U40 ( .A0(n4), .A1(timer1_value[24]), .B0(n5), .B1(timer0count[24]), .C0(n6), .C1(timer1status[24]), .Y(n36) );
  AOI22XLM U41 ( .A0(n7), .A1(timer0status[24]), .B0(n8), .B1(timer0_value[24]), .Y(n35) );
  AOI22XLM U42 ( .A0(pwrite), .A1(prdata[24]), .B0(n9), .B1(timer1count[24]), 
        .Y(n34) );
  NAND3XLM U43 ( .A(n37), .B(n38), .C(n39), .Y(n114) );
  AOI222XLM U44 ( .A0(n4), .A1(timer1_value[23]), .B0(n5), .B1(timer0count[23]), .C0(n6), .C1(timer1status[23]), .Y(n39) );
  AOI22XLM U45 ( .A0(n7), .A1(timer0status[23]), .B0(n8), .B1(timer0_value[23]), .Y(n38) );
  AOI22XLM U46 ( .A0(pwrite), .A1(prdata[23]), .B0(n9), .B1(timer1count[23]), 
        .Y(n37) );
  NAND3XLM U47 ( .A(n40), .B(n41), .C(n42), .Y(n115) );
  AOI222XLM U48 ( .A0(n4), .A1(timer1_value[22]), .B0(n5), .B1(timer0count[22]), .C0(n6), .C1(timer1status[22]), .Y(n42) );
  AOI22XLM U49 ( .A0(n7), .A1(timer0status[22]), .B0(n8), .B1(timer0_value[22]), .Y(n41) );
  AOI22XLM U50 ( .A0(pwrite), .A1(prdata[22]), .B0(n9), .B1(timer1count[22]), 
        .Y(n40) );
  NAND3XLM U51 ( .A(n43), .B(n44), .C(n45), .Y(n116) );
  AOI222XLM U52 ( .A0(n4), .A1(timer1_value[21]), .B0(n5), .B1(timer0count[21]), .C0(n6), .C1(timer1status[21]), .Y(n45) );
  AOI22XLM U53 ( .A0(n7), .A1(timer0status[21]), .B0(n8), .B1(timer0_value[21]), .Y(n44) );
  AOI22XLM U54 ( .A0(pwrite), .A1(prdata[21]), .B0(n9), .B1(timer1count[21]), 
        .Y(n43) );
  NAND3XLM U55 ( .A(n46), .B(n47), .C(n48), .Y(n117) );
  AOI222XLM U56 ( .A0(n4), .A1(timer1_value[20]), .B0(n5), .B1(timer0count[20]), .C0(n6), .C1(timer1status[20]), .Y(n48) );
  AOI22XLM U57 ( .A0(n7), .A1(timer0status[20]), .B0(n8), .B1(timer0_value[20]), .Y(n47) );
  AOI22XLM U58 ( .A0(pwrite), .A1(prdata[20]), .B0(n9), .B1(timer1count[20]), 
        .Y(n46) );
  NAND3XLM U59 ( .A(n49), .B(n50), .C(n51), .Y(n118) );
  AOI222XLM U60 ( .A0(n4), .A1(timer1_value[19]), .B0(n5), .B1(timer0count[19]), .C0(n6), .C1(timer1status[19]), .Y(n51) );
  AOI22XLM U61 ( .A0(n7), .A1(timer0status[19]), .B0(n8), .B1(timer0_value[19]), .Y(n50) );
  AOI22XLM U62 ( .A0(pwrite), .A1(prdata[19]), .B0(n9), .B1(timer1count[19]), 
        .Y(n49) );
  NAND3XLM U63 ( .A(n52), .B(n53), .C(n54), .Y(n119) );
  AOI222XLM U64 ( .A0(n4), .A1(timer1_value[18]), .B0(n5), .B1(timer0count[18]), .C0(n6), .C1(timer1status[18]), .Y(n54) );
  AOI22XLM U65 ( .A0(n7), .A1(timer0status[18]), .B0(n8), .B1(timer0_value[18]), .Y(n53) );
  AOI22XLM U66 ( .A0(pwrite), .A1(prdata[18]), .B0(n9), .B1(timer1count[18]), 
        .Y(n52) );
  NAND3XLM U67 ( .A(n55), .B(n56), .C(n57), .Y(n120) );
  AOI222XLM U68 ( .A0(n4), .A1(timer1_value[17]), .B0(n5), .B1(timer0count[17]), .C0(n6), .C1(timer1status[17]), .Y(n57) );
  AOI22XLM U69 ( .A0(n7), .A1(timer0status[17]), .B0(n8), .B1(timer0_value[17]), .Y(n56) );
  AOI22XLM U70 ( .A0(pwrite), .A1(prdata[17]), .B0(n9), .B1(timer1count[17]), 
        .Y(n55) );
  NAND3XLM U71 ( .A(n58), .B(n59), .C(n60), .Y(n121) );
  AOI222XLM U72 ( .A0(n4), .A1(timer1_value[16]), .B0(n5), .B1(timer0count[16]), .C0(n6), .C1(timer1status[16]), .Y(n60) );
  AOI22XLM U73 ( .A0(n7), .A1(timer0status[16]), .B0(n8), .B1(timer0_value[16]), .Y(n59) );
  AOI22XLM U74 ( .A0(pwrite), .A1(prdata[16]), .B0(n9), .B1(timer1count[16]), 
        .Y(n58) );
  NAND3XLM U75 ( .A(n61), .B(n62), .C(n63), .Y(n122) );
  AOI222XLM U76 ( .A0(n4), .A1(timer1_value[15]), .B0(n5), .B1(timer0count[15]), .C0(n6), .C1(timer1status[15]), .Y(n63) );
  AOI22XLM U77 ( .A0(n7), .A1(timer0status[15]), .B0(n8), .B1(timer0_value[15]), .Y(n62) );
  AOI22XLM U78 ( .A0(pwrite), .A1(prdata[15]), .B0(n9), .B1(timer1count[15]), 
        .Y(n61) );
  NAND3XLM U79 ( .A(n64), .B(n65), .C(n66), .Y(n123) );
  AOI222XLM U80 ( .A0(n4), .A1(timer1_value[14]), .B0(n5), .B1(timer0count[14]), .C0(n6), .C1(timer1status[14]), .Y(n66) );
  AOI22XLM U81 ( .A0(n7), .A1(timer0status[14]), .B0(n8), .B1(timer0_value[14]), .Y(n65) );
  AOI22XLM U82 ( .A0(pwrite), .A1(prdata[14]), .B0(n9), .B1(timer1count[14]), 
        .Y(n64) );
  NAND3XLM U83 ( .A(n67), .B(n68), .C(n69), .Y(n124) );
  AOI222XLM U84 ( .A0(n4), .A1(timer1_value[13]), .B0(n5), .B1(timer0count[13]), .C0(n6), .C1(timer1status[13]), .Y(n69) );
  AOI22XLM U85 ( .A0(n7), .A1(timer0status[13]), .B0(n8), .B1(timer0_value[13]), .Y(n68) );
  AOI22XLM U86 ( .A0(pwrite), .A1(prdata[13]), .B0(n9), .B1(timer1count[13]), 
        .Y(n67) );
  NAND3XLM U87 ( .A(n70), .B(n71), .C(n72), .Y(n125) );
  AOI222XLM U88 ( .A0(n4), .A1(timer1_value[12]), .B0(n5), .B1(timer0count[12]), .C0(n6), .C1(timer1status[12]), .Y(n72) );
  AOI22XLM U89 ( .A0(n7), .A1(timer0status[12]), .B0(n8), .B1(timer0_value[12]), .Y(n71) );
  AOI22XLM U90 ( .A0(pwrite), .A1(prdata[12]), .B0(n9), .B1(timer1count[12]), 
        .Y(n70) );
  NAND3XLM U91 ( .A(n73), .B(n74), .C(n75), .Y(n126) );
  AOI222XLM U92 ( .A0(n4), .A1(timer1_value[11]), .B0(n5), .B1(timer0count[11]), .C0(n6), .C1(timer1status[11]), .Y(n75) );
  AOI22XLM U93 ( .A0(n7), .A1(timer0status[11]), .B0(n8), .B1(timer0_value[11]), .Y(n74) );
  AOI22XLM U94 ( .A0(pwrite), .A1(prdata[11]), .B0(n9), .B1(timer1count[11]), 
        .Y(n73) );
  NAND3XLM U95 ( .A(n76), .B(n77), .C(n78), .Y(n127) );
  AOI222XLM U96 ( .A0(n4), .A1(timer1_value[10]), .B0(n5), .B1(timer0count[10]), .C0(n6), .C1(timer1status[10]), .Y(n78) );
  AOI22XLM U97 ( .A0(n7), .A1(timer0status[10]), .B0(n8), .B1(timer0_value[10]), .Y(n77) );
  AOI22XLM U98 ( .A0(pwrite), .A1(prdata[10]), .B0(n9), .B1(timer1count[10]), 
        .Y(n76) );
  NAND3XLM U99 ( .A(n79), .B(n80), .C(n81), .Y(n128) );
  AOI222XLM U100 ( .A0(n4), .A1(timer1_value[9]), .B0(n5), .B1(timer0count[9]), 
        .C0(n6), .C1(timer1status[9]), .Y(n81) );
  AOI22XLM U101 ( .A0(n7), .A1(timer0status[9]), .B0(n8), .B1(timer0_value[9]), 
        .Y(n80) );
  AOI22XLM U102 ( .A0(pwrite), .A1(prdata[9]), .B0(n9), .B1(timer1count[9]), 
        .Y(n79) );
  NAND3XLM U103 ( .A(n82), .B(n83), .C(n84), .Y(n129) );
  AOI222XLM U104 ( .A0(n4), .A1(timer1_value[8]), .B0(n5), .B1(timer0count[8]), 
        .C0(n6), .C1(timer1status[8]), .Y(n84) );
  AOI22XLM U105 ( .A0(n7), .A1(timer0status[8]), .B0(n8), .B1(timer0_value[8]), 
        .Y(n83) );
  AOI22XLM U106 ( .A0(pwrite), .A1(prdata[8]), .B0(n9), .B1(timer1count[8]), 
        .Y(n82) );
  NAND3XLM U107 ( .A(n85), .B(n86), .C(n87), .Y(n130) );
  AOI222XLM U108 ( .A0(n4), .A1(timer1_value[7]), .B0(n5), .B1(timer0count[7]), 
        .C0(n6), .C1(timer1status[7]), .Y(n87) );
  AOI22XLM U109 ( .A0(n7), .A1(timer0status[7]), .B0(n8), .B1(timer0_value[7]), 
        .Y(n86) );
  AOI22XLM U110 ( .A0(pwrite), .A1(prdata[7]), .B0(n9), .B1(timer1count[7]), 
        .Y(n85) );
  NAND3XLM U111 ( .A(n88), .B(n89), .C(n90), .Y(n131) );
  AOI222XLM U112 ( .A0(n4), .A1(timer1_value[6]), .B0(n5), .B1(timer0count[6]), 
        .C0(n6), .C1(N475), .Y(n90) );
  AOI22XLM U113 ( .A0(n7), .A1(N338), .B0(n8), .B1(timer0_value[6]), .Y(n89)
         );
  AOI22XLM U114 ( .A0(pwrite), .A1(prdata[6]), .B0(n9), .B1(timer1count[6]), 
        .Y(n88) );
  NAND3XLM U115 ( .A(n91), .B(n92), .C(n93), .Y(n132) );
  AOI222XLM U116 ( .A0(n4), .A1(timer1_value[5]), .B0(n5), .B1(timer0count[5]), 
        .C0(n6), .C1(N474), .Y(n93) );
  AOI22XLM U117 ( .A0(n7), .A1(N337), .B0(n8), .B1(timer0_value[5]), .Y(n92)
         );
  AOI22XLM U118 ( .A0(pwrite), .A1(prdata[5]), .B0(n9), .B1(timer1count[5]), 
        .Y(n91) );
  NAND3XLM U119 ( .A(n94), .B(n95), .C(n96), .Y(n133) );
  AOI222XLM U120 ( .A0(n4), .A1(timer1_value[4]), .B0(n5), .B1(timer0count[4]), 
        .C0(n6), .C1(N473), .Y(n96) );
  AOI22XLM U121 ( .A0(n7), .A1(N336), .B0(n8), .B1(timer0_value[4]), .Y(n95)
         );
  AOI22XLM U122 ( .A0(pwrite), .A1(prdata[4]), .B0(n9), .B1(timer1count[4]), 
        .Y(n94) );
  NAND3XLM U123 ( .A(n97), .B(n98), .C(n99), .Y(n134) );
  AOI222XLM U124 ( .A0(n4), .A1(timer1_value[3]), .B0(n5), .B1(timer0count[3]), 
        .C0(n6), .C1(timer1status[3]), .Y(n99) );
  AOI22XLM U125 ( .A0(n7), .A1(timer0status[3]), .B0(n8), .B1(timer0_value[3]), 
        .Y(n98) );
  AOI22XLM U126 ( .A0(pwrite), .A1(prdata[3]), .B0(n9), .B1(timer1count[3]), 
        .Y(n97) );
  NAND3XLM U127 ( .A(n100), .B(n101), .C(n102), .Y(n135) );
  AOI222XLM U128 ( .A0(n4), .A1(timer1_value[2]), .B0(n5), .B1(timer0count[2]), 
        .C0(n6), .C1(timer1status[2]), .Y(n102) );
  NOR2X1M U129 ( .A(N97), .B(n103), .Y(n6) );
  NOR2X1M U130 ( .A(N94), .B(n103), .Y(n5) );
  NOR3X1M U131 ( .A(N92), .B(N86), .C(n103), .Y(n4) );
  AOI22XLM U132 ( .A0(n7), .A1(timer0status[2]), .B0(n8), .B1(timer0_value[2]), 
        .Y(n101) );
  NOR2X1M U133 ( .A(N90), .B(n103), .Y(n8) );
  AOI22XLM U135 ( .A0(pwrite), .A1(prdata[2]), .B0(n9), .B1(timer1count[2]), 
        .Y(n100) );
  NOR2X1M U136 ( .A(N101), .B(n103), .Y(n9) );
  NAND2BX1M U137 ( .AN(pwrite), .B(N83), .Y(n103) );
  OAI21XLM U139 ( .A0(timer1status[3]), .A1(timer_irqr1), .B0(timer1status[1]), 
        .Y(n137) );
  AOI22X1M U140 ( .A0(timer1status[3]), .A1(N398), .B0(n555), .B1(n138), .Y(
        n136) );
  INVXLM U141 ( .A(timer1status[3]), .Y(n138) );
  OAI21XLM U143 ( .A0(timer0status[3]), .A1(timer_irqr0), .B0(timer0status[1]), 
        .Y(n140) );
  INVXLM U145 ( .A(timer0status[3]), .Y(n141) );
  NAND2XLM U146 ( .A(n142), .B(n143), .Y(N665) );
  AOI21XLM U147 ( .A0(timer1status[0]), .A1(n558), .B0(N670), .Y(n143) );
  OR2X1M U151 ( .A(N670), .B(N667), .Y(N662) );
  NOR2BXLM U153 ( .AN(N438), .B(n144), .Y(N607) );
  NOR2BXLM U154 ( .AN(N437), .B(n144), .Y(N606) );
  NOR2BXLM U155 ( .AN(N436), .B(n144), .Y(N605) );
  NOR2BXLM U156 ( .AN(N435), .B(n144), .Y(N604) );
  NOR2BXLM U157 ( .AN(N434), .B(n144), .Y(N603) );
  NOR2BXLM U158 ( .AN(N433), .B(n144), .Y(N602) );
  NOR2BXLM U159 ( .AN(N432), .B(n144), .Y(N601) );
  NOR2BXLM U160 ( .AN(N431), .B(n144), .Y(N600) );
  NOR2BXLM U161 ( .AN(N430), .B(n144), .Y(N599) );
  NOR2BXLM U162 ( .AN(N429), .B(n144), .Y(N598) );
  NOR2BXLM U163 ( .AN(N428), .B(n144), .Y(N597) );
  NOR2BXLM U164 ( .AN(N427), .B(n144), .Y(N596) );
  NOR2BXLM U165 ( .AN(N426), .B(n144), .Y(N595) );
  NOR2BXLM U166 ( .AN(N425), .B(n144), .Y(N594) );
  NOR2BXLM U167 ( .AN(N424), .B(n144), .Y(N593) );
  NOR2BXLM U168 ( .AN(N423), .B(n144), .Y(N592) );
  NOR2BXLM U169 ( .AN(N422), .B(n144), .Y(N591) );
  NOR2BXLM U170 ( .AN(N421), .B(n144), .Y(N590) );
  NOR2BXLM U171 ( .AN(N420), .B(n144), .Y(N589) );
  NOR2BXLM U172 ( .AN(N419), .B(n144), .Y(N588) );
  NOR2BXLM U173 ( .AN(N418), .B(n144), .Y(N587) );
  NOR2BXLM U174 ( .AN(N417), .B(n144), .Y(N586) );
  NOR2BXLM U175 ( .AN(N416), .B(n144), .Y(N585) );
  NOR2BXLM U176 ( .AN(N415), .B(n144), .Y(N584) );
  NOR2BXLM U177 ( .AN(N414), .B(n144), .Y(N583) );
  NOR2BXLM U178 ( .AN(N413), .B(n144), .Y(N582) );
  NOR2BXLM U179 ( .AN(N412), .B(n144), .Y(N581) );
  NOR2BXLM U180 ( .AN(N411), .B(n144), .Y(N580) );
  NOR2BXLM U181 ( .AN(N410), .B(n144), .Y(N579) );
  NOR2BXLM U182 ( .AN(N409), .B(n144), .Y(N578) );
  NOR2BXLM U183 ( .AN(N408), .B(n144), .Y(N577) );
  AOI22X1M U184 ( .A0(N610), .A1(N511), .B0(N407), .B1(n145), .Y(n144) );
  NAND2XLM U187 ( .A(n146), .B(n142), .Y(N385) );
  NAND2XLM U188 ( .A(pwdata[0]), .B(N333), .Y(n142) );
  AOI21XLM U190 ( .A0(n557), .A1(timer0status[0]), .B0(N391), .Y(n146) );
  OR2X1M U194 ( .A(N391), .B(N388), .Y(N382) );
  NOR2BXLM U195 ( .AN(N229), .B(n148), .Y(N327) );
  NOR2BX1M U196 ( .AN(N228), .B(n148), .Y(N326) );
  NOR2BXLM U198 ( .AN(N226), .B(n148), .Y(N324) );
  NOR2BXLM U199 ( .AN(N225), .B(n148), .Y(N323) );
  NOR2BXLM U200 ( .AN(N224), .B(n148), .Y(N322) );
  NOR2BXLM U201 ( .AN(N223), .B(n148), .Y(N321) );
  NOR2BXLM U202 ( .AN(N222), .B(n148), .Y(N320) );
  NOR2BXLM U203 ( .AN(N221), .B(n148), .Y(N319) );
  NOR2BXLM U204 ( .AN(N220), .B(n148), .Y(N318) );
  NOR2BXLM U205 ( .AN(N219), .B(n148), .Y(N317) );
  NOR2BXLM U206 ( .AN(N218), .B(n148), .Y(N316) );
  NOR2BXLM U207 ( .AN(N217), .B(n148), .Y(N315) );
  NOR2BXLM U208 ( .AN(N216), .B(n148), .Y(N314) );
  NOR2BXLM U209 ( .AN(N215), .B(n148), .Y(N313) );
  NOR2BXLM U210 ( .AN(N214), .B(n148), .Y(N312) );
  NOR2BXLM U211 ( .AN(N213), .B(n148), .Y(N311) );
  NOR2BXLM U212 ( .AN(N212), .B(n148), .Y(N310) );
  NOR2BXLM U213 ( .AN(N211), .B(n148), .Y(N309) );
  NOR2BXLM U214 ( .AN(N210), .B(n148), .Y(N308) );
  NOR2BXLM U215 ( .AN(N209), .B(n148), .Y(N307) );
  NOR2BXLM U216 ( .AN(N208), .B(n148), .Y(N306) );
  NOR2BXLM U217 ( .AN(N207), .B(n148), .Y(N305) );
  NOR2BXLM U218 ( .AN(N206), .B(n148), .Y(N304) );
  NOR2BXLM U219 ( .AN(N205), .B(n148), .Y(N303) );
  NOR2BXLM U220 ( .AN(N204), .B(n148), .Y(N302) );
  NOR2BXLM U221 ( .AN(N203), .B(n148), .Y(N301) );
  NOR2BXLM U222 ( .AN(N202), .B(n148), .Y(N300) );
  NOR2BXLM U223 ( .AN(N201), .B(n148), .Y(N299) );
  NOR2BXLM U224 ( .AN(N200), .B(n148), .Y(N298) );
  NOR2BXLM U225 ( .AN(N199), .B(n148), .Y(N297) );
  NOR2BXLM U226 ( .AN(N198), .B(n148), .Y(N296) );
  AOI21X1M U227 ( .A0(N197), .A1(n149), .B0(N329), .Y(n148) );
  CLKINVX1M U229 ( .A(n560), .Y(n149) );
  MX2X2M U231 ( .A(timer0count[1]), .B(N297), .S0(N295), .Y(n340) );
  MX2X2M U232 ( .A(timer0_value[31]), .B(pwdata[31]), .S0(n544), .Y(n339) );
  MX2X2M U233 ( .A(timer0_value[30]), .B(pwdata[30]), .S0(n545), .Y(n338) );
  MX2X2M U234 ( .A(timer0_value[29]), .B(pwdata[29]), .S0(N673), .Y(n337) );
  MX2X2M U235 ( .A(timer0_value[28]), .B(pwdata[28]), .S0(n544), .Y(n336) );
  MX2X2M U236 ( .A(timer0_value[27]), .B(pwdata[27]), .S0(n545), .Y(n335) );
  MX2X2M U237 ( .A(timer0_value[26]), .B(pwdata[26]), .S0(N673), .Y(n334) );
  MX2X2M U238 ( .A(timer0_value[25]), .B(pwdata[25]), .S0(n544), .Y(n333) );
  MX2X2M U239 ( .A(timer0_value[24]), .B(pwdata[24]), .S0(n545), .Y(n332) );
  MX2X2M U240 ( .A(timer0_value[23]), .B(pwdata[23]), .S0(N673), .Y(n331) );
  MX2X2M U241 ( .A(timer0_value[22]), .B(pwdata[22]), .S0(n544), .Y(n330) );
  MX2X2M U242 ( .A(timer0_value[21]), .B(pwdata[21]), .S0(n545), .Y(n329) );
  MX2X2M U243 ( .A(timer0_value[20]), .B(pwdata[20]), .S0(N673), .Y(n328) );
  MX2X2M U244 ( .A(timer0_value[19]), .B(pwdata[19]), .S0(n544), .Y(n327) );
  MX2X2M U245 ( .A(timer0_value[18]), .B(pwdata[18]), .S0(n545), .Y(n326) );
  MX2X2M U246 ( .A(timer0_value[17]), .B(pwdata[17]), .S0(N673), .Y(n325) );
  MX2X2M U247 ( .A(timer0_value[16]), .B(pwdata[16]), .S0(n544), .Y(n324) );
  MX2X2M U248 ( .A(timer0_value[15]), .B(pwdata[15]), .S0(n545), .Y(n323) );
  MX2X2M U249 ( .A(timer0_value[14]), .B(pwdata[14]), .S0(N673), .Y(n322) );
  MX2X2M U250 ( .A(timer0_value[13]), .B(pwdata[13]), .S0(n544), .Y(n321) );
  MX2X2M U251 ( .A(timer0_value[12]), .B(pwdata[12]), .S0(n545), .Y(n320) );
  MX2X2M U252 ( .A(timer0_value[11]), .B(pwdata[11]), .S0(N673), .Y(n319) );
  MX2X2M U253 ( .A(timer0_value[10]), .B(pwdata[10]), .S0(n544), .Y(n318) );
  MX2X2M U254 ( .A(timer0_value[9]), .B(pwdata[9]), .S0(n545), .Y(n317) );
  MX2X2M U255 ( .A(timer0_value[8]), .B(pwdata[8]), .S0(N673), .Y(n316) );
  MX2X2M U256 ( .A(timer0_value[7]), .B(pwdata[7]), .S0(n544), .Y(n315) );
  MX2X2M U257 ( .A(timer0_value[6]), .B(pwdata[6]), .S0(n545), .Y(n314) );
  MX2X2M U258 ( .A(timer0_value[5]), .B(pwdata[5]), .S0(N673), .Y(n313) );
  MX2X2M U259 ( .A(timer0_value[4]), .B(pwdata[4]), .S0(n544), .Y(n312) );
  MX2X2M U264 ( .A(timer0status[31]), .B(pwdata[31]), .S0(n540), .Y(n307) );
  MX2X2M U265 ( .A(timer0status[1]), .B(pwdata[1]), .S0(n541), .Y(n306) );
  MX2X2M U266 ( .A(timer0status[2]), .B(pwdata[2]), .S0(N674), .Y(n305) );
  MX2X2M U267 ( .A(timer0count[0]), .B(N296), .S0(n547), .Y(n304) );
  MX2X2M U268 ( .A(timer0count[2]), .B(N298), .S0(n547), .Y(n303) );
  MX2X2M U269 ( .A(timer0count[3]), .B(N299), .S0(N295), .Y(n302) );
  MX2X2M U270 ( .A(timer0count[4]), .B(N300), .S0(n547), .Y(n301) );
  MX2X2M U271 ( .A(timer0count[5]), .B(N301), .S0(N295), .Y(n300) );
  MX2X2M U272 ( .A(timer0count[6]), .B(N302), .S0(n547), .Y(n299) );
  MX2X2M U274 ( .A(timer0count[8]), .B(N304), .S0(n546), .Y(n297) );
  MX2X2M U275 ( .A(timer0count[9]), .B(N305), .S0(n547), .Y(n296) );
  MX2X2M U276 ( .A(timer0count[10]), .B(N306), .S0(N295), .Y(n295) );
  MX2X2M U278 ( .A(timer0count[12]), .B(N308), .S0(n547), .Y(n293) );
  MX2X2M U279 ( .A(timer0count[13]), .B(N309), .S0(N295), .Y(n292) );
  MX2X2M U280 ( .A(timer0count[14]), .B(N310), .S0(n546), .Y(n291) );
  MX2X2M U281 ( .A(timer0count[15]), .B(N311), .S0(n547), .Y(n290) );
  MX2X2M U282 ( .A(timer0count[16]), .B(N312), .S0(N295), .Y(n289) );
  MX2X2M U283 ( .A(timer0count[17]), .B(N313), .S0(n546), .Y(n288) );
  MX2X2M U285 ( .A(timer0count[19]), .B(N315), .S0(N295), .Y(n286) );
  MX2X2M U286 ( .A(timer0count[20]), .B(N316), .S0(n546), .Y(n285) );
  MX2X2M U287 ( .A(timer0count[21]), .B(N317), .S0(n547), .Y(n284) );
  MX2X2M U288 ( .A(timer0count[22]), .B(N318), .S0(N295), .Y(n283) );
  MX2X2M U289 ( .A(timer0count[23]), .B(N319), .S0(n546), .Y(n282) );
  MX2X2M U290 ( .A(timer0count[24]), .B(N320), .S0(n547), .Y(n281) );
  MX2X2M U291 ( .A(timer0count[25]), .B(N321), .S0(N295), .Y(n280) );
  MX2X2M U292 ( .A(timer0count[26]), .B(N322), .S0(n546), .Y(n279) );
  MX2X2M U293 ( .A(timer0count[27]), .B(N323), .S0(n547), .Y(n278) );
  MX2X2M U294 ( .A(timer0count[28]), .B(N324), .S0(N295), .Y(n277) );
  MX2X2M U295 ( .A(timer0count[29]), .B(N325), .S0(n546), .Y(n276) );
  MX2X2M U296 ( .A(timer0count[30]), .B(N326), .S0(n547), .Y(n275) );
  MX2X2M U298 ( .A(timer0status[3]), .B(pwdata[3]), .S0(n540), .Y(n273) );
  MX2X2M U299 ( .A(N336), .B(pwdata[4]), .S0(n541), .Y(n272) );
  MX2X2M U300 ( .A(N337), .B(pwdata[5]), .S0(N674), .Y(n271) );
  MX2X2M U301 ( .A(N338), .B(pwdata[6]), .S0(n540), .Y(n270) );
  MX2X2M U302 ( .A(timer0status[7]), .B(pwdata[7]), .S0(n541), .Y(n269) );
  MX2X2M U303 ( .A(timer0status[8]), .B(pwdata[8]), .S0(N674), .Y(n268) );
  MX2X2M U304 ( .A(timer0status[9]), .B(pwdata[9]), .S0(n540), .Y(n267) );
  MX2X2M U305 ( .A(timer0status[10]), .B(pwdata[10]), .S0(n541), .Y(n266) );
  MX2X2M U308 ( .A(timer0status[13]), .B(pwdata[13]), .S0(n541), .Y(n263) );
  MX2X2M U309 ( .A(timer0status[14]), .B(pwdata[14]), .S0(N674), .Y(n262) );
  MX2X2M U310 ( .A(timer0status[15]), .B(pwdata[15]), .S0(n540), .Y(n261) );
  MX2X2M U311 ( .A(timer0status[16]), .B(pwdata[16]), .S0(n541), .Y(n260) );
  MX2X2M U312 ( .A(timer0status[17]), .B(pwdata[17]), .S0(N674), .Y(n259) );
  MX2X2M U313 ( .A(timer0status[18]), .B(pwdata[18]), .S0(n540), .Y(n258) );
  MX2X2M U314 ( .A(timer0status[19]), .B(pwdata[19]), .S0(n541), .Y(n257) );
  MX2X2M U315 ( .A(timer0status[20]), .B(pwdata[20]), .S0(N674), .Y(n256) );
  MX2X2M U316 ( .A(timer0status[21]), .B(pwdata[21]), .S0(n540), .Y(n255) );
  MX2X2M U317 ( .A(timer0status[22]), .B(pwdata[22]), .S0(n541), .Y(n254) );
  MX2X2M U318 ( .A(timer0status[23]), .B(pwdata[23]), .S0(N674), .Y(n253) );
  MX2X2M U319 ( .A(timer0status[24]), .B(pwdata[24]), .S0(n540), .Y(n252) );
  MX2X2M U320 ( .A(timer0status[25]), .B(pwdata[25]), .S0(n541), .Y(n251) );
  MX2X2M U321 ( .A(timer0status[26]), .B(pwdata[26]), .S0(N674), .Y(n250) );
  MX2X2M U322 ( .A(timer0status[27]), .B(pwdata[27]), .S0(n540), .Y(n249) );
  MX2X2M U323 ( .A(timer0status[28]), .B(pwdata[28]), .S0(n541), .Y(n248) );
  MX2X2M U324 ( .A(timer0status[29]), .B(pwdata[29]), .S0(N674), .Y(n247) );
  MX2X2M U325 ( .A(timer0status[30]), .B(pwdata[30]), .S0(n540), .Y(n246) );
  MX2X2M U327 ( .A(timer1count[1]), .B(N578), .S0(n542), .Y(n244) );
  MX2X2M U337 ( .A(timer1count[0]), .B(N577), .S0(N576), .Y(n234) );
  MX2X2M U338 ( .A(timer1count[2]), .B(N579), .S0(n543), .Y(n233) );
  MX2X2M U339 ( .A(timer1count[3]), .B(N580), .S0(N576), .Y(n232) );
  MX2X2M U340 ( .A(timer1count[4]), .B(N581), .S0(n542), .Y(n231) );
  MX2X2M U341 ( .A(timer1count[5]), .B(N582), .S0(n543), .Y(n230) );
  MX2X2M U342 ( .A(timer1count[6]), .B(N583), .S0(N576), .Y(n229) );
  MX2X2M U343 ( .A(timer1count[7]), .B(N584), .S0(n542), .Y(n228) );
  MX2X2M U344 ( .A(timer1count[8]), .B(N585), .S0(n543), .Y(n227) );
  MX2X2M U345 ( .A(timer1count[9]), .B(N586), .S0(N576), .Y(n226) );
  MX2X2M U346 ( .A(timer1count[10]), .B(N587), .S0(n542), .Y(n225) );
  MX2X2M U347 ( .A(timer1count[11]), .B(N588), .S0(n543), .Y(n224) );
  MX2X2M U348 ( .A(timer1count[12]), .B(N589), .S0(N576), .Y(n223) );
  MX2X2M U349 ( .A(timer1count[13]), .B(N590), .S0(n542), .Y(n222) );
  MX2X2M U350 ( .A(timer1count[14]), .B(N591), .S0(n543), .Y(n221) );
  MX2X2M U351 ( .A(timer1count[15]), .B(N592), .S0(N576), .Y(n220) );
  MX2X2M U352 ( .A(timer1count[16]), .B(N593), .S0(n542), .Y(n219) );
  MX2X2M U353 ( .A(timer1count[17]), .B(N594), .S0(n543), .Y(n218) );
  MX2X2M U354 ( .A(timer1count[18]), .B(N595), .S0(N576), .Y(n217) );
  MX2X2M U356 ( .A(timer1count[20]), .B(N597), .S0(n543), .Y(n215) );
  MX2X2M U357 ( .A(timer1count[21]), .B(N598), .S0(N576), .Y(n214) );
  MX2X2M U358 ( .A(timer1count[22]), .B(N599), .S0(n542), .Y(n213) );
  MX2X2M U359 ( .A(timer1count[23]), .B(N600), .S0(n543), .Y(n212) );
  MX2X2M U360 ( .A(timer1count[24]), .B(N601), .S0(N576), .Y(n211) );
  XNOR2XLM U422 ( .A(N345), .B(timer0count[4]), .Y(n345) );
  XNOR2XLM U423 ( .A(N346), .B(timer0count[5]), .Y(n344) );
  XNOR2XLM U424 ( .A(N347), .B(timer0count[6]), .Y(n343) );
  XNOR2XLM U425 ( .A(N348), .B(timer0count[7]), .Y(n342) );
  NAND4XLM U426 ( .A(n345), .B(n344), .C(n343), .D(n342), .Y(n384) );
  XNOR2XLM U427 ( .A(N341), .B(timer0count[0]), .Y(n349) );
  XNOR2XLM U428 ( .A(N342), .B(timer0count[1]), .Y(n348) );
  XNOR2XLM U429 ( .A(N343), .B(timer0count[2]), .Y(n347) );
  XNOR2XLM U430 ( .A(N344), .B(timer0count[3]), .Y(n346) );
  NAND4XLM U431 ( .A(n349), .B(n348), .C(n347), .D(n346), .Y(n383) );
  OAI22XLM U434 ( .A0(n559), .A1(timer0count[10]), .B0(n551), .B1(
        timer0count[11]), .Y(n350) );
  AOI221XLM U435 ( .A0(n559), .A1(timer0count[10]), .B0(timer0count[11]), .B1(
        n551), .C0(n350), .Y(n360) );
  XOR2XLM U436 ( .A(N353), .B(timer0count[12]), .Y(n356) );
  XOR2XLM U437 ( .A(N354), .B(timer0count[13]), .Y(n355) );
  XOR2XLM U438 ( .A(N355), .B(timer0count[14]), .Y(n354) );
  XOR2XLM U439 ( .A(N356), .B(timer0count[15]), .Y(n353) );
  NOR4XLM U440 ( .A(n356), .B(n355), .C(n354), .D(n353), .Y(n359) );
  XNOR2XLM U441 ( .A(N349), .B(timer0count[8]), .Y(n358) );
  XNOR2XLM U442 ( .A(N350), .B(timer0count[9]), .Y(n357) );
  NAND4XLM U443 ( .A(n360), .B(n359), .C(n358), .D(n357), .Y(n382) );
  XOR2XLM U444 ( .A(N361), .B(timer0count[20]), .Y(n364) );
  XOR2XLM U445 ( .A(N362), .B(timer0count[21]), .Y(n363) );
  XOR2XLM U446 ( .A(N363), .B(timer0count[22]), .Y(n362) );
  XOR2XLM U447 ( .A(N364), .B(timer0count[23]), .Y(n361) );
  NOR4XLM U448 ( .A(n364), .B(n363), .C(n362), .D(n361), .Y(n380) );
  XOR2XLM U449 ( .A(N357), .B(timer0count[16]), .Y(n368) );
  XOR2XLM U450 ( .A(N358), .B(timer0count[17]), .Y(n367) );
  XOR2XLM U451 ( .A(N359), .B(timer0count[18]), .Y(n366) );
  XOR2XLM U452 ( .A(N360), .B(timer0count[19]), .Y(n365) );
  NOR4XLM U453 ( .A(n368), .B(n367), .C(n366), .D(n365), .Y(n379) );
  XOR2XLM U454 ( .A(N369), .B(timer0count[28]), .Y(n372) );
  XOR2XLM U455 ( .A(N370), .B(timer0count[29]), .Y(n371) );
  XOR2XLM U456 ( .A(N371), .B(timer0count[30]), .Y(n370) );
  NOR4XLM U458 ( .A(n372), .B(n371), .C(n370), .D(n369), .Y(n378) );
  XOR2XLM U459 ( .A(N365), .B(timer0count[24]), .Y(n376) );
  XOR2XLM U460 ( .A(N366), .B(timer0count[25]), .Y(n375) );
  XOR2XLM U461 ( .A(N367), .B(timer0count[26]), .Y(n374) );
  XOR2XLM U462 ( .A(N368), .B(timer0count[27]), .Y(n373) );
  NOR4XLM U463 ( .A(n376), .B(n375), .C(n374), .D(n373), .Y(n377) );
  NAND4XLM U464 ( .A(n380), .B(n379), .C(n378), .D(n377), .Y(n381) );
  NOR4XLM U465 ( .A(n384), .B(n383), .C(n382), .D(n381), .Y(N373) );
  XNOR2XLM U466 ( .A(timer0_value[4]), .B(timer0count[4]), .Y(n388) );
  XNOR2XLM U467 ( .A(timer0_value[5]), .B(timer0count[5]), .Y(n387) );
  XNOR2XLM U468 ( .A(timer0_value[6]), .B(timer0count[6]), .Y(n386) );
  XNOR2XLM U469 ( .A(timer0_value[7]), .B(timer0count[7]), .Y(n385) );
  NAND4XLM U470 ( .A(n388), .B(n387), .C(n386), .D(n385), .Y(n427) );
  XNOR2XLM U471 ( .A(timer0_value[0]), .B(timer0count[0]), .Y(n392) );
  XNOR2XLM U472 ( .A(timer0_value[1]), .B(timer0count[1]), .Y(n391) );
  XNOR2XLM U473 ( .A(timer0_value[2]), .B(timer0count[2]), .Y(n390) );
  XNOR2XLM U474 ( .A(timer0_value[3]), .B(timer0count[3]), .Y(n389) );
  NAND4XLM U475 ( .A(n392), .B(n391), .C(n390), .D(n389), .Y(n426) );
  INVXLM U476 ( .A(timer0_value[10]), .Y(n395) );
  INVXLM U477 ( .A(timer0_value[11]), .Y(n394) );
  OAI22XLM U478 ( .A0(n395), .A1(timer0count[10]), .B0(n394), .B1(
        timer0count[11]), .Y(n393) );
  AOI221XLM U479 ( .A0(n395), .A1(timer0count[10]), .B0(timer0count[11]), .B1(
        n394), .C0(n393), .Y(n403) );
  XOR2XLM U480 ( .A(timer0_value[12]), .B(timer0count[12]), .Y(n399) );
  XOR2XLM U481 ( .A(timer0_value[13]), .B(timer0count[13]), .Y(n398) );
  XOR2XLM U482 ( .A(timer0_value[14]), .B(timer0count[14]), .Y(n397) );
  XOR2XLM U483 ( .A(timer0_value[15]), .B(timer0count[15]), .Y(n396) );
  NOR4XLM U484 ( .A(n399), .B(n398), .C(n397), .D(n396), .Y(n402) );
  XNOR2XLM U485 ( .A(timer0_value[8]), .B(timer0count[8]), .Y(n401) );
  XNOR2XLM U486 ( .A(timer0_value[9]), .B(timer0count[9]), .Y(n400) );
  NAND4XLM U487 ( .A(n403), .B(n402), .C(n401), .D(n400), .Y(n425) );
  XOR2XLM U488 ( .A(timer0_value[20]), .B(timer0count[20]), .Y(n407) );
  XOR2XLM U489 ( .A(timer0_value[21]), .B(timer0count[21]), .Y(n406) );
  XOR2XLM U490 ( .A(timer0_value[22]), .B(timer0count[22]), .Y(n405) );
  XOR2XLM U491 ( .A(timer0_value[23]), .B(timer0count[23]), .Y(n404) );
  NOR4XLM U492 ( .A(n407), .B(n406), .C(n405), .D(n404), .Y(n423) );
  XOR2XLM U493 ( .A(timer0_value[16]), .B(timer0count[16]), .Y(n411) );
  XOR2XLM U494 ( .A(timer0_value[17]), .B(timer0count[17]), .Y(n410) );
  XOR2XLM U495 ( .A(timer0_value[18]), .B(timer0count[18]), .Y(n409) );
  XOR2XLM U496 ( .A(timer0_value[19]), .B(timer0count[19]), .Y(n408) );
  NOR4XLM U497 ( .A(n411), .B(n410), .C(n409), .D(n408), .Y(n422) );
  XOR2XLM U498 ( .A(timer0_value[28]), .B(timer0count[28]), .Y(n415) );
  XOR2XLM U499 ( .A(timer0_value[29]), .B(timer0count[29]), .Y(n414) );
  XOR2XLM U500 ( .A(timer0_value[30]), .B(timer0count[30]), .Y(n413) );
  NOR4XLM U502 ( .A(n415), .B(n414), .C(n413), .D(n412), .Y(n421) );
  XOR2XLM U503 ( .A(timer0_value[24]), .B(timer0count[24]), .Y(n419) );
  XOR2XLM U504 ( .A(timer0_value[25]), .B(timer0count[25]), .Y(n418) );
  XOR2XLM U505 ( .A(timer0_value[26]), .B(timer0count[26]), .Y(n417) );
  XOR2XLM U506 ( .A(timer0_value[27]), .B(timer0count[27]), .Y(n416) );
  NOR4XLM U507 ( .A(n419), .B(n418), .C(n417), .D(n416), .Y(n420) );
  NAND4XLM U508 ( .A(n423), .B(n422), .C(n421), .D(n420), .Y(n424) );
  NOR4XLM U509 ( .A(n427), .B(n426), .C(n425), .D(n424), .Y(N196) );
  XNOR2XLM U510 ( .A(timer1_value[4]), .B(timer1count[4]), .Y(n431) );
  XNOR2XLM U511 ( .A(timer1_value[5]), .B(timer1count[5]), .Y(n430) );
  XNOR2XLM U512 ( .A(timer1_value[6]), .B(timer1count[6]), .Y(n429) );
  XNOR2XLM U513 ( .A(timer1_value[7]), .B(timer1count[7]), .Y(n428) );
  NAND4XLM U514 ( .A(n431), .B(n430), .C(n429), .D(n428), .Y(n470) );
  XNOR2XLM U515 ( .A(timer1_value[0]), .B(timer1count[0]), .Y(n435) );
  XNOR2XLM U516 ( .A(timer1_value[1]), .B(timer1count[1]), .Y(n434) );
  XNOR2XLM U517 ( .A(timer1_value[2]), .B(timer1count[2]), .Y(n433) );
  XNOR2XLM U518 ( .A(timer1_value[3]), .B(timer1count[3]), .Y(n432) );
  NAND4XLM U519 ( .A(n435), .B(n434), .C(n433), .D(n432), .Y(n469) );
  INVXLM U520 ( .A(timer1_value[10]), .Y(n438) );
  INVXLM U521 ( .A(timer1_value[11]), .Y(n437) );
  OAI22XLM U522 ( .A0(n438), .A1(timer1count[10]), .B0(n437), .B1(
        timer1count[11]), .Y(n436) );
  AOI221XLM U523 ( .A0(n438), .A1(timer1count[10]), .B0(timer1count[11]), .B1(
        n437), .C0(n436), .Y(n446) );
  XOR2XLM U524 ( .A(timer1_value[12]), .B(timer1count[12]), .Y(n442) );
  XOR2XLM U525 ( .A(timer1_value[13]), .B(timer1count[13]), .Y(n441) );
  XOR2XLM U526 ( .A(timer1_value[14]), .B(timer1count[14]), .Y(n440) );
  XOR2XLM U527 ( .A(timer1_value[15]), .B(timer1count[15]), .Y(n439) );
  NOR4XLM U528 ( .A(n442), .B(n441), .C(n440), .D(n439), .Y(n445) );
  XNOR2XLM U529 ( .A(timer1_value[8]), .B(timer1count[8]), .Y(n444) );
  XNOR2XLM U530 ( .A(timer1_value[9]), .B(timer1count[9]), .Y(n443) );
  NAND4XLM U531 ( .A(n446), .B(n445), .C(n444), .D(n443), .Y(n468) );
  XOR2XLM U532 ( .A(timer1_value[20]), .B(timer1count[20]), .Y(n450) );
  XOR2XLM U533 ( .A(timer1_value[21]), .B(timer1count[21]), .Y(n449) );
  XOR2XLM U534 ( .A(timer1_value[22]), .B(timer1count[22]), .Y(n448) );
  XOR2XLM U535 ( .A(timer1_value[23]), .B(timer1count[23]), .Y(n447) );
  NOR4XLM U536 ( .A(n450), .B(n449), .C(n448), .D(n447), .Y(n466) );
  XOR2XLM U537 ( .A(timer1_value[16]), .B(timer1count[16]), .Y(n454) );
  XOR2XLM U538 ( .A(timer1_value[17]), .B(timer1count[17]), .Y(n453) );
  XOR2XLM U539 ( .A(timer1_value[18]), .B(timer1count[18]), .Y(n452) );
  XOR2XLM U540 ( .A(timer1_value[19]), .B(timer1count[19]), .Y(n451) );
  NOR4XLM U541 ( .A(n454), .B(n453), .C(n452), .D(n451), .Y(n465) );
  XOR2XLM U542 ( .A(timer1_value[28]), .B(timer1count[28]), .Y(n458) );
  XOR2XLM U543 ( .A(timer1_value[29]), .B(timer1count[29]), .Y(n457) );
  XOR2XLM U544 ( .A(timer1_value[30]), .B(timer1count[30]), .Y(n456) );
  XOR2XLM U545 ( .A(timer1_value[31]), .B(timer1count[31]), .Y(n455) );
  NOR4XLM U546 ( .A(n458), .B(n457), .C(n456), .D(n455), .Y(n464) );
  XOR2XLM U547 ( .A(timer1_value[24]), .B(timer1count[24]), .Y(n462) );
  XOR2XLM U548 ( .A(timer1_value[25]), .B(timer1count[25]), .Y(n461) );
  XOR2XLM U549 ( .A(timer1_value[26]), .B(timer1count[26]), .Y(n460) );
  XOR2XLM U550 ( .A(timer1_value[27]), .B(timer1count[27]), .Y(n459) );
  NOR4XLM U551 ( .A(n462), .B(n461), .C(n460), .D(n459), .Y(n463) );
  NAND4XLM U552 ( .A(n466), .B(n465), .C(n464), .D(n463), .Y(n467) );
  NOR4XLM U553 ( .A(n470), .B(n469), .C(n468), .D(n467), .Y(N406) );
  XNOR2XLM U554 ( .A(N482), .B(timer1count[4]), .Y(n474) );
  XNOR2XLM U555 ( .A(N483), .B(timer1count[5]), .Y(n473) );
  XNOR2XLM U556 ( .A(N484), .B(timer1count[6]), .Y(n472) );
  XNOR2XLM U557 ( .A(N485), .B(timer1count[7]), .Y(n471) );
  NAND4XLM U558 ( .A(n474), .B(n473), .C(n472), .D(n471), .Y(n513) );
  XNOR2XLM U559 ( .A(N478), .B(timer1count[0]), .Y(n478) );
  XNOR2XLM U560 ( .A(N479), .B(timer1count[1]), .Y(n477) );
  XNOR2XLM U561 ( .A(N480), .B(timer1count[2]), .Y(n476) );
  XNOR2XLM U562 ( .A(N481), .B(timer1count[3]), .Y(n475) );
  NAND4XLM U563 ( .A(n478), .B(n477), .C(n476), .D(n475), .Y(n512) );
  OAI22XLM U566 ( .A0(n556), .A1(timer1count[10]), .B0(n550), .B1(
        timer1count[11]), .Y(n479) );
  AOI221XLM U567 ( .A0(n556), .A1(timer1count[10]), .B0(timer1count[11]), .B1(
        n550), .C0(n479), .Y(n489) );
  XOR2XLM U568 ( .A(N490), .B(timer1count[12]), .Y(n485) );
  XOR2XLM U569 ( .A(N491), .B(timer1count[13]), .Y(n484) );
  XOR2XLM U570 ( .A(N492), .B(timer1count[14]), .Y(n483) );
  XOR2XLM U571 ( .A(N493), .B(timer1count[15]), .Y(n482) );
  NOR4XLM U572 ( .A(n485), .B(n484), .C(n483), .D(n482), .Y(n488) );
  XNOR2XLM U573 ( .A(N486), .B(timer1count[8]), .Y(n487) );
  XNOR2XLM U574 ( .A(N487), .B(timer1count[9]), .Y(n486) );
  NAND4XLM U575 ( .A(n489), .B(n488), .C(n487), .D(n486), .Y(n511) );
  XOR2XLM U576 ( .A(N498), .B(timer1count[20]), .Y(n493) );
  XOR2XLM U577 ( .A(N499), .B(timer1count[21]), .Y(n492) );
  XOR2XLM U578 ( .A(N500), .B(timer1count[22]), .Y(n491) );
  XOR2XLM U579 ( .A(N501), .B(timer1count[23]), .Y(n490) );
  NOR4XLM U580 ( .A(n493), .B(n492), .C(n491), .D(n490), .Y(n509) );
  XOR2XLM U581 ( .A(N494), .B(timer1count[16]), .Y(n497) );
  XOR2XLM U582 ( .A(N495), .B(timer1count[17]), .Y(n496) );
  XOR2XLM U583 ( .A(N496), .B(timer1count[18]), .Y(n495) );
  XOR2XLM U584 ( .A(N497), .B(timer1count[19]), .Y(n494) );
  NOR4XLM U585 ( .A(n497), .B(n496), .C(n495), .D(n494), .Y(n508) );
  XOR2XLM U586 ( .A(N506), .B(timer1count[28]), .Y(n501) );
  XOR2XLM U587 ( .A(N507), .B(timer1count[29]), .Y(n500) );
  XOR2XLM U588 ( .A(N508), .B(timer1count[30]), .Y(n499) );
  XOR2XLM U589 ( .A(N509), .B(timer1count[31]), .Y(n498) );
  NOR4XLM U590 ( .A(n501), .B(n500), .C(n499), .D(n498), .Y(n507) );
  XOR2XLM U591 ( .A(N502), .B(timer1count[24]), .Y(n505) );
  XOR2XLM U592 ( .A(N503), .B(timer1count[25]), .Y(n504) );
  XOR2XLM U593 ( .A(N504), .B(timer1count[26]), .Y(n503) );
  XOR2XLM U594 ( .A(N505), .B(timer1count[27]), .Y(n502) );
  NOR4XLM U595 ( .A(n505), .B(n504), .C(n503), .D(n502), .Y(n506) );
  NAND4XLM U596 ( .A(n509), .B(n508), .C(n507), .D(n506), .Y(n510) );
  NOR4X1M U597 ( .A(n513), .B(n512), .C(n511), .D(n510), .Y(N510) );
  timerapb_DW01_inc_0 add_x_20 ( .A(timer1count), .SUM({N439, N438, N437, N436, 
        N435, N434, N433, N432, N431, N430, N429, N428, N427, N426, N425, N424, 
        N423, N422, N421, N420, N419, N418, N417, N416, N415, N414, N413, N412, 
        N411, N410, N409, N408}) );
  timerapb_DW01_inc_1 add_x_5 ( .A(timer0count), .SUM({N229, N228, N227, N226, 
        N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, 
        N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, 
        N201, N200, N199, N198}) );
  MX2X2M U328 ( .A(timer1status[31]), .B(pwdata[31]), .S0(N679), .Y(n243) );
  MX2X1M U329 ( .A(timer1status[1]), .B(pwdata[1]), .S0(N679), .Y(n242) );
  MX2X1M U330 ( .A(timer1status[2]), .B(pwdata[2]), .S0(N679), .Y(n241) );
  MX2X1M U331 ( .A(timer1status[3]), .B(pwdata[3]), .S0(N679), .Y(n240) );
  MX2X1M U332 ( .A(N473), .B(pwdata[4]), .S0(N679), .Y(n239) );
  MX2X1M U333 ( .A(N474), .B(pwdata[5]), .S0(N679), .Y(n238) );
  MX2X1M U334 ( .A(N475), .B(pwdata[6]), .S0(N679), .Y(n237) );
  MX2X1M U335 ( .A(timer1status[7]), .B(pwdata[7]), .S0(N679), .Y(n236) );
  MX2X1M U336 ( .A(timer1status[8]), .B(pwdata[8]), .S0(N679), .Y(n235) );
  MX2X2M U368 ( .A(timer1status[9]), .B(pwdata[9]), .S0(N679), .Y(n203) );
  MX2X2M U369 ( .A(timer1status[10]), .B(pwdata[10]), .S0(N679), .Y(n202) );
  MX2X2M U370 ( .A(timer1status[11]), .B(pwdata[11]), .S0(N679), .Y(n201) );
  MX2X2M U371 ( .A(timer1status[12]), .B(pwdata[12]), .S0(N679), .Y(n200) );
  MX2X2M U372 ( .A(timer1status[13]), .B(pwdata[13]), .S0(N679), .Y(n199) );
  MX2X2M U373 ( .A(timer1status[14]), .B(pwdata[14]), .S0(N679), .Y(n198) );
  MX2X2M U375 ( .A(timer1status[16]), .B(pwdata[16]), .S0(N679), .Y(n196) );
  MX2X2M U376 ( .A(timer1status[17]), .B(pwdata[17]), .S0(N679), .Y(n195) );
  MX2X2M U377 ( .A(timer1status[18]), .B(pwdata[18]), .S0(N679), .Y(n194) );
  MX2X2M U378 ( .A(timer1status[19]), .B(pwdata[19]), .S0(N679), .Y(n193) );
  MX2X2M U379 ( .A(timer1status[20]), .B(pwdata[20]), .S0(N679), .Y(n192) );
  MX2X2M U380 ( .A(timer1status[21]), .B(pwdata[21]), .S0(N679), .Y(n191) );
  MX2X2M U381 ( .A(timer1status[22]), .B(pwdata[22]), .S0(N679), .Y(n190) );
  MX2X2M U382 ( .A(timer1status[23]), .B(pwdata[23]), .S0(N679), .Y(n189) );
  MX2X2M U383 ( .A(timer1status[24]), .B(pwdata[24]), .S0(N679), .Y(n188) );
  MX2X2M U384 ( .A(timer1status[25]), .B(pwdata[25]), .S0(N679), .Y(n187) );
  MX2X2M U385 ( .A(timer1status[26]), .B(pwdata[26]), .S0(N679), .Y(n186) );
  MX2X2M U386 ( .A(timer1status[27]), .B(pwdata[27]), .S0(N679), .Y(n185) );
  MX2X2M U387 ( .A(timer1status[28]), .B(pwdata[28]), .S0(N679), .Y(n184) );
  MX2X2M U388 ( .A(timer1status[29]), .B(pwdata[29]), .S0(N679), .Y(n183) );
  MX2X1M U390 ( .A(timer1_value[31]), .B(pwdata[31]), .S0(N678), .Y(n181) );
  MX2X1M U392 ( .A(timer1_value[29]), .B(pwdata[29]), .S0(N678), .Y(n179) );
  MX2X1M U393 ( .A(timer1_value[28]), .B(pwdata[28]), .S0(N678), .Y(n178) );
  MX2X1M U394 ( .A(timer1_value[27]), .B(pwdata[27]), .S0(N678), .Y(n177) );
  MX2X1M U395 ( .A(timer1_value[26]), .B(pwdata[26]), .S0(N678), .Y(n176) );
  MX2X1M U396 ( .A(timer1_value[25]), .B(pwdata[25]), .S0(N678), .Y(n175) );
  MX2X1M U397 ( .A(timer1_value[24]), .B(pwdata[24]), .S0(N678), .Y(n174) );
  MX2X1M U398 ( .A(timer1_value[23]), .B(pwdata[23]), .S0(N678), .Y(n173) );
  MX2X1M U399 ( .A(timer1_value[22]), .B(pwdata[22]), .S0(N678), .Y(n172) );
  MX2X1M U400 ( .A(timer1_value[21]), .B(pwdata[21]), .S0(N678), .Y(n171) );
  MX2X1M U401 ( .A(timer1_value[20]), .B(pwdata[20]), .S0(N678), .Y(n170) );
  MX2X1M U402 ( .A(timer1_value[19]), .B(pwdata[19]), .S0(N678), .Y(n169) );
  MX2X1M U403 ( .A(timer1_value[18]), .B(pwdata[18]), .S0(N678), .Y(n168) );
  MX2X1M U404 ( .A(timer1_value[17]), .B(pwdata[17]), .S0(N678), .Y(n167) );
  MX2X1M U405 ( .A(timer1_value[16]), .B(pwdata[16]), .S0(N678), .Y(n166) );
  MX2X1M U407 ( .A(timer1_value[14]), .B(pwdata[14]), .S0(N678), .Y(n164) );
  MX2X1M U408 ( .A(timer1_value[13]), .B(pwdata[13]), .S0(N678), .Y(n163) );
  MX2X1M U409 ( .A(timer1_value[12]), .B(pwdata[12]), .S0(N678), .Y(n162) );
  MX2X1M U410 ( .A(timer1_value[11]), .B(pwdata[11]), .S0(N678), .Y(n161) );
  MX2X1M U411 ( .A(timer1_value[10]), .B(pwdata[10]), .S0(N678), .Y(n160) );
  MX2X1M U412 ( .A(timer1_value[9]), .B(pwdata[9]), .S0(N678), .Y(n159) );
  MX2X1M U413 ( .A(timer1_value[8]), .B(pwdata[8]), .S0(N678), .Y(n158) );
  MX2X1M U414 ( .A(timer1_value[7]), .B(pwdata[7]), .S0(N678), .Y(n157) );
  MX2X1M U415 ( .A(timer1_value[6]), .B(pwdata[6]), .S0(N678), .Y(n156) );
  MX2X1M U416 ( .A(timer1_value[5]), .B(pwdata[5]), .S0(N678), .Y(n155) );
  MX2X1M U417 ( .A(timer1_value[4]), .B(pwdata[4]), .S0(N678), .Y(n154) );
  MX2X1M U418 ( .A(timer1_value[3]), .B(pwdata[3]), .S0(N678), .Y(n153) );
  MX2X1M U419 ( .A(timer1_value[2]), .B(pwdata[2]), .S0(N678), .Y(n152) );
  MX2X1M U420 ( .A(timer1_value[1]), .B(pwdata[1]), .S0(N678), .Y(n151) );
  DFFRQX1M timer0count_reg_31_ ( .D(n274), .CK(pclk), .RN(presetn), .Q(
        timer0count[31]) );
  DFFRQX1M timer_irqr1_reg ( .D(N662), .CK(pclk), .RN(presetn), .Q(timer_irqr1) );
  DFFRQX1M timer_irqr0_reg ( .D(N382), .CK(pclk), .RN(presetn), .Q(timer_irqr0) );
  DFFRQX1M prdata_reg_31_ ( .D(n106), .CK(pclk), .RN(presetn), .Q(prdata[31])
         );
  DFFRQX1M prdata_reg_30_ ( .D(n107), .CK(pclk), .RN(presetn), .Q(prdata[30])
         );
  DFFRQX1M prdata_reg_29_ ( .D(n108), .CK(pclk), .RN(presetn), .Q(prdata[29])
         );
  DFFRQX1M prdata_reg_28_ ( .D(n109), .CK(pclk), .RN(presetn), .Q(prdata[28])
         );
  DFFRQX1M prdata_reg_27_ ( .D(n110), .CK(pclk), .RN(presetn), .Q(prdata[27])
         );
  DFFRQX1M prdata_reg_26_ ( .D(n111), .CK(pclk), .RN(presetn), .Q(prdata[26])
         );
  DFFRQX1M prdata_reg_25_ ( .D(n112), .CK(pclk), .RN(presetn), .Q(prdata[25])
         );
  DFFRQX1M prdata_reg_24_ ( .D(n113), .CK(pclk), .RN(presetn), .Q(prdata[24])
         );
  DFFRQX1M prdata_reg_23_ ( .D(n114), .CK(pclk), .RN(presetn), .Q(prdata[23])
         );
  DFFRQX1M prdata_reg_22_ ( .D(n115), .CK(pclk), .RN(presetn), .Q(prdata[22])
         );
  DFFRQX1M prdata_reg_21_ ( .D(n116), .CK(pclk), .RN(presetn), .Q(prdata[21])
         );
  DFFRQX1M prdata_reg_20_ ( .D(n117), .CK(pclk), .RN(presetn), .Q(prdata[20])
         );
  DFFRQX1M prdata_reg_19_ ( .D(n118), .CK(pclk), .RN(presetn), .Q(prdata[19])
         );
  DFFRQX1M prdata_reg_18_ ( .D(n119), .CK(pclk), .RN(presetn), .Q(prdata[18])
         );
  DFFRQX1M prdata_reg_17_ ( .D(n120), .CK(pclk), .RN(presetn), .Q(prdata[17])
         );
  DFFRQX1M prdata_reg_16_ ( .D(n121), .CK(pclk), .RN(presetn), .Q(prdata[16])
         );
  DFFRQX1M prdata_reg_15_ ( .D(n122), .CK(pclk), .RN(presetn), .Q(prdata[15])
         );
  DFFRQX1M prdata_reg_14_ ( .D(n123), .CK(pclk), .RN(presetn), .Q(prdata[14])
         );
  DFFRQX1M prdata_reg_13_ ( .D(n124), .CK(pclk), .RN(presetn), .Q(prdata[13])
         );
  DFFRQX1M prdata_reg_12_ ( .D(n125), .CK(pclk), .RN(presetn), .Q(prdata[12])
         );
  DFFRQX1M prdata_reg_11_ ( .D(n126), .CK(pclk), .RN(presetn), .Q(prdata[11])
         );
  DFFRQX1M prdata_reg_10_ ( .D(n127), .CK(pclk), .RN(presetn), .Q(prdata[10])
         );
  DFFRQX1M prdata_reg_9_ ( .D(n128), .CK(pclk), .RN(presetn), .Q(prdata[9]) );
  DFFRQX1M prdata_reg_8_ ( .D(n129), .CK(pclk), .RN(presetn), .Q(prdata[8]) );
  DFFRQX1M prdata_reg_7_ ( .D(n130), .CK(pclk), .RN(presetn), .Q(prdata[7]) );
  DFFRQX1M prdata_reg_6_ ( .D(n131), .CK(pclk), .RN(presetn), .Q(prdata[6]) );
  DFFRQX1M prdata_reg_5_ ( .D(n132), .CK(pclk), .RN(presetn), .Q(prdata[5]) );
  DFFRQX1M prdata_reg_4_ ( .D(n133), .CK(pclk), .RN(presetn), .Q(prdata[4]) );
  DFFRQX1M prdata_reg_3_ ( .D(n134), .CK(pclk), .RN(presetn), .Q(prdata[3]) );
  DFFRQX1M prdata_reg_2_ ( .D(n135), .CK(pclk), .RN(presetn), .Q(prdata[2]) );
  DFFRQX1M prdata_reg_1_ ( .D(n105), .CK(pclk), .RN(presetn), .Q(prdata[1]) );
  DFFRQX1M prdata_reg_0_ ( .D(n104), .CK(pclk), .RN(presetn), .Q(prdata[0]) );
  DFFRQX1M timer0status_reg_0_ ( .D(n341), .CK(pclk), .RN(presetn), .Q(
        timer0status[0]) );
  DFFRQX1M timer0count_reg_29_ ( .D(n276), .CK(pclk), .RN(presetn), .Q(
        timer0count[29]) );
  DFFRQX1M timer0count_reg_26_ ( .D(n279), .CK(pclk), .RN(presetn), .Q(
        timer0count[26]) );
  DFFRQX1M timer0count_reg_23_ ( .D(n282), .CK(pclk), .RN(presetn), .Q(
        timer0count[23]) );
  DFFRQX1M timer0count_reg_20_ ( .D(n285), .CK(pclk), .RN(presetn), .Q(
        timer0count[20]) );
  DFFRQX1M timer0count_reg_17_ ( .D(n288), .CK(pclk), .RN(presetn), .Q(
        timer0count[17]) );
  DFFRQX1M timer0count_reg_14_ ( .D(n291), .CK(pclk), .RN(presetn), .Q(
        timer0count[14]) );
  DFFRQX1M timer0count_reg_11_ ( .D(n294), .CK(pclk), .RN(presetn), .Q(
        timer0count[11]) );
  DFFRQX1M timer0count_reg_8_ ( .D(n297), .CK(pclk), .RN(presetn), .Q(
        timer0count[8]) );
  DFFRQX1M timer1status_reg_0_ ( .D(n245), .CK(pclk), .RN(presetn), .Q(
        timer1status[0]) );
  DFFRQX1M timer0status_reg_29_ ( .D(n247), .CK(pclk), .RN(presetn), .Q(
        timer0status[29]) );
  DFFRQX1M timer0status_reg_28_ ( .D(n248), .CK(pclk), .RN(presetn), .Q(
        timer0status[28]) );
  DFFRQX1M timer0status_reg_26_ ( .D(n250), .CK(pclk), .RN(presetn), .Q(
        timer0status[26]) );
  DFFRQX1M timer0status_reg_25_ ( .D(n251), .CK(pclk), .RN(presetn), .Q(
        timer0status[25]) );
  DFFRQX1M timer0status_reg_23_ ( .D(n253), .CK(pclk), .RN(presetn), .Q(
        timer0status[23]) );
  DFFRQX1M timer0status_reg_22_ ( .D(n254), .CK(pclk), .RN(presetn), .Q(
        timer0status[22]) );
  DFFRQX1M timer0status_reg_20_ ( .D(n256), .CK(pclk), .RN(presetn), .Q(
        timer0status[20]) );
  DFFRQX1M timer0status_reg_19_ ( .D(n257), .CK(pclk), .RN(presetn), .Q(
        timer0status[19]) );
  DFFRQX1M timer0status_reg_17_ ( .D(n259), .CK(pclk), .RN(presetn), .Q(
        timer0status[17]) );
  DFFRQX1M timer0status_reg_16_ ( .D(n260), .CK(pclk), .RN(presetn), .Q(
        timer0status[16]) );
  DFFRQX1M timer0status_reg_14_ ( .D(n262), .CK(pclk), .RN(presetn), .Q(
        timer0status[14]) );
  DFFRQX1M timer0status_reg_13_ ( .D(n263), .CK(pclk), .RN(presetn), .Q(
        timer0status[13]) );
  DFFRQX1M timer0status_reg_11_ ( .D(n265), .CK(pclk), .RN(presetn), .Q(
        timer0status[11]) );
  DFFRQX1M timer0status_reg_10_ ( .D(n266), .CK(pclk), .RN(presetn), .Q(
        timer0status[10]) );
  DFFRQX1M timer0status_reg_8_ ( .D(n268), .CK(pclk), .RN(presetn), .Q(
        timer0status[8]) );
  DFFRQX1M timer0status_reg_7_ ( .D(n269), .CK(pclk), .RN(presetn), .Q(
        timer0status[7]) );
  DFFRQX1M timer0status_reg_5_ ( .D(n271), .CK(pclk), .RN(presetn), .Q(N337)
         );
  DFFRQX1M timer0status_reg_4_ ( .D(n272), .CK(pclk), .RN(presetn), .Q(N336)
         );
  DFFRQX1M timer0status_reg_2_ ( .D(n305), .CK(pclk), .RN(presetn), .Q(
        timer0status[2]) );
  DFFRQX1M timer0status_reg_1_ ( .D(n306), .CK(pclk), .RN(presetn), .Q(
        timer0status[1]) );
  DFFRQX1M timer0count_reg_28_ ( .D(n277), .CK(pclk), .RN(presetn), .Q(
        timer0count[28]) );
  DFFRQX1M timer0count_reg_25_ ( .D(n280), .CK(pclk), .RN(presetn), .Q(
        timer0count[25]) );
  DFFRQX1M timer0count_reg_22_ ( .D(n283), .CK(pclk), .RN(presetn), .Q(
        timer0count[22]) );
  DFFRQX1M timer0count_reg_19_ ( .D(n286), .CK(pclk), .RN(presetn), .Q(
        timer0count[19]) );
  DFFRQX1M timer0count_reg_16_ ( .D(n289), .CK(pclk), .RN(presetn), .Q(
        timer0count[16]) );
  DFFRQX1M timer0count_reg_13_ ( .D(n292), .CK(pclk), .RN(presetn), .Q(
        timer0count[13]) );
  DFFRQX1M timer0count_reg_10_ ( .D(n295), .CK(pclk), .RN(presetn), .Q(
        timer0count[10]) );
  DFFRQX1M timer0count_reg_7_ ( .D(n298), .CK(pclk), .RN(presetn), .Q(
        timer0count[7]) );
  DFFRQX1M timer0count_reg_5_ ( .D(n300), .CK(pclk), .RN(presetn), .Q(
        timer0count[5]) );
  DFFRQX1M timer0count_reg_3_ ( .D(n302), .CK(pclk), .RN(presetn), .Q(
        timer0count[3]) );
  DFFRQX1M timer0count_reg_1_ ( .D(n340), .CK(pclk), .RN(presetn), .Q(
        timer0count[1]) );
  DFFRQX1M timer0_value_reg_2_ ( .D(n310), .CK(pclk), .RN(presetn), .Q(
        timer0_value[2]) );
  DFFRQX1M timer0_value_reg_1_ ( .D(n309), .CK(pclk), .RN(presetn), .Q(
        timer0_value[1]) );
  DFFRQX1M timer0_value_reg_30_ ( .D(n338), .CK(pclk), .RN(presetn), .Q(
        timer0_value[30]) );
  DFFRQX1M timer0_value_reg_27_ ( .D(n335), .CK(pclk), .RN(presetn), .Q(
        timer0_value[27]) );
  DFFRQX1M timer0_value_reg_24_ ( .D(n332), .CK(pclk), .RN(presetn), .Q(
        timer0_value[24]) );
  DFFRQX1M timer0_value_reg_21_ ( .D(n329), .CK(pclk), .RN(presetn), .Q(
        timer0_value[21]) );
  DFFRQX1M timer0_value_reg_18_ ( .D(n326), .CK(pclk), .RN(presetn), .Q(
        timer0_value[18]) );
  DFFRQX1M timer0_value_reg_15_ ( .D(n323), .CK(pclk), .RN(presetn), .Q(
        timer0_value[15]) );
  DFFRQX1M timer0_value_reg_12_ ( .D(n320), .CK(pclk), .RN(presetn), .Q(
        timer0_value[12]) );
  DFFRQX1M timer0_value_reg_9_ ( .D(n317), .CK(pclk), .RN(presetn), .Q(
        timer0_value[9]) );
  DFFRQX1M timer0_value_reg_6_ ( .D(n314), .CK(pclk), .RN(presetn), .Q(
        timer0_value[6]) );
  DFFRQX1M timer0_value_reg_3_ ( .D(n311), .CK(pclk), .RN(presetn), .Q(
        timer0_value[3]) );
  DFFRQX1M timer0_value_reg_0_ ( .D(n308), .CK(pclk), .RN(presetn), .Q(
        timer0_value[0]) );
  DFFRQX1M timer0_value_reg_29_ ( .D(n337), .CK(pclk), .RN(presetn), .Q(
        timer0_value[29]) );
  DFFRQX1M timer0_value_reg_26_ ( .D(n334), .CK(pclk), .RN(presetn), .Q(
        timer0_value[26]) );
  DFFRQX1M timer0_value_reg_23_ ( .D(n331), .CK(pclk), .RN(presetn), .Q(
        timer0_value[23]) );
  DFFRQX1M timer0_value_reg_20_ ( .D(n328), .CK(pclk), .RN(presetn), .Q(
        timer0_value[20]) );
  DFFRQX1M timer0_value_reg_17_ ( .D(n325), .CK(pclk), .RN(presetn), .Q(
        timer0_value[17]) );
  DFFRQX1M timer0_value_reg_14_ ( .D(n322), .CK(pclk), .RN(presetn), .Q(
        timer0_value[14]) );
  DFFRQX1M timer0_value_reg_11_ ( .D(n319), .CK(pclk), .RN(presetn), .Q(
        timer0_value[11]) );
  DFFRQX1M timer0_value_reg_8_ ( .D(n316), .CK(pclk), .RN(presetn), .Q(
        timer0_value[8]) );
  DFFRQX1M timer0_value_reg_5_ ( .D(n313), .CK(pclk), .RN(presetn), .Q(
        timer0_value[5]) );
  DFFRQX1M timer0count_reg_30_ ( .D(n275), .CK(pclk), .RN(presetn), .Q(
        timer0count[30]) );
  DFFRQX1M timer0count_reg_27_ ( .D(n278), .CK(pclk), .RN(presetn), .Q(
        timer0count[27]) );
  DFFRQX1M timer0count_reg_24_ ( .D(n281), .CK(pclk), .RN(presetn), .Q(
        timer0count[24]) );
  DFFRQX1M timer0count_reg_21_ ( .D(n284), .CK(pclk), .RN(presetn), .Q(
        timer0count[21]) );
  DFFRQX1M timer0count_reg_18_ ( .D(n287), .CK(pclk), .RN(presetn), .Q(
        timer0count[18]) );
  DFFRQX1M timer0count_reg_15_ ( .D(n290), .CK(pclk), .RN(presetn), .Q(
        timer0count[15]) );
  DFFRQX1M timer0count_reg_12_ ( .D(n293), .CK(pclk), .RN(presetn), .Q(
        timer0count[12]) );
  DFFRQX1M timer0count_reg_9_ ( .D(n296), .CK(pclk), .RN(presetn), .Q(
        timer0count[9]) );
  DFFRQX1M timer0count_reg_6_ ( .D(n299), .CK(pclk), .RN(presetn), .Q(
        timer0count[6]) );
  DFFRQX1M timer0count_reg_4_ ( .D(n301), .CK(pclk), .RN(presetn), .Q(
        timer0count[4]) );
  DFFRQX1M timer0count_reg_2_ ( .D(n303), .CK(pclk), .RN(presetn), .Q(
        timer0count[2]) );
  DFFRQX1M timer0count_reg_0_ ( .D(n304), .CK(pclk), .RN(presetn), .Q(
        timer0count[0]) );
  DFFRQX1M timer0status_reg_31_ ( .D(n307), .CK(pclk), .RN(presetn), .Q(
        timer0status[31]) );
  DFFRQX1M timer0status_reg_30_ ( .D(n246), .CK(pclk), .RN(presetn), .Q(
        timer0status[30]) );
  DFFRQX1M timer0status_reg_27_ ( .D(n249), .CK(pclk), .RN(presetn), .Q(
        timer0status[27]) );
  DFFRQX1M timer0status_reg_24_ ( .D(n252), .CK(pclk), .RN(presetn), .Q(
        timer0status[24]) );
  DFFRQX1M timer0status_reg_21_ ( .D(n255), .CK(pclk), .RN(presetn), .Q(
        timer0status[21]) );
  DFFRQX1M timer0status_reg_18_ ( .D(n258), .CK(pclk), .RN(presetn), .Q(
        timer0status[18]) );
  DFFRQX1M timer0status_reg_15_ ( .D(n261), .CK(pclk), .RN(presetn), .Q(
        timer0status[15]) );
  DFFRQX1M timer0status_reg_12_ ( .D(n264), .CK(pclk), .RN(presetn), .Q(
        timer0status[12]) );
  DFFRQX1M timer0status_reg_9_ ( .D(n267), .CK(pclk), .RN(presetn), .Q(
        timer0status[9]) );
  DFFRQX1M timer0status_reg_6_ ( .D(n270), .CK(pclk), .RN(presetn), .Q(N338)
         );
  DFFRQX1M timer0status_reg_3_ ( .D(n273), .CK(pclk), .RN(presetn), .Q(
        timer0status[3]) );
  DFFRQX1M timer0_value_reg_31_ ( .D(n339), .CK(pclk), .RN(presetn), .Q(
        timer0_value[31]) );
  DFFRQX1M timer0_value_reg_28_ ( .D(n336), .CK(pclk), .RN(presetn), .Q(
        timer0_value[28]) );
  DFFRQX1M timer0_value_reg_25_ ( .D(n333), .CK(pclk), .RN(presetn), .Q(
        timer0_value[25]) );
  DFFRQX1M timer0_value_reg_22_ ( .D(n330), .CK(pclk), .RN(presetn), .Q(
        timer0_value[22]) );
  DFFRQX1M timer0_value_reg_19_ ( .D(n327), .CK(pclk), .RN(presetn), .Q(
        timer0_value[19]) );
  DFFRQX1M timer0_value_reg_16_ ( .D(n324), .CK(pclk), .RN(presetn), .Q(
        timer0_value[16]) );
  DFFRQX1M timer0_value_reg_13_ ( .D(n321), .CK(pclk), .RN(presetn), .Q(
        timer0_value[13]) );
  DFFRQX1M timer0_value_reg_10_ ( .D(n318), .CK(pclk), .RN(presetn), .Q(
        timer0_value[10]) );
  DFFRQX1M timer0_value_reg_7_ ( .D(n315), .CK(pclk), .RN(presetn), .Q(
        timer0_value[7]) );
  DFFRQX1M timer0_value_reg_4_ ( .D(n312), .CK(pclk), .RN(presetn), .Q(
        timer0_value[4]) );
  DFFRQX1M timer1_value_reg_31_ ( .D(n181), .CK(pclk), .RN(presetn), .Q(
        timer1_value[31]) );
  DFFRQX1M timer1_value_reg_30_ ( .D(n180), .CK(pclk), .RN(presetn), .Q(
        timer1_value[30]) );
  DFFRQX1M timer1_value_reg_29_ ( .D(n179), .CK(pclk), .RN(presetn), .Q(
        timer1_value[29]) );
  DFFRQX1M timer1_value_reg_28_ ( .D(n178), .CK(pclk), .RN(presetn), .Q(
        timer1_value[28]) );
  DFFRQX1M timer1_value_reg_27_ ( .D(n177), .CK(pclk), .RN(presetn), .Q(
        timer1_value[27]) );
  DFFRQX1M timer1_value_reg_26_ ( .D(n176), .CK(pclk), .RN(presetn), .Q(
        timer1_value[26]) );
  DFFRQX1M timer1_value_reg_25_ ( .D(n175), .CK(pclk), .RN(presetn), .Q(
        timer1_value[25]) );
  DFFRQX1M timer1_value_reg_24_ ( .D(n174), .CK(pclk), .RN(presetn), .Q(
        timer1_value[24]) );
  DFFRQX1M timer1_value_reg_23_ ( .D(n173), .CK(pclk), .RN(presetn), .Q(
        timer1_value[23]) );
  DFFRQX1M timer1_value_reg_22_ ( .D(n172), .CK(pclk), .RN(presetn), .Q(
        timer1_value[22]) );
  DFFRQX1M timer1_value_reg_21_ ( .D(n171), .CK(pclk), .RN(presetn), .Q(
        timer1_value[21]) );
  DFFRQX1M timer1_value_reg_20_ ( .D(n170), .CK(pclk), .RN(presetn), .Q(
        timer1_value[20]) );
  DFFRQX1M timer1_value_reg_19_ ( .D(n169), .CK(pclk), .RN(presetn), .Q(
        timer1_value[19]) );
  DFFRQX1M timer1_value_reg_18_ ( .D(n168), .CK(pclk), .RN(presetn), .Q(
        timer1_value[18]) );
  DFFRQX1M timer1_value_reg_17_ ( .D(n167), .CK(pclk), .RN(presetn), .Q(
        timer1_value[17]) );
  DFFRQX1M timer1_value_reg_16_ ( .D(n166), .CK(pclk), .RN(presetn), .Q(
        timer1_value[16]) );
  DFFRQX1M timer1_value_reg_15_ ( .D(n165), .CK(pclk), .RN(presetn), .Q(
        timer1_value[15]) );
  DFFRQX1M timer1_value_reg_14_ ( .D(n164), .CK(pclk), .RN(presetn), .Q(
        timer1_value[14]) );
  DFFRQX1M timer1_value_reg_13_ ( .D(n163), .CK(pclk), .RN(presetn), .Q(
        timer1_value[13]) );
  DFFRQX1M timer1_value_reg_12_ ( .D(n162), .CK(pclk), .RN(presetn), .Q(
        timer1_value[12]) );
  DFFRQX1M timer1_value_reg_11_ ( .D(n161), .CK(pclk), .RN(presetn), .Q(
        timer1_value[11]) );
  DFFRQX1M timer1_value_reg_10_ ( .D(n160), .CK(pclk), .RN(presetn), .Q(
        timer1_value[10]) );
  DFFRQX1M timer1_value_reg_9_ ( .D(n159), .CK(pclk), .RN(presetn), .Q(
        timer1_value[9]) );
  DFFRQX1M timer1_value_reg_8_ ( .D(n158), .CK(pclk), .RN(presetn), .Q(
        timer1_value[8]) );
  DFFRQX1M timer1_value_reg_7_ ( .D(n157), .CK(pclk), .RN(presetn), .Q(
        timer1_value[7]) );
  DFFRQX1M timer1_value_reg_6_ ( .D(n156), .CK(pclk), .RN(presetn), .Q(
        timer1_value[6]) );
  DFFRQX1M timer1_value_reg_5_ ( .D(n155), .CK(pclk), .RN(presetn), .Q(
        timer1_value[5]) );
  DFFRQX1M timer1_value_reg_4_ ( .D(n154), .CK(pclk), .RN(presetn), .Q(
        timer1_value[4]) );
  DFFRQX1M timer1_value_reg_3_ ( .D(n153), .CK(pclk), .RN(presetn), .Q(
        timer1_value[3]) );
  DFFRQX1M timer1_value_reg_2_ ( .D(n152), .CK(pclk), .RN(presetn), .Q(
        timer1_value[2]) );
  DFFRQX1M timer1_value_reg_1_ ( .D(n151), .CK(pclk), .RN(presetn), .Q(
        timer1_value[1]) );
  DFFRQX1M timer1_value_reg_0_ ( .D(n150), .CK(pclk), .RN(presetn), .Q(
        timer1_value[0]) );
  DFFRQX1M timer1count_reg_24_ ( .D(n211), .CK(pclk), .RN(presetn), .Q(
        timer1count[24]) );
  DFFRQX1M timer1count_reg_21_ ( .D(n214), .CK(pclk), .RN(presetn), .Q(
        timer1count[21]) );
  DFFRQX1M timer1count_reg_18_ ( .D(n217), .CK(pclk), .RN(presetn), .Q(
        timer1count[18]) );
  DFFRQX1M timer1count_reg_15_ ( .D(n220), .CK(pclk), .RN(presetn), .Q(
        timer1count[15]) );
  DFFRQX1M timer1count_reg_12_ ( .D(n223), .CK(pclk), .RN(presetn), .Q(
        timer1count[12]) );
  DFFRQX1M timer1count_reg_9_ ( .D(n226), .CK(pclk), .RN(presetn), .Q(
        timer1count[9]) );
  DFFRQX1M timer1count_reg_6_ ( .D(n229), .CK(pclk), .RN(presetn), .Q(
        timer1count[6]) );
  DFFRQX1M timer1count_reg_3_ ( .D(n232), .CK(pclk), .RN(presetn), .Q(
        timer1count[3]) );
  DFFRQX1M timer1count_reg_0_ ( .D(n234), .CK(pclk), .RN(presetn), .Q(
        timer1count[0]) );
  DFFRQX1M timer1count_reg_27_ ( .D(n208), .CK(pclk), .RN(presetn), .Q(
        timer1count[27]) );
  DFFRQX1M timer1count_reg_25_ ( .D(n210), .CK(pclk), .RN(presetn), .Q(
        timer1count[25]) );
  DFFRQX1M timer1count_reg_23_ ( .D(n212), .CK(pclk), .RN(presetn), .Q(
        timer1count[23]) );
  DFFRQX1M timer1count_reg_22_ ( .D(n213), .CK(pclk), .RN(presetn), .Q(
        timer1count[22]) );
  DFFRQX1M timer1count_reg_20_ ( .D(n215), .CK(pclk), .RN(presetn), .Q(
        timer1count[20]) );
  DFFRQX1M timer1count_reg_19_ ( .D(n216), .CK(pclk), .RN(presetn), .Q(
        timer1count[19]) );
  DFFRQX1M timer1count_reg_17_ ( .D(n218), .CK(pclk), .RN(presetn), .Q(
        timer1count[17]) );
  DFFRQX1M timer1count_reg_16_ ( .D(n219), .CK(pclk), .RN(presetn), .Q(
        timer1count[16]) );
  DFFRQX1M timer1count_reg_14_ ( .D(n221), .CK(pclk), .RN(presetn), .Q(
        timer1count[14]) );
  DFFRQX1M timer1count_reg_13_ ( .D(n222), .CK(pclk), .RN(presetn), .Q(
        timer1count[13]) );
  DFFRQX1M timer1count_reg_11_ ( .D(n224), .CK(pclk), .RN(presetn), .Q(
        timer1count[11]) );
  DFFRQX1M timer1count_reg_10_ ( .D(n225), .CK(pclk), .RN(presetn), .Q(
        timer1count[10]) );
  DFFRQX1M timer1count_reg_8_ ( .D(n227), .CK(pclk), .RN(presetn), .Q(
        timer1count[8]) );
  DFFRQX1M timer1count_reg_7_ ( .D(n228), .CK(pclk), .RN(presetn), .Q(
        timer1count[7]) );
  DFFRQX1M timer1count_reg_5_ ( .D(n230), .CK(pclk), .RN(presetn), .Q(
        timer1count[5]) );
  DFFRQX1M timer1count_reg_4_ ( .D(n231), .CK(pclk), .RN(presetn), .Q(
        timer1count[4]) );
  DFFRQX1M timer1count_reg_2_ ( .D(n233), .CK(pclk), .RN(presetn), .Q(
        timer1count[2]) );
  DFFRQX1M timer1count_reg_1_ ( .D(n244), .CK(pclk), .RN(presetn), .Q(
        timer1count[1]) );
  DFFRQX1M timer1count_reg_29_ ( .D(n206), .CK(pclk), .RN(presetn), .Q(
        timer1count[29]) );
  DFFRQX1M timer1status_reg_31_ ( .D(n243), .CK(pclk), .RN(presetn), .Q(
        timer1status[31]) );
  DFFRQX1M timer1status_reg_30_ ( .D(n182), .CK(pclk), .RN(presetn), .Q(
        timer1status[30]) );
  DFFRQX1M timer1status_reg_29_ ( .D(n183), .CK(pclk), .RN(presetn), .Q(
        timer1status[29]) );
  DFFRQX1M timer1status_reg_28_ ( .D(n184), .CK(pclk), .RN(presetn), .Q(
        timer1status[28]) );
  DFFRQX1M timer1status_reg_27_ ( .D(n185), .CK(pclk), .RN(presetn), .Q(
        timer1status[27]) );
  DFFRQX1M timer1status_reg_26_ ( .D(n186), .CK(pclk), .RN(presetn), .Q(
        timer1status[26]) );
  DFFRQX1M timer1status_reg_25_ ( .D(n187), .CK(pclk), .RN(presetn), .Q(
        timer1status[25]) );
  DFFRQX1M timer1status_reg_24_ ( .D(n188), .CK(pclk), .RN(presetn), .Q(
        timer1status[24]) );
  DFFRQX1M timer1status_reg_23_ ( .D(n189), .CK(pclk), .RN(presetn), .Q(
        timer1status[23]) );
  DFFRQX1M timer1status_reg_22_ ( .D(n190), .CK(pclk), .RN(presetn), .Q(
        timer1status[22]) );
  DFFRQX1M timer1status_reg_21_ ( .D(n191), .CK(pclk), .RN(presetn), .Q(
        timer1status[21]) );
  DFFRQX1M timer1status_reg_20_ ( .D(n192), .CK(pclk), .RN(presetn), .Q(
        timer1status[20]) );
  DFFRQX1M timer1status_reg_19_ ( .D(n193), .CK(pclk), .RN(presetn), .Q(
        timer1status[19]) );
  DFFRQX1M timer1status_reg_18_ ( .D(n194), .CK(pclk), .RN(presetn), .Q(
        timer1status[18]) );
  DFFRQX1M timer1status_reg_17_ ( .D(n195), .CK(pclk), .RN(presetn), .Q(
        timer1status[17]) );
  DFFRQX1M timer1status_reg_16_ ( .D(n196), .CK(pclk), .RN(presetn), .Q(
        timer1status[16]) );
  DFFRQX1M timer1status_reg_15_ ( .D(n197), .CK(pclk), .RN(presetn), .Q(
        timer1status[15]) );
  DFFRQX1M timer1status_reg_14_ ( .D(n198), .CK(pclk), .RN(presetn), .Q(
        timer1status[14]) );
  DFFRQX1M timer1status_reg_13_ ( .D(n199), .CK(pclk), .RN(presetn), .Q(
        timer1status[13]) );
  DFFRQX1M timer1status_reg_12_ ( .D(n200), .CK(pclk), .RN(presetn), .Q(
        timer1status[12]) );
  DFFRQX1M timer1status_reg_11_ ( .D(n201), .CK(pclk), .RN(presetn), .Q(
        timer1status[11]) );
  DFFRQX1M timer1status_reg_10_ ( .D(n202), .CK(pclk), .RN(presetn), .Q(
        timer1status[10]) );
  DFFRQX1M timer1status_reg_9_ ( .D(n203), .CK(pclk), .RN(presetn), .Q(
        timer1status[9]) );
  DFFRQX1M timer1status_reg_8_ ( .D(n235), .CK(pclk), .RN(presetn), .Q(
        timer1status[8]) );
  DFFRQX1M timer1status_reg_7_ ( .D(n236), .CK(pclk), .RN(presetn), .Q(
        timer1status[7]) );
  DFFRQX1M timer1status_reg_6_ ( .D(n237), .CK(pclk), .RN(presetn), .Q(N475)
         );
  DFFRQX1M timer1status_reg_5_ ( .D(n238), .CK(pclk), .RN(presetn), .Q(N474)
         );
  DFFRQX1M timer1status_reg_4_ ( .D(n239), .CK(pclk), .RN(presetn), .Q(N473)
         );
  DFFRQX1M timer1status_reg_3_ ( .D(n240), .CK(pclk), .RN(presetn), .Q(
        timer1status[3]) );
  DFFRQX1M timer1status_reg_2_ ( .D(n241), .CK(pclk), .RN(presetn), .Q(
        timer1status[2]) );
  DFFRQX1M timer1status_reg_1_ ( .D(n242), .CK(pclk), .RN(presetn), .Q(
        timer1status[1]) );
  DFFRQX1M timer1count_reg_31_ ( .D(n204), .CK(pclk), .RN(presetn), .Q(
        timer1count[31]) );
  DFFRQX1M timer1count_reg_30_ ( .D(n205), .CK(pclk), .RN(presetn), .Q(
        timer1count[30]) );
  DFFRQX1M timer1count_reg_28_ ( .D(n207), .CK(pclk), .RN(presetn), .Q(
        timer1count[28]) );
  DFFRQX1M timer1count_reg_26_ ( .D(n209), .CK(pclk), .RN(presetn), .Q(
        timer1count[26]) );
  OR2X4M C2045 ( .A(paddr[18]), .B(N693), .Y(N694) );
  AND2X2M C2423 ( .A(N728), .B(pwrite), .Y(N333) );
  OR2X2M C2164 ( .A(N681), .B(N718), .Y(N722) );
  OR2X4M C2062 ( .A(N681), .B(N710), .Y(N711) );
  AND2X1M C64 ( .A(N75), .B(N76), .Y(N80) );
  AND2X1M C62 ( .A(N71), .B(N72), .Y(N78) );
  AND2X1M C66 ( .A(N80), .B(N77), .Y(N82) );
  AND2X1M C65 ( .A(N78), .B(N79), .Y(N81) );
  OR2X1M C83 ( .A(paddr[3]), .B(n535), .Y(N92) );
  AND2X1M C67 ( .A(N81), .B(N82), .Y(N83) );
  AND2X2M C2456 ( .A(pwrite), .B(N730), .Y(N401) );
  AND2X6M C2504 ( .A(N666), .B(n553), .Y(N679) );
  OR2X4M C2034 ( .A(paddr[29]), .B(N682), .Y(N683) );
  OR2X4M C2035 ( .A(paddr[28]), .B(N683), .Y(N684) );
  OR2X4M C2036 ( .A(paddr[27]), .B(N684), .Y(N685) );
  OR2X4M C2037 ( .A(paddr[26]), .B(N685), .Y(N686) );
  OR2X4M C2038 ( .A(paddr[25]), .B(N686), .Y(N687) );
  OR2X4M C2039 ( .A(paddr[24]), .B(N687), .Y(N688) );
  OR2X8M C2040 ( .A(paddr[23]), .B(N688), .Y(N689) );
  OR2X4M C2044 ( .A(paddr[19]), .B(N692), .Y(N693) );
  CLKINVX2M I_2 ( .A(paddr[0]), .Y(N714) );
  AND2X4M C2477 ( .A(N401), .B(N612), .Y(N613) );
  CLKAND2X2M U599 ( .A(N191), .B(N331), .Y(N332) );
  AOI2BB1X2M U600 ( .A0N(n566), .A1N(N713), .B0(N387), .Y(N386) );
  NOR2X2M U601 ( .A(N714), .B(N711), .Y(n565) );
  OR2X2M U602 ( .A(n535), .B(N709), .Y(N718) );
  NAND2X2M U603 ( .A(n527), .B(n526), .Y(N709) );
  NAND2X2M U604 ( .A(n532), .B(n524), .Y(n523) );
  NOR2X4M U605 ( .A(paddr[12]), .B(N699), .Y(n532) );
  NOR2X2M U606 ( .A(paddr[10]), .B(paddr[11]), .Y(n524) );
  NAND2BX4M U607 ( .AN(paddr[13]), .B(n531), .Y(N699) );
  NAND2X4M U608 ( .A(n537), .B(n536), .Y(N682) );
  CLKINVX4M U609 ( .A(paddr[30]), .Y(n537) );
  INVX4M U610 ( .A(paddr[31]), .Y(n536) );
  OAI2B1X1M U611 ( .A1N(N665), .A0(n530), .B0(n529), .Y(n245) );
  MX2X1M U612 ( .A(timer0_value[0]), .B(pwdata[0]), .S0(n544), .Y(n308) );
  CLKAND2X4M U613 ( .A(N386), .B(n552), .Y(n540) );
  CLKAND2X4M U614 ( .A(N383), .B(n552), .Y(n544) );
  CLKAND2X4M U615 ( .A(N386), .B(n552), .Y(N674) );
  CLKAND2X4M U616 ( .A(N386), .B(n552), .Y(n541) );
  CLKAND2X4M U617 ( .A(N383), .B(n552), .Y(n545) );
  OR3X4M U618 ( .A(N610), .B(N613), .C(n145), .Y(n543) );
  OR3X4M U619 ( .A(N329), .B(N332), .C(n149), .Y(N295) );
  OR3X4M U620 ( .A(N610), .B(N613), .C(n145), .Y(N576) );
  AOI2BB1X2M U621 ( .A0N(n566), .A1N(n565), .B0(N387), .Y(N383) );
  NAND2X2M U622 ( .A(N664), .B(n553), .Y(n530) );
  AOI2BB1XLM U623 ( .A0N(n563), .A1N(n562), .B0(N387), .Y(N663) );
  NOR2X1M U624 ( .A(n565), .B(N713), .Y(n566) );
  OR3X1M U625 ( .A(n558), .B(N666), .C(N662), .Y(N664) );
  NOR2X2M U626 ( .A(n548), .B(n549), .Y(N191) );
  AOI2BB1X2M U627 ( .A0N(n563), .A1N(n564), .B0(N387), .Y(N666) );
  NOR2X1M U628 ( .A(N713), .B(n565), .Y(n549) );
  OR2X1M U629 ( .A(n564), .B(n562), .Y(N730) );
  INVX2M U630 ( .A(pwrite), .Y(n548) );
  NOR2X2M U631 ( .A(n564), .B(n562), .Y(n563) );
  NOR2X4M U632 ( .A(N711), .B(paddr[0]), .Y(N713) );
  NOR2X4M U633 ( .A(paddr[0]), .B(N722), .Y(n562) );
  NOR2X4M U634 ( .A(N714), .B(N719), .Y(n564) );
  OR2X2M U635 ( .A(paddr[1]), .B(N718), .Y(N719) );
  NAND2X2M U636 ( .A(n535), .B(n534), .Y(N710) );
  CLKINVX2M U637 ( .A(N709), .Y(n534) );
  CLKINVX2M U638 ( .A(N707), .Y(n527) );
  NOR2X2M U639 ( .A(paddr[4]), .B(paddr[3]), .Y(n526) );
  INVXLM U640 ( .A(n523), .Y(n533) );
  NOR3X8M U641 ( .A(n516), .B(paddr[14]), .C(paddr[15]), .Y(n531) );
  NOR2XLM U642 ( .A(paddr[8]), .B(paddr[9]), .Y(n528) );
  NOR2XLM U643 ( .A(paddr[6]), .B(paddr[7]), .Y(n525) );
  INVXLM U644 ( .A(paddr[9]), .Y(N51) );
  INVXLM U645 ( .A(paddr[19]), .Y(N41) );
  NAND2BX2M U646 ( .AN(paddr[5]), .B(n517), .Y(N707) );
  AND2X1M U647 ( .A(N67), .B(N68), .Y(N76) );
  INVXLM U648 ( .A(paddr[1]), .Y(N681) );
  AND2X1M U649 ( .A(psel), .B(penable), .Y(N728) );
  OR2X1M U650 ( .A(N92), .B(N89), .Y(N101) );
  AOI22XLM U651 ( .A0(timer0status[3]), .A1(N187), .B0(n554), .B1(n141), .Y(
        n139) );
  INVXLM U652 ( .A(n561), .Y(n145) );
  NOR2XLM U653 ( .A(N87), .B(n103), .Y(n7) );
  NOR2BXLM U654 ( .AN(N439), .B(n144), .Y(N608) );
  OR3X4M U655 ( .A(N610), .B(N613), .C(n145), .Y(n542) );
  AND2X6M U656 ( .A(N663), .B(n553), .Y(N678) );
  OR3X4M U657 ( .A(N329), .B(N332), .C(n149), .Y(n547) );
  AND2X4M U658 ( .A(N383), .B(n552), .Y(N673) );
  NOR2BXLM U659 ( .AN(N227), .B(n148), .Y(N325) );
  OR3X4M U660 ( .A(N329), .B(N332), .C(n149), .Y(n546) );
  MX2XLM U661 ( .A(timer1count[26]), .B(N603), .S0(n542), .Y(n209) );
  MX2XLM U662 ( .A(timer1count[31]), .B(N608), .S0(n543), .Y(n204) );
  MX2XLM U663 ( .A(timer1status[15]), .B(pwdata[15]), .S0(N679), .Y(n197) );
  MX2XLM U664 ( .A(timer1status[30]), .B(pwdata[30]), .S0(N679), .Y(n182) );
  MX2XLM U665 ( .A(timer1count[19]), .B(N596), .S0(n542), .Y(n216) );
  MX2XLM U666 ( .A(timer1_value[0]), .B(pwdata[0]), .S0(N678), .Y(n150) );
  MX2XLM U667 ( .A(timer1_value[15]), .B(pwdata[15]), .S0(N678), .Y(n165) );
  MX2XLM U668 ( .A(timer1_value[30]), .B(pwdata[30]), .S0(N678), .Y(n180) );
  MX2XLM U669 ( .A(timer0status[12]), .B(pwdata[12]), .S0(n540), .Y(n264) );
  MX2XLM U670 ( .A(timer0count[18]), .B(N314), .S0(n547), .Y(n287) );
  MX2XLM U671 ( .A(timer0_value[3]), .B(pwdata[3]), .S0(n545), .Y(n311) );
  MX2XLM U672 ( .A(timer0count[7]), .B(N303), .S0(N295), .Y(n298) );
  MX2XLM U673 ( .A(timer0status[11]), .B(pwdata[11]), .S0(N674), .Y(n265) );
  MX2XLM U674 ( .A(timer0count[11]), .B(N307), .S0(n546), .Y(n294) );
  AND2X1M U675 ( .A(n533), .B(n528), .Y(n515) );
  OR3X4M U676 ( .A(N694), .B(paddr[17]), .C(paddr[16]), .Y(n516) );
  INVXLM U677 ( .A(paddr[2]), .Y(n535) );
  AND2X1M U678 ( .A(n515), .B(n525), .Y(n517) );
  OA21XLM U679 ( .A0(N386), .A1(n538), .B0(n552), .Y(n518) );
  INVXLM U680 ( .A(n598), .Y(n519) );
  CLKINVX1M U681 ( .A(n519), .Y(timer_irq[0]) );
  AOI32XLM U682 ( .A0(timer_irqr0), .A1(n139), .A2(timer0status[3]), .B0(n140), 
        .B1(n139), .Y(n598) );
  INVXLM U683 ( .A(n597), .Y(n521) );
  CLKINVX1M U684 ( .A(n521), .Y(timer_irq[1]) );
  AOI32XLM U685 ( .A0(timer_irqr1), .A1(n136), .A2(timer1status[3]), .B0(n137), 
        .B1(n136), .Y(n597) );
  NAND2X2M U686 ( .A(n530), .B(timer1status[0]), .Y(n529) );
  NAND2BXLM U687 ( .AN(N382), .B(n539), .Y(n538) );
  INVXLM U688 ( .A(n557), .Y(n539) );
  NAND2X1M U689 ( .A(n566), .B(N333), .Y(n552) );
  MX2X1M U690 ( .A(timer0_value[2]), .B(pwdata[2]), .S0(N673), .Y(n310) );
  MX2X1M U691 ( .A(timer1count[25]), .B(N602), .S0(n542), .Y(n210) );
  MX2X1M U692 ( .A(timer0_value[1]), .B(pwdata[1]), .S0(N673), .Y(n309) );
  INVXLM U693 ( .A(paddr[31]), .Y(N29) );
  MX2X1M U694 ( .A(timer1count[27]), .B(N604), .S0(n543), .Y(n208) );
  MX2X1M U695 ( .A(timer1count[28]), .B(N605), .S0(n543), .Y(n207) );
  MX2X1M U696 ( .A(timer1count[29]), .B(N606), .S0(N576), .Y(n206) );
  MX2X1M U697 ( .A(timer0status[0]), .B(N385), .S0(n518), .Y(n341) );
  MX2X1M U698 ( .A(timer1count[30]), .B(N607), .S0(n542), .Y(n205) );
  OR2X1M U699 ( .A(n596), .B(n593), .Y(n550) );
  OR2X1M U700 ( .A(n581), .B(n578), .Y(n551) );
  CLKNAND2X2M U701 ( .A(n563), .B(N333), .Y(n553) );
  NOR2XLM U702 ( .A(timer_irqr0), .B(timer0status[1]), .Y(n554) );
  NOR2XLM U703 ( .A(timer_irqr1), .B(timer1status[1]), .Y(n555) );
  INVXLM U704 ( .A(timer1status[7]), .Y(N476) );
  OR2X1M U705 ( .A(n596), .B(n591), .Y(n556) );
  NOR2XLM U706 ( .A(N374), .B(N375), .Y(n557) );
  NOR2XLM U707 ( .A(N654), .B(N655), .Y(n558) );
  INVXLM U708 ( .A(N333), .Y(N387) );
  INVXLM U709 ( .A(timer0status[7]), .Y(N339) );
  OR2X1M U710 ( .A(n581), .B(n576), .Y(n559) );
  NAND2XLM U711 ( .A(timer0status[0]), .B(timer0status[2]), .Y(n560) );
  NAND2XLM U712 ( .A(timer1status[0]), .B(timer1status[2]), .Y(n561) );
  MX2XLM U713 ( .A(timer0count[31]), .B(N327), .S0(n546), .Y(n274) );
  XOR2XLM U714 ( .A(N372), .B(timer0count[31]), .Y(n369) );
  XOR2XLM U715 ( .A(timer0_value[31]), .B(timer0count[31]), .Y(n412) );
  MXI2XLM U716 ( .A(N339), .B(timer0status[7]), .S0(timer0status[8]), .Y(N340)
         );
  MXI2XLM U717 ( .A(N476), .B(timer1status[7]), .S0(timer1status[8]), .Y(N477)
         );
  INVXLM U718 ( .A(N336), .Y(n567) );
  NAND2BXLM U719 ( .AN(N337), .B(n567), .Y(n579) );
  INVXLM U720 ( .A(N338), .Y(n571) );
  INVXLM U721 ( .A(N340), .Y(n575) );
  NAND3XLM U722 ( .A(n571), .B(timer0status[7]), .C(n575), .Y(n574) );
  NOR2XLM U723 ( .A(n579), .B(n574), .Y(N341) );
  NAND3XLM U724 ( .A(N339), .B(n571), .C(n575), .Y(n581) );
  NAND2XLM U725 ( .A(N337), .B(n567), .Y(n576) );
  NAND2XLM U726 ( .A(N337), .B(N336), .Y(n578) );
  NAND3XLM U727 ( .A(N339), .B(N338), .C(n575), .Y(n568) );
  NOR2XLM U728 ( .A(n579), .B(n568), .Y(N353) );
  NAND2BXLM U729 ( .AN(N337), .B(N336), .Y(n580) );
  NOR2XLM U730 ( .A(n568), .B(n580), .Y(N354) );
  NOR2XLM U731 ( .A(n576), .B(n568), .Y(N355) );
  NOR2XLM U732 ( .A(n578), .B(n568), .Y(N356) );
  NAND3XLM U733 ( .A(N340), .B(n571), .C(timer0status[7]), .Y(n569) );
  NOR2XLM U734 ( .A(n579), .B(n569), .Y(N357) );
  NOR2XLM U735 ( .A(n580), .B(n569), .Y(N358) );
  NOR2XLM U736 ( .A(n576), .B(n569), .Y(N359) );
  NOR2XLM U737 ( .A(n578), .B(n569), .Y(N360) );
  NOR2XLM U738 ( .A(n574), .B(n580), .Y(N342) );
  NAND3XLM U739 ( .A(N338), .B(N340), .C(timer0status[7]), .Y(n570) );
  NOR2XLM U740 ( .A(n579), .B(n570), .Y(N361) );
  NOR2XLM U741 ( .A(n580), .B(n570), .Y(N362) );
  NOR2XLM U742 ( .A(n576), .B(n570), .Y(N363) );
  NOR2XLM U743 ( .A(n578), .B(n570), .Y(N364) );
  NAND3XLM U744 ( .A(N339), .B(N340), .C(n571), .Y(n572) );
  NOR2XLM U745 ( .A(n579), .B(n572), .Y(N365) );
  NOR2XLM U746 ( .A(n580), .B(n572), .Y(N366) );
  NOR2XLM U747 ( .A(n576), .B(n572), .Y(N367) );
  NOR2XLM U748 ( .A(n578), .B(n572), .Y(N368) );
  NAND3XLM U749 ( .A(N338), .B(N339), .C(N340), .Y(n573) );
  NOR2XLM U750 ( .A(n579), .B(n573), .Y(N369) );
  NOR2XLM U751 ( .A(n580), .B(n573), .Y(N370) );
  NOR2XLM U752 ( .A(n574), .B(n576), .Y(N343) );
  NOR2XLM U753 ( .A(n576), .B(n573), .Y(N371) );
  NOR2XLM U754 ( .A(n578), .B(n573), .Y(N372) );
  NOR2XLM U755 ( .A(n574), .B(n578), .Y(N344) );
  NAND3XLM U756 ( .A(N338), .B(timer0status[7]), .C(n575), .Y(n577) );
  NOR2XLM U757 ( .A(n579), .B(n577), .Y(N345) );
  NOR2XLM U758 ( .A(n580), .B(n577), .Y(N346) );
  NOR2XLM U759 ( .A(n576), .B(n577), .Y(N347) );
  NOR2XLM U760 ( .A(n578), .B(n577), .Y(N348) );
  NOR2XLM U761 ( .A(n579), .B(n581), .Y(N349) );
  NOR2XLM U762 ( .A(n581), .B(n580), .Y(N350) );
  INVXLM U763 ( .A(N473), .Y(n582) );
  NAND2BXLM U764 ( .AN(N474), .B(n582), .Y(n594) );
  INVXLM U765 ( .A(N475), .Y(n586) );
  INVXLM U766 ( .A(N477), .Y(n590) );
  NAND3XLM U767 ( .A(n586), .B(timer1status[7]), .C(n590), .Y(n589) );
  NOR2XLM U768 ( .A(n594), .B(n589), .Y(N478) );
  NAND3XLM U769 ( .A(N476), .B(n586), .C(n590), .Y(n596) );
  NAND2XLM U770 ( .A(N474), .B(n582), .Y(n591) );
  NAND2XLM U771 ( .A(N474), .B(N473), .Y(n593) );
  NAND3XLM U772 ( .A(N476), .B(N475), .C(n590), .Y(n583) );
  NOR2XLM U773 ( .A(n594), .B(n583), .Y(N490) );
  NAND2BXLM U774 ( .AN(N474), .B(N473), .Y(n595) );
  NOR2XLM U775 ( .A(n583), .B(n595), .Y(N491) );
  NOR2XLM U776 ( .A(n591), .B(n583), .Y(N492) );
  NOR2XLM U777 ( .A(n593), .B(n583), .Y(N493) );
  NAND3XLM U778 ( .A(N477), .B(n586), .C(timer1status[7]), .Y(n584) );
  NOR2XLM U779 ( .A(n594), .B(n584), .Y(N494) );
  NOR2XLM U780 ( .A(n595), .B(n584), .Y(N495) );
  NOR2XLM U781 ( .A(n591), .B(n584), .Y(N496) );
  NOR2XLM U782 ( .A(n593), .B(n584), .Y(N497) );
  NOR2XLM U783 ( .A(n589), .B(n595), .Y(N479) );
  NAND3XLM U784 ( .A(N475), .B(N477), .C(timer1status[7]), .Y(n585) );
  NOR2XLM U785 ( .A(n594), .B(n585), .Y(N498) );
  NOR2XLM U786 ( .A(n595), .B(n585), .Y(N499) );
  NOR2XLM U787 ( .A(n591), .B(n585), .Y(N500) );
  NOR2XLM U788 ( .A(n593), .B(n585), .Y(N501) );
  NAND3XLM U789 ( .A(N476), .B(N477), .C(n586), .Y(n587) );
  NOR2XLM U790 ( .A(n594), .B(n587), .Y(N502) );
  NOR2XLM U791 ( .A(n595), .B(n587), .Y(N503) );
  NOR2XLM U792 ( .A(n591), .B(n587), .Y(N504) );
  NOR2XLM U793 ( .A(n593), .B(n587), .Y(N505) );
  NAND3XLM U794 ( .A(N475), .B(N476), .C(N477), .Y(n588) );
  NOR2XLM U795 ( .A(n594), .B(n588), .Y(N506) );
  NOR2XLM U796 ( .A(n595), .B(n588), .Y(N507) );
  NOR2XLM U797 ( .A(n589), .B(n591), .Y(N480) );
  NOR2XLM U798 ( .A(n591), .B(n588), .Y(N508) );
  NOR2XLM U799 ( .A(n593), .B(n588), .Y(N509) );
  NOR2XLM U800 ( .A(n589), .B(n593), .Y(N481) );
  NAND3XLM U801 ( .A(N475), .B(timer1status[7]), .C(n590), .Y(n592) );
  NOR2XLM U802 ( .A(n594), .B(n592), .Y(N482) );
  NOR2XLM U803 ( .A(n595), .B(n592), .Y(N483) );
  NOR2XLM U804 ( .A(n591), .B(n592), .Y(N484) );
  NOR2XLM U805 ( .A(n593), .B(n592), .Y(N485) );
  NOR2XLM U806 ( .A(n594), .B(n596), .Y(N486) );
  NOR2XLM U807 ( .A(n596), .B(n595), .Y(N487) );
endmodule

