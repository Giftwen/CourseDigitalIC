debImport "-f" "./sim/filelist_sim.f"
debLoadSimResult \
           /home/gift/workplace/CourseDigitalIC/homework/ch6-7/DataSort/build/simtop.fsdb
wvCreateWindow
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb_datasort"
wvSetCursor -win $_nWave2 39913.551020
wvRestoreSignal -win $_nWave2 \
           "/home/gift/workplace/CourseDigitalIC/homework/ch6-7/DataSort/sim/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 74003.848397 -snap {("G2" 0)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetOptions -win $_nWave2 -output on
wvGetSignalSetSignalFilter -win $_nWave2 "*"
wvSetPosition -win $_nWave2 {("G1" 36)}
wvSetPosition -win $_nWave2 {("G1" 36)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_datasort/clk} \
{/tb_datasort/rst_n} \
{/tb_datasort/vld_in} \
{/tb_datasort/vld_out} \
{/tb_datasort/u_sort/dout_0\[7:0\]} \
{/tb_datasort/u_sort/dout_1\[7:0\]} \
{/tb_datasort/u_sort/dout_2\[7:0\]} \
{/tb_datasort/u_sort/dout_3\[7:0\]} \
{/tb_datasort/u_sort/dout_4\[7:0\]} \
{/tb_datasort/u_sort/dout_5\[7:0\]} \
{/tb_datasort/u_sort/dout_6\[7:0\]} \
{/tb_datasort/u_sort/dout_7\[7:0\]} \
{/tb_datasort/u_sort/dout_8\[7:0\]} \
{/tb_datasort/u_sort/dout_9\[7:0\]} \
{/tb_datasort/u_sort/dout_10\[7:0\]} \
{/tb_datasort/u_sort/dout_11\[7:0\]} \
{/tb_datasort/u_sort/dout_12\[7:0\]} \
{/tb_datasort/u_sort/dout_13\[7:0\]} \
{/tb_datasort/u_sort/dout_14\[7:0\]} \
{/tb_datasort/u_sort/dout_15\[7:0\]} \
{/tb_datasort/u_sort/dout_16\[7:0\]} \
{/tb_datasort/u_sort/dout_17\[7:0\]} \
{/tb_datasort/u_sort/dout_18\[7:0\]} \
{/tb_datasort/u_sort/dout_19\[7:0\]} \
{/tb_datasort/u_sort/dout_20\[7:0\]} \
{/tb_datasort/u_sort/dout_21\[7:0\]} \
{/tb_datasort/u_sort/dout_22\[7:0\]} \
{/tb_datasort/u_sort/dout_23\[7:0\]} \
{/tb_datasort/u_sort/dout_24\[7:0\]} \
{/tb_datasort/u_sort/dout_25\[7:0\]} \
{/tb_datasort/u_sort/dout_26\[7:0\]} \
{/tb_datasort/u_sort/dout_27\[7:0\]} \
{/tb_datasort/u_sort/dout_28\[7:0\]} \
{/tb_datasort/u_sort/dout_29\[7:0\]} \
{/tb_datasort/u_sort/dout_30\[7:0\]} \
{/tb_datasort/u_sort/dout_31\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 \
           21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 )} 
