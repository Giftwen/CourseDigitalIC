/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Sun Nov 13 17:28:42 2022
/////////////////////////////////////////////////////////////


module top ( hclk, hresetn, hwrite, htrans, hsize, haddr, hburst, hwdata, 
        hready, hresp, hrdata, sram_csn, sram_wen, sram_a, sram_d, sram_q );
  input [1:0] htrans;
  input [2:0] hsize;
  input [31:0] haddr;
  input [2:0] hburst;
  input [31:0] hwdata;
  output [1:0] hresp;
  output [31:0] hrdata;
  output [11:0] sram_a;
  output [31:0] sram_d;
  input [31:0] sram_q;
  input hclk, hresetn, hwrite;
  output hready, sram_csn, sram_wen;
  wire   N6, N7, N12, N54, N62, N70, N78, N79, N80, N81, N82, N83, N84, N85,
         N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99,
         N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121,
         N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132,
         N133, N134, N135, N136, N137, N138, N139, N140, N141, N142, N144,
         N145, N146, N147, N148, N149, N150, N151, N152, N153, N154, N155,
         N156, N157, N158, N159, N160, N161, N162, N163, N164, N165, N166,
         N167, N168, N169, N170, N171, N172, N173, N174, N175, N176, N177,
         N178, N179, N180, N181, N182, N183, N184, N185, N186, N187, N188,
         N189, N190, N191, N192, N193, N194, N195, N196, N197, N198, N199,
         N200, N201, N202, N203, N204, N205, N206, N207, N208, N209, N210,
         N211, N212, N213, N214, N215, N216, N217, N218, N219, N220, N221,
         N222, N223, N224, N225, N226, N227, N228, N229, N230, N231, N232,
         N233, N234, N235, N236, N237, N238, N239, N14, N13, n1, n2, n4, n6,
         n7, n9, n11, n13, n15, n17, n19, n21, n23, n25, n27, n29, n32, n35,
         n36, n37, n38;
  wire   [31:0] hwdata_mask;
  assign hready = 1'b1;
  assign hresp[1] = 1'b0;
  assign hresp[0] = 1'b0;
  assign sram_csn = 1'b0;

  INVXLM I_36 ( .A(hwdata_mask[0]), .Y(N238) );
  AND2X1M C463 ( .A(hrdata[0]), .B(N238), .Y(N239) );
  AND2X2M C462 ( .A(hwdata[0]), .B(hwdata_mask[0]), .Y(N237) );
  OR2X1M C461 ( .A(N237), .B(N239), .Y(N142) );
  INVXLM I_35 ( .A(hwdata_mask[1]), .Y(N235) );
  AND2X1M C459 ( .A(hrdata[1]), .B(N235), .Y(N236) );
  AND2X2M C458 ( .A(hwdata[1]), .B(hwdata_mask[1]), .Y(N234) );
  OR2X1M C457 ( .A(N234), .B(N236), .Y(N141) );
  INVXLM I_34 ( .A(hwdata_mask[2]), .Y(N232) );
  AND2X1M C455 ( .A(hrdata[2]), .B(N232), .Y(N233) );
  AND2X2M C454 ( .A(hwdata[2]), .B(hwdata_mask[2]), .Y(N231) );
  OR2X1M C453 ( .A(N231), .B(N233), .Y(N140) );
  INVXLM I_33 ( .A(hwdata_mask[3]), .Y(N229) );
  AND2X1M C451 ( .A(hrdata[3]), .B(N229), .Y(N230) );
  OR2X1M C449 ( .A(N228), .B(N230), .Y(N139) );
  INVXLM I_32 ( .A(hwdata_mask[4]), .Y(N226) );
  AND2X1M C447 ( .A(hrdata[4]), .B(N226), .Y(N227) );
  AND2X2M C446 ( .A(hwdata[4]), .B(hwdata_mask[4]), .Y(N225) );
  OR2X1M C445 ( .A(N225), .B(N227), .Y(N138) );
  INVXLM I_31 ( .A(hwdata_mask[5]), .Y(N223) );
  AND2X1M C443 ( .A(hrdata[5]), .B(N223), .Y(N224) );
  AND2X2M C442 ( .A(hwdata[5]), .B(hwdata_mask[5]), .Y(N222) );
  OR2X1M C441 ( .A(N222), .B(N224), .Y(N137) );
  INVXLM I_30 ( .A(hwdata_mask[6]), .Y(N220) );
  AND2X1M C439 ( .A(hrdata[6]), .B(N220), .Y(N221) );
  AND2X2M C438 ( .A(hwdata[6]), .B(hwdata_mask[6]), .Y(N219) );
  OR2X1M C437 ( .A(N219), .B(N221), .Y(N136) );
  INVXLM I_29 ( .A(hwdata_mask[7]), .Y(N217) );
  AND2X1M C435 ( .A(hrdata[7]), .B(N217), .Y(N218) );
  AND2X2M C434 ( .A(hwdata[7]), .B(hwdata_mask[7]), .Y(N216) );
  OR2X1M C433 ( .A(N216), .B(N218), .Y(N135) );
  INVXLM I_28 ( .A(hwdata_mask[8]), .Y(N214) );
  AND2X1M C431 ( .A(hrdata[8]), .B(N214), .Y(N215) );
  AND2X2M C430 ( .A(hwdata[8]), .B(hwdata_mask[8]), .Y(N213) );
  OR2X1M C429 ( .A(N213), .B(N215), .Y(N134) );
  INVXLM I_27 ( .A(hwdata_mask[9]), .Y(N211) );
  AND2X1M C427 ( .A(hrdata[9]), .B(N211), .Y(N212) );
  AND2X2M C426 ( .A(hwdata[9]), .B(hwdata_mask[9]), .Y(N210) );
  OR2X1M C425 ( .A(N210), .B(N212), .Y(N133) );
  INVXLM I_26 ( .A(hwdata_mask[10]), .Y(N208) );
  AND2X1M C423 ( .A(hrdata[10]), .B(N208), .Y(N209) );
  OR2X1M C421 ( .A(N207), .B(N209), .Y(N132) );
  INVXLM I_25 ( .A(hwdata_mask[11]), .Y(N205) );
  AND2X1M C419 ( .A(hrdata[11]), .B(N205), .Y(N206) );
  AND2X2M C418 ( .A(hwdata[11]), .B(hwdata_mask[11]), .Y(N204) );
  OR2X1M C417 ( .A(N204), .B(N206), .Y(N131) );
  INVXLM I_24 ( .A(hwdata_mask[12]), .Y(N202) );
  AND2X1M C415 ( .A(hrdata[12]), .B(N202), .Y(N203) );
  AND2X2M C414 ( .A(hwdata[12]), .B(hwdata_mask[12]), .Y(N201) );
  OR2X1M C413 ( .A(N201), .B(N203), .Y(N130) );
  INVXLM I_23 ( .A(hwdata_mask[13]), .Y(N199) );
  AND2X1M C411 ( .A(hrdata[13]), .B(N199), .Y(N200) );
  AND2X2M C410 ( .A(hwdata[13]), .B(hwdata_mask[13]), .Y(N198) );
  OR2X1M C409 ( .A(N198), .B(N200), .Y(N129) );
  INVXLM I_22 ( .A(hwdata_mask[14]), .Y(N196) );
  AND2X1M C407 ( .A(hrdata[14]), .B(N196), .Y(N197) );
  AND2X2M C406 ( .A(hwdata[14]), .B(hwdata_mask[14]), .Y(N195) );
  OR2X1M C405 ( .A(N195), .B(N197), .Y(N128) );
  INVXLM I_21 ( .A(hwdata_mask[15]), .Y(N193) );
  AND2X1M C403 ( .A(hrdata[15]), .B(N193), .Y(N194) );
  AND2X2M C402 ( .A(hwdata[15]), .B(hwdata_mask[15]), .Y(N192) );
  OR2X1M C401 ( .A(N192), .B(N194), .Y(N127) );
  INVXLM I_20 ( .A(hwdata_mask[16]), .Y(N190) );
  AND2X1M C399 ( .A(hrdata[16]), .B(N190), .Y(N191) );
  AND2X2M C398 ( .A(hwdata[16]), .B(hwdata_mask[16]), .Y(N189) );
  OR2X1M C397 ( .A(N189), .B(N191), .Y(N126) );
  INVXLM I_19 ( .A(hwdata_mask[17]), .Y(N187) );
  AND2X1M C395 ( .A(hrdata[17]), .B(N187), .Y(N188) );
  AND2X2M C394 ( .A(hwdata[17]), .B(hwdata_mask[17]), .Y(N186) );
  OR2X1M C393 ( .A(N186), .B(N188), .Y(N125) );
  INVXLM I_18 ( .A(hwdata_mask[18]), .Y(N184) );
  AND2X1M C391 ( .A(hrdata[18]), .B(N184), .Y(N185) );
  OR2X1M C389 ( .A(N183), .B(N185), .Y(N124) );
  INVXLM I_17 ( .A(hwdata_mask[19]), .Y(N181) );
  AND2X1M C387 ( .A(hrdata[19]), .B(N181), .Y(N182) );
  AND2X2M C386 ( .A(hwdata[19]), .B(hwdata_mask[19]), .Y(N180) );
  OR2X1M C385 ( .A(N180), .B(N182), .Y(N123) );
  INVXLM I_16 ( .A(hwdata_mask[20]), .Y(N178) );
  AND2X1M C383 ( .A(hrdata[20]), .B(N178), .Y(N179) );
  AND2X2M C382 ( .A(hwdata[20]), .B(hwdata_mask[20]), .Y(N177) );
  OR2X1M C381 ( .A(N177), .B(N179), .Y(N122) );
  INVXLM I_15 ( .A(hwdata_mask[21]), .Y(N175) );
  AND2X1M C379 ( .A(hrdata[21]), .B(N175), .Y(N176) );
  AND2X2M C378 ( .A(hwdata[21]), .B(hwdata_mask[21]), .Y(N174) );
  OR2X1M C377 ( .A(N174), .B(N176), .Y(N121) );
  INVXLM I_14 ( .A(hwdata_mask[22]), .Y(N172) );
  AND2X1M C375 ( .A(hrdata[22]), .B(N172), .Y(N173) );
  AND2X2M C374 ( .A(hwdata[22]), .B(hwdata_mask[22]), .Y(N171) );
  OR2X1M C373 ( .A(N171), .B(N173), .Y(N120) );
  INVXLM I_13 ( .A(hwdata_mask[23]), .Y(N169) );
  AND2X1M C371 ( .A(hrdata[23]), .B(N169), .Y(N170) );
  AND2X2M C370 ( .A(hwdata[23]), .B(hwdata_mask[23]), .Y(N168) );
  OR2X1M C369 ( .A(N168), .B(N170), .Y(N119) );
  INVXLM I_12 ( .A(hwdata_mask[24]), .Y(N166) );
  AND2X1M C367 ( .A(hrdata[24]), .B(N166), .Y(N167) );
  AND2X2M C366 ( .A(hwdata[24]), .B(hwdata_mask[24]), .Y(N165) );
  OR2X1M C365 ( .A(N165), .B(N167), .Y(N118) );
  INVXLM I_11 ( .A(hwdata_mask[25]), .Y(N163) );
  AND2X1M C363 ( .A(hrdata[25]), .B(N163), .Y(N164) );
  OR2X1M C361 ( .A(N162), .B(N164), .Y(N117) );
  INVXLM I_10 ( .A(hwdata_mask[26]), .Y(N160) );
  AND2X1M C359 ( .A(hrdata[26]), .B(N160), .Y(N161) );
  AND2X2M C358 ( .A(hwdata[26]), .B(hwdata_mask[26]), .Y(N159) );
  OR2X1M C357 ( .A(N159), .B(N161), .Y(N116) );
  INVXLM I_9 ( .A(hwdata_mask[27]), .Y(N157) );
  AND2X1M C355 ( .A(hrdata[27]), .B(N157), .Y(N158) );
  AND2X2M C354 ( .A(hwdata[27]), .B(hwdata_mask[27]), .Y(N156) );
  OR2X1M C353 ( .A(N156), .B(N158), .Y(N115) );
  INVXLM I_8 ( .A(hwdata_mask[28]), .Y(N154) );
  AND2X1M C351 ( .A(hrdata[28]), .B(N154), .Y(N155) );
  AND2X2M C350 ( .A(hwdata[28]), .B(hwdata_mask[28]), .Y(N153) );
  OR2X1M C349 ( .A(N153), .B(N155), .Y(N114) );
  INVXLM I_7 ( .A(hwdata_mask[29]), .Y(N151) );
  AND2X1M C347 ( .A(hrdata[29]), .B(N151), .Y(N152) );
  AND2X2M C346 ( .A(hwdata[29]), .B(hwdata_mask[29]), .Y(N150) );
  OR2X1M C345 ( .A(N150), .B(N152), .Y(N113) );
  INVXLM I_6 ( .A(hwdata_mask[30]), .Y(N148) );
  AND2X1M C343 ( .A(hrdata[30]), .B(N148), .Y(N149) );
  AND2X2M C342 ( .A(hwdata[30]), .B(hwdata_mask[30]), .Y(N147) );
  OR2X1M C341 ( .A(N147), .B(N149), .Y(N112) );
  INVXLM I_5 ( .A(hwdata_mask[31]), .Y(N145) );
  AND2X1M C339 ( .A(hrdata[31]), .B(N145), .Y(N146) );
  AND2X2M C338 ( .A(hwdata[31]), .B(hwdata_mask[31]), .Y(N144) );
  OR2X1M C337 ( .A(N144), .B(N146), .Y(N111) );
  AND2X1M C326 ( .A(hwrite), .B(htrans[1]), .Y(N6) );
  CLKNAND2X2M U8 ( .A(n1), .B(n2), .Y(N99) );
  AOI22X1M U9 ( .A0(n36), .A1(haddr[1]), .B0(N13), .B1(N70), .Y(n2) );
  CLKNAND2X2M U10 ( .A(n1), .B(n2), .Y(N98) );
  CLKNAND2X2M U12 ( .A(n1), .B(n4), .Y(N97) );
  CLKNAND2X2M U14 ( .A(n1), .B(n4), .Y(N96) );
  CLKNAND2X2M U16 ( .A(n1), .B(n6), .Y(N95) );
  AOI22X1M U17 ( .A0(n36), .A1(haddr[1]), .B0(N13), .B1(N70), .Y(n6) );
  CLKNAND2X2M U18 ( .A(n1), .B(n7), .Y(N94) );
  AOI22X1M U19 ( .A0(n36), .A1(n37), .B0(N13), .B1(N62), .Y(n7) );
  CLKNAND2X2M U20 ( .A(n1), .B(n7), .Y(N93) );
  CLKNAND2X2M U22 ( .A(n1), .B(n9), .Y(N92) );
  AOI22X1M U23 ( .A0(n36), .A1(n37), .B0(N13), .B1(N62), .Y(n9) );
  CLKNAND2X2M U24 ( .A(n1), .B(n9), .Y(N91) );
  CLKNAND2X2M U26 ( .A(n1), .B(n11), .Y(N90) );
  AOI22X1M U27 ( .A0(n36), .A1(n37), .B0(N13), .B1(N62), .Y(n11) );
  CLKNAND2X2M U28 ( .A(n1), .B(n11), .Y(N89) );
  CLKNAND2X2M U30 ( .A(n1), .B(n13), .Y(N88) );
  AOI22X1M U31 ( .A0(n36), .A1(n37), .B0(N13), .B1(N62), .Y(n13) );
  CLKNAND2X2M U32 ( .A(n1), .B(n13), .Y(N87) );
  CLKNAND2X2M U34 ( .A(n1), .B(n15), .Y(N86) );
  AOI22X1M U35 ( .A0(n36), .A1(n37), .B0(N13), .B1(N54), .Y(n15) );
  CLKNAND2X2M U38 ( .A(n1), .B(n17), .Y(N84) );
  AOI22X1M U39 ( .A0(n36), .A1(n37), .B0(N13), .B1(N54), .Y(n17) );
  CLKNAND2X2M U40 ( .A(n1), .B(n17), .Y(N83) );
  CLKNAND2X2M U42 ( .A(n1), .B(n19), .Y(N82) );
  AOI22X1M U43 ( .A0(n36), .A1(n37), .B0(N13), .B1(N54), .Y(n19) );
  CLKNAND2X2M U44 ( .A(n1), .B(n19), .Y(N81) );
  CLKNAND2X2M U46 ( .A(n1), .B(n21), .Y(N80) );
  CLKNAND2X2M U50 ( .A(n1), .B(n23), .Y(N110) );
  AOI22X1M U51 ( .A0(n36), .A1(haddr[1]), .B0(N13), .B1(N78), .Y(n23) );
  CLKNAND2X2M U52 ( .A(n1), .B(n23), .Y(N109) );
  CLKNAND2X2M U54 ( .A(n1), .B(n25), .Y(N108) );
  AOI22X1M U55 ( .A0(n36), .A1(haddr[1]), .B0(N13), .B1(N78), .Y(n25) );
  CLKNAND2X2M U56 ( .A(n1), .B(n25), .Y(N107) );
  CLKNAND2X2M U58 ( .A(n1), .B(n27), .Y(N106) );
  AOI22X1M U59 ( .A0(n36), .A1(haddr[1]), .B0(N13), .B1(N78), .Y(n27) );
  CLKNAND2X2M U60 ( .A(n1), .B(n27), .Y(N105) );
  CLKNAND2X2M U62 ( .A(n1), .B(n29), .Y(N104) );
  AOI22X1M U63 ( .A0(n36), .A1(haddr[1]), .B0(N13), .B1(N78), .Y(n29) );
  CLKNAND2X2M U64 ( .A(n1), .B(n29), .Y(N103) );
  CLKNAND2X2M U66 ( .A(n1), .B(n6), .Y(N102) );
  CLKNAND2X2M U68 ( .A(n1), .B(n32), .Y(N101) );
  AOI22X1M U69 ( .A0(n36), .A1(haddr[1]), .B0(N13), .B1(N70), .Y(n32) );
  NOR2X1M U72 ( .A(N14), .B(n35), .Y(n1) );
  DFFRQX1M sram_a_reg_11_ ( .D(haddr[13]), .CK(hclk), .RN(hresetn), .Q(
        sram_a[11]) );
  DFFRQX1M sram_a_reg_10_ ( .D(haddr[12]), .CK(hclk), .RN(hresetn), .Q(
        sram_a[10]) );
  DFFRQX1M sram_a_reg_9_ ( .D(haddr[11]), .CK(hclk), .RN(hresetn), .Q(
        sram_a[9]) );
  DFFRQX1M sram_a_reg_8_ ( .D(haddr[10]), .CK(hclk), .RN(hresetn), .Q(
        sram_a[8]) );
  DFFRQX1M sram_a_reg_7_ ( .D(haddr[9]), .CK(hclk), .RN(hresetn), .Q(sram_a[7]) );
  DFFRQX1M sram_a_reg_6_ ( .D(haddr[8]), .CK(hclk), .RN(hresetn), .Q(sram_a[6]) );
  DFFRQX1M sram_a_reg_5_ ( .D(haddr[7]), .CK(hclk), .RN(hresetn), .Q(sram_a[5]) );
  DFFRQX1M sram_a_reg_4_ ( .D(haddr[6]), .CK(hclk), .RN(hresetn), .Q(sram_a[4]) );
  DFFRQX1M sram_a_reg_3_ ( .D(haddr[5]), .CK(hclk), .RN(hresetn), .Q(sram_a[3]) );
  DFFRQX1M sram_a_reg_2_ ( .D(haddr[4]), .CK(hclk), .RN(hresetn), .Q(sram_a[2]) );
  DFFRQX1M sram_a_reg_1_ ( .D(haddr[3]), .CK(hclk), .RN(hresetn), .Q(sram_a[1]) );
  DFFRQX1M sram_a_reg_0_ ( .D(haddr[2]), .CK(hclk), .RN(hresetn), .Q(sram_a[0]) );
  DFFRQX1M hrdata_reg_31_ ( .D(sram_q[31]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[31]) );
  DFFRQX1M hrdata_reg_30_ ( .D(sram_q[30]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[30]) );
  DFFRQX1M hrdata_reg_29_ ( .D(sram_q[29]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[29]) );
  DFFRQX1M hrdata_reg_28_ ( .D(sram_q[28]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[28]) );
  DFFRQX1M hrdata_reg_27_ ( .D(sram_q[27]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[27]) );
  DFFRQX1M hrdata_reg_26_ ( .D(sram_q[26]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[26]) );
  DFFRQX1M hrdata_reg_25_ ( .D(sram_q[25]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[25]) );
  DFFRQX1M hrdata_reg_24_ ( .D(sram_q[24]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[24]) );
  DFFRQX1M hrdata_reg_23_ ( .D(sram_q[23]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[23]) );
  DFFRQX1M hrdata_reg_22_ ( .D(sram_q[22]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[22]) );
  DFFRQX1M hrdata_reg_21_ ( .D(sram_q[21]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[21]) );
  DFFRQX1M hrdata_reg_20_ ( .D(sram_q[20]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[20]) );
  DFFRQX1M hrdata_reg_19_ ( .D(sram_q[19]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[19]) );
  DFFRQX1M hrdata_reg_18_ ( .D(sram_q[18]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[18]) );
  DFFRQX1M hrdata_reg_17_ ( .D(sram_q[17]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[17]) );
  DFFRQX1M hrdata_reg_16_ ( .D(sram_q[16]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[16]) );
  DFFRQX1M hrdata_reg_15_ ( .D(sram_q[15]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[15]) );
  DFFRQX1M hrdata_reg_14_ ( .D(sram_q[14]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[14]) );
  DFFRQX1M hrdata_reg_13_ ( .D(sram_q[13]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[13]) );
  DFFRQX1M hrdata_reg_12_ ( .D(sram_q[12]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[12]) );
  DFFRQX1M hrdata_reg_11_ ( .D(sram_q[11]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[11]) );
  DFFRQX1M hrdata_reg_10_ ( .D(sram_q[10]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[10]) );
  DFFRQX1M hrdata_reg_9_ ( .D(sram_q[9]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[9]) );
  DFFRQX1M hrdata_reg_8_ ( .D(sram_q[8]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[8]) );
  DFFRQX1M hrdata_reg_7_ ( .D(sram_q[7]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[7]) );
  DFFRQX1M hrdata_reg_6_ ( .D(sram_q[6]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[6]) );
  DFFRQX1M hrdata_reg_5_ ( .D(sram_q[5]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[5]) );
  DFFRQX1M hrdata_reg_4_ ( .D(sram_q[4]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[4]) );
  DFFRQX1M hrdata_reg_3_ ( .D(sram_q[3]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[3]) );
  DFFRQX1M hrdata_reg_2_ ( .D(sram_q[2]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[2]) );
  DFFRQX1M hrdata_reg_1_ ( .D(sram_q[1]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[1]) );
  DFFRQX1M hrdata_reg_0_ ( .D(sram_q[0]), .CK(hclk), .RN(hresetn), .Q(
        hrdata[0]) );
  DFFRQX1M sram_wen_reg ( .D(N6), .CK(hclk), .RN(hresetn), .Q(sram_wen) );
  DFFRQX1M sram_d_reg_31_ ( .D(N111), .CK(hclk), .RN(hresetn), .Q(sram_d[31])
         );
  DFFRQX1M sram_d_reg_30_ ( .D(N112), .CK(hclk), .RN(hresetn), .Q(sram_d[30])
         );
  DFFRQX1M sram_d_reg_29_ ( .D(N113), .CK(hclk), .RN(hresetn), .Q(sram_d[29])
         );
  DFFRQX1M sram_d_reg_28_ ( .D(N114), .CK(hclk), .RN(hresetn), .Q(sram_d[28])
         );
  DFFRQX1M sram_d_reg_27_ ( .D(N115), .CK(hclk), .RN(hresetn), .Q(sram_d[27])
         );
  DFFRQX1M sram_d_reg_26_ ( .D(N116), .CK(hclk), .RN(hresetn), .Q(sram_d[26])
         );
  DFFRQX1M sram_d_reg_25_ ( .D(N117), .CK(hclk), .RN(hresetn), .Q(sram_d[25])
         );
  DFFRQX1M sram_d_reg_24_ ( .D(N118), .CK(hclk), .RN(hresetn), .Q(sram_d[24])
         );
  DFFRQX1M sram_d_reg_23_ ( .D(N119), .CK(hclk), .RN(hresetn), .Q(sram_d[23])
         );
  DFFRQX1M sram_d_reg_22_ ( .D(N120), .CK(hclk), .RN(hresetn), .Q(sram_d[22])
         );
  DFFRQX1M sram_d_reg_21_ ( .D(N121), .CK(hclk), .RN(hresetn), .Q(sram_d[21])
         );
  DFFRQX1M sram_d_reg_20_ ( .D(N122), .CK(hclk), .RN(hresetn), .Q(sram_d[20])
         );
  DFFRQX1M sram_d_reg_19_ ( .D(N123), .CK(hclk), .RN(hresetn), .Q(sram_d[19])
         );
  DFFRQX1M sram_d_reg_18_ ( .D(N124), .CK(hclk), .RN(hresetn), .Q(sram_d[18])
         );
  DFFRQX1M sram_d_reg_17_ ( .D(N125), .CK(hclk), .RN(hresetn), .Q(sram_d[17])
         );
  DFFRQX1M sram_d_reg_16_ ( .D(N126), .CK(hclk), .RN(hresetn), .Q(sram_d[16])
         );
  DFFRQX1M sram_d_reg_15_ ( .D(N127), .CK(hclk), .RN(hresetn), .Q(sram_d[15])
         );
  DFFRQX1M sram_d_reg_14_ ( .D(N128), .CK(hclk), .RN(hresetn), .Q(sram_d[14])
         );
  DFFRQX1M sram_d_reg_13_ ( .D(N129), .CK(hclk), .RN(hresetn), .Q(sram_d[13])
         );
  DFFRQX1M sram_d_reg_12_ ( .D(N130), .CK(hclk), .RN(hresetn), .Q(sram_d[12])
         );
  DFFRQX1M sram_d_reg_11_ ( .D(N131), .CK(hclk), .RN(hresetn), .Q(sram_d[11])
         );
  DFFRQX1M sram_d_reg_10_ ( .D(N132), .CK(hclk), .RN(hresetn), .Q(sram_d[10])
         );
  DFFRQX1M sram_d_reg_9_ ( .D(N133), .CK(hclk), .RN(hresetn), .Q(sram_d[9]) );
  DFFRQX1M sram_d_reg_8_ ( .D(N134), .CK(hclk), .RN(hresetn), .Q(sram_d[8]) );
  DFFRQX1M sram_d_reg_7_ ( .D(N135), .CK(hclk), .RN(hresetn), .Q(sram_d[7]) );
  DFFRQX1M sram_d_reg_6_ ( .D(N136), .CK(hclk), .RN(hresetn), .Q(sram_d[6]) );
  DFFRQX1M sram_d_reg_5_ ( .D(N137), .CK(hclk), .RN(hresetn), .Q(sram_d[5]) );
  DFFRQX1M sram_d_reg_4_ ( .D(N138), .CK(hclk), .RN(hresetn), .Q(sram_d[4]) );
  DFFRQX1M sram_d_reg_3_ ( .D(N139), .CK(hclk), .RN(hresetn), .Q(sram_d[3]) );
  DFFRQX1M sram_d_reg_2_ ( .D(N140), .CK(hclk), .RN(hresetn), .Q(sram_d[2]) );
  DFFRQX1M sram_d_reg_1_ ( .D(N141), .CK(hclk), .RN(hresetn), .Q(sram_d[1]) );
  DFFRQX1M sram_d_reg_0_ ( .D(N142), .CK(hclk), .RN(hresetn), .Q(sram_d[0]) );
  DFFRQX1M hwdata_mask_reg_31_ ( .D(N110), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[31]) );
  DFFRQX1M hwdata_mask_reg_30_ ( .D(N109), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[30]) );
  DFFRQX1M hwdata_mask_reg_29_ ( .D(N108), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[29]) );
  DFFRQX1M hwdata_mask_reg_28_ ( .D(N107), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[28]) );
  DFFRQX1M hwdata_mask_reg_27_ ( .D(N106), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[27]) );
  DFFRQX1M hwdata_mask_reg_26_ ( .D(N105), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[26]) );
  DFFRQX1M hwdata_mask_reg_25_ ( .D(N104), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[25]) );
  DFFRQX1M hwdata_mask_reg_24_ ( .D(N103), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[24]) );
  DFFRQX1M hwdata_mask_reg_23_ ( .D(N102), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[23]) );
  DFFRQX1M hwdata_mask_reg_22_ ( .D(N101), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[22]) );
  DFFRQX1M hwdata_mask_reg_21_ ( .D(N100), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[21]) );
  DFFRQX1M hwdata_mask_reg_20_ ( .D(N99), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[20]) );
  DFFRQX1M hwdata_mask_reg_19_ ( .D(N98), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[19]) );
  DFFRQX1M hwdata_mask_reg_18_ ( .D(N97), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[18]) );
  DFFRQX1M hwdata_mask_reg_17_ ( .D(N96), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[17]) );
  DFFRQX1M hwdata_mask_reg_16_ ( .D(N95), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[16]) );
  DFFRQX1M hwdata_mask_reg_15_ ( .D(N94), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[15]) );
  DFFRQX1M hwdata_mask_reg_14_ ( .D(N93), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[14]) );
  DFFRQX1M hwdata_mask_reg_13_ ( .D(N92), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[13]) );
  DFFRQX1M hwdata_mask_reg_12_ ( .D(N91), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[12]) );
  DFFRQX1M hwdata_mask_reg_11_ ( .D(N90), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[11]) );
  DFFRQX1M hwdata_mask_reg_10_ ( .D(N89), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[10]) );
  DFFRQX1M hwdata_mask_reg_9_ ( .D(N88), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[9]) );
  DFFRQX1M hwdata_mask_reg_8_ ( .D(N87), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[8]) );
  DFFRQX1M hwdata_mask_reg_7_ ( .D(N86), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[7]) );
  DFFRQX1M hwdata_mask_reg_6_ ( .D(N85), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[6]) );
  DFFRQX1M hwdata_mask_reg_5_ ( .D(N84), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[5]) );
  DFFRQX1M hwdata_mask_reg_4_ ( .D(N83), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[4]) );
  DFFRQX1M hwdata_mask_reg_3_ ( .D(N82), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[3]) );
  DFFRQX1M hwdata_mask_reg_2_ ( .D(N81), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[2]) );
  DFFRQX1M hwdata_mask_reg_1_ ( .D(N80), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[1]) );
  DFFRQX1M hwdata_mask_reg_0_ ( .D(N79), .CK(hclk), .RN(hresetn), .Q(
        hwdata_mask[0]) );
  CLKINVX2M I_4 ( .A(hsize[0]), .Y(N12) );
  CLKINVX2M I_1 ( .A(hsize[1]), .Y(N7) );
  INVXLM U74 ( .A(haddr[0]), .Y(n38) );
  NOR2XLM U75 ( .A(haddr[1]), .B(haddr[0]), .Y(N54) );
  AOI22XLM U76 ( .A0(n36), .A1(n37), .B0(N13), .B1(N54), .Y(n21) );
  AOI22XLM U77 ( .A0(n36), .A1(haddr[1]), .B0(N13), .B1(N70), .Y(n4) );
  AND2X1M U78 ( .A(hwdata[3]), .B(hwdata_mask[3]), .Y(N228) );
  AND2X1M U79 ( .A(hwdata[10]), .B(hwdata_mask[10]), .Y(N207) );
  AND2X1M U80 ( .A(hwdata[18]), .B(hwdata_mask[18]), .Y(N183) );
  AND2X1M U81 ( .A(hwdata[25]), .B(hwdata_mask[25]), .Y(N162) );
  NAND2XLM U82 ( .A(n1), .B(n21), .Y(N79) );
  NAND2XLM U83 ( .A(n1), .B(n15), .Y(N85) );
  NAND2XLM U84 ( .A(n1), .B(n32), .Y(N100) );
  INVXLM U85 ( .A(haddr[1]), .Y(n37) );
  AND2X1M U86 ( .A(hsize[1]), .B(hsize[0]), .Y(N14) );
  AND2X1M U87 ( .A(N7), .B(N12), .Y(N13) );
  NOR2XLM U88 ( .A(N7), .B(hsize[0]), .Y(n35) );
  NOR2XLM U89 ( .A(hsize[1]), .B(N12), .Y(n36) );
  NOR2X1M U90 ( .A(haddr[0]), .B(n37), .Y(N70) );
  NOR2X1M U91 ( .A(n37), .B(n38), .Y(N78) );
  NOR2X1M U92 ( .A(haddr[1]), .B(n38), .Y(N62) );
endmodule