wvSetPosition -win $_nWave2 {("G1" 36)}
wvSetPosition -win $_nWave2 {("G1" 36)}
wvSetPosition -win $_nWave2 {("G1" 36)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_datasort/clk} \
{/tb_datasort/rst_n} \
{/tb_datasort/vld_in} \
{/tb_datasort/vld_out} \
{/tb_datasort/u_sort/dout_0\[7:0\]} \
{/tb_datasort/u_sort/dout_1\[7:0\]} \
{/tb_datasort/u_sort/dout_2\[7:0\]} \
{/tb_datasort/u_sort/dout_3\[7:0\]} \
{/tb_datasort/u_sort/dout_4\[7:0\]} \
{/tb_datasort/u_sort/dout_5\[7:0\]} \
{/tb_datasort/u_sort/dout_6\[7:0\]} \
{/tb_datasort/u_sort/dout_7\[7:0\]} \
{/tb_datasort/u_sort/dout_8\[7:0\]} \
{/tb_datasort/u_sort/dout_9\[7:0\]} \
{/tb_datasort/u_sort/dout_10\[7:0\]} \
{/tb_datasort/u_sort/dout_11\[7:0\]} \
{/tb_datasort/u_sort/dout_12\[7:0\]} \
{/tb_datasort/u_sort/dout_13\[7:0\]} \
{/tb_datasort/u_sort/dout_14\[7:0\]} \
{/tb_datasort/u_sort/dout_15\[7:0\]} \
{/tb_datasort/u_sort/dout_16\[7:0\]} \
{/tb_datasort/u_sort/dout_17\[7:0\]} \
{/tb_datasort/u_sort/dout_18\[7:0\]} \
{/tb_datasort/u_sort/dout_19\[7:0\]} \
{/tb_datasort/u_sort/dout_20\[7:0\]} \
{/tb_datasort/u_sort/dout_21\[7:0\]} \
{/tb_datasort/u_sort/dout_22\[7:0\]} \
{/tb_datasort/u_sort/dout_23\[7:0\]} \
{/tb_datasort/u_sort/dout_24\[7:0\]} \
{/tb_datasort/u_sort/dout_25\[7:0\]} \
{/tb_datasort/u_sort/dout_26\[7:0\]} \
{/tb_datasort/u_sort/dout_27\[7:0\]} \
{/tb_datasort/u_sort/dout_28\[7:0\]} \
{/tb_datasort/u_sort/dout_29\[7:0\]} \
{/tb_datasort/u_sort/dout_30\[7:0\]} \
{/tb_datasort/u_sort/dout_31\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 \
           21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 )} 
wvSetPosition -win $_nWave2 {("G1" 36)}
wvGetSignalClose -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 \
           21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb_datasort"
wvGetSignalSetScope -win $_nWave2 "/tb_datasort/u_sort"
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvGetSignalSetOptions -win $_nWave2 -input on
wvGetSignalSetSignalFilter -win $_nWave2 "*"
wvSetPosition -win $_nWave2 {("G1" 36)}
wvSetPosition -win $_nWave2 {("G1" 36)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_datasort/clk} \
{/tb_datasort/rst_n} \
{/tb_datasort/vld_in} \
{/tb_datasort/vld_out} \
{/tb_datasort/u_sort/din_0\[7:0\]} \
{/tb_datasort/u_sort/din_1\[7:0\]} \
{/tb_datasort/u_sort/din_2\[7:0\]} \
{/tb_datasort/u_sort/din_3\[7:0\]} \
{/tb_datasort/u_sort/din_4\[7:0\]} \
{/tb_datasort/u_sort/din_5\[7:0\]} \
{/tb_datasort/u_sort/din_6\[7:0\]} \
{/tb_datasort/u_sort/din_7\[7:0\]} \
{/tb_datasort/u_sort/din_8\[7:0\]} \
{/tb_datasort/u_sort/din_9\[7:0\]} \
{/tb_datasort/u_sort/din_10\[7:0\]} \
{/tb_datasort/u_sort/din_11\[7:0\]} \
{/tb_datasort/u_sort/din_12\[7:0\]} \
{/tb_datasort/u_sort/din_13\[7:0\]} \
{/tb_datasort/u_sort/din_14\[7:0\]} \
{/tb_datasort/u_sort/din_15\[7:0\]} \
{/tb_datasort/u_sort/din_16\[7:0\]} \
{/tb_datasort/u_sort/din_17\[7:0\]} \
{/tb_datasort/u_sort/din_18\[7:0\]} \
{/tb_datasort/u_sort/din_19\[7:0\]} \
{/tb_datasort/u_sort/din_20\[7:0\]} \
{/tb_datasort/u_sort/din_21\[7:0\]} \
{/tb_datasort/u_sort/din_22\[7:0\]} \
{/tb_datasort/u_sort/din_23\[7:0\]} \
{/tb_datasort/u_sort/din_24\[7:0\]} \
{/tb_datasort/u_sort/din_25\[7:0\]} \
{/tb_datasort/u_sort/din_26\[7:0\]} \
{/tb_datasort/u_sort/din_27\[7:0\]} \
{/tb_datasort/u_sort/din_28\[7:0\]} \
{/tb_datasort/u_sort/din_29\[7:0\]} \
{/tb_datasort/u_sort/din_30\[7:0\]} \
{/tb_datasort/u_sort/din_31\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb_datasort/u_sort/dout_0\[7:0\]} \
{/tb_datasort/u_sort/dout_1\[7:0\]} \
{/tb_datasort/u_sort/dout_2\[7:0\]} \
{/tb_datasort/u_sort/dout_3\[7:0\]} \
{/tb_datasort/u_sort/dout_4\[7:0\]} \
{/tb_datasort/u_sort/dout_5\[7:0\]} \
{/tb_datasort/u_sort/dout_6\[7:0\]} \
{/tb_datasort/u_sort/dout_7\[7:0\]} \
{/tb_datasort/u_sort/dout_8\[7:0\]} \
{/tb_datasort/u_sort/dout_9\[7:0\]} \
{/tb_datasort/u_sort/dout_10\[7:0\]} \
{/tb_datasort/u_sort/dout_11\[7:0\]} \
{/tb_datasort/u_sort/dout_12\[7:0\]} \
{/tb_datasort/u_sort/dout_13\[7:0\]} \
{/tb_datasort/u_sort/dout_14\[7:0\]} \
{/tb_datasort/u_sort/dout_15\[7:0\]} \
{/tb_datasort/u_sort/dout_16\[7:0\]} \
{/tb_datasort/u_sort/dout_17\[7:0\]} \
{/tb_datasort/u_sort/dout_18\[7:0\]} \
{/tb_datasort/u_sort/dout_19\[7:0\]} \
{/tb_datasort/u_sort/dout_20\[7:0\]} \
{/tb_datasort/u_sort/dout_21\[7:0\]} \
{/tb_datasort/u_sort/dout_22\[7:0\]} \
{/tb_datasort/u_sort/dout_23\[7:0\]} \
{/tb_datasort/u_sort/dout_24\[7:0\]} \
{/tb_datasort/u_sort/dout_25\[7:0\]} \
{/tb_datasort/u_sort/dout_26\[7:0\]} \
{/tb_datasort/u_sort/dout_27\[7:0\]} \
{/tb_datasort/u_sort/dout_28\[7:0\]} \
{/tb_datasort/u_sort/dout_29\[7:0\]} \
{/tb_datasort/u_sort/dout_30\[7:0\]} \
{/tb_datasort/u_sort/dout_31\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 \
           21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 )} 
wvSetPosition -win $_nWave2 {("G1" 36)}
wvGetSignalClose -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 162565.830904 -snap {("G1" 23)}
wvSetCursor -win $_nWave2 31542.623907 -snap {("G1" 16)}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 \
           21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 )} {( "G2" 1 2 3 4 \
           5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 \
           29 30 31 32 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 \
           21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 )} {( "G2" 1 2 3 4 \
           5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 \
           29 30 31 32 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 402775.043732 -snap {("G2" 21)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 499829.271137 -snap {("G2" 6)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 16
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSetPosition -win $_nWave2 {("G1" 0)}
wvCollapseGroup -win $_nWave2 "G1"
wvSetCursor -win $_nWave2 402479.870729 -snap {("G2" 22)}
verdiDockWidgetRestore -dock windowDock_nWave_2
verdiDockWidgetMaximize -dock windowDock_nWave_2
verdiWindowResize -win $_Verdi_1 -1 "29" "1429" "860"
wvSetCursor -win $_nWave2 289817.923016 -snap {("G2" 14)}
wvSetCursor -win $_nWave2 249124.105789 -snap {("G2" 21)}
debExit
