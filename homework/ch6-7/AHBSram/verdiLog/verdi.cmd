debImport "-f" "./sim/filelist_sim.f"
debLoadSimResult \
           /home/gift/workplace/CourseDigitalIC/homework/ch6-7/AHBSram/build/simtop.fsdb
wvCreateWindow
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb_ahbsram"
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_ahbsram/haddr\[31:0\]} \
{/tb_ahbsram/hburst\[2:0\]} \
{/tb_ahbsram/hclk} \
{/tb_ahbsram/hrdata\[31:0\]} \
{/tb_ahbsram/hready} \
{/tb_ahbsram/hresetn} \
{/tb_ahbsram/hresp\[1:0\]} \
{/tb_ahbsram/hsize\[2:0\]} \
{/tb_ahbsram/htrans\[1:0\]} \
{/tb_ahbsram/hwdata\[31:0\]} \
{/tb_ahbsram/hwrite} \
{/tb_ahbsram/sram_a\[11:0\]} \
{/tb_ahbsram/sram_csn} \
{/tb_ahbsram/sram_d\[31:0\]} \
{/tb_ahbsram/sram_q\[31:0\]} \
{/tb_ahbsram/sram_wen} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 )} \
           
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_ahbsram/haddr\[31:0\]} \
{/tb_ahbsram/hburst\[2:0\]} \
{/tb_ahbsram/hclk} \
{/tb_ahbsram/hrdata\[31:0\]} \
{/tb_ahbsram/hready} \
{/tb_ahbsram/hresetn} \
{/tb_ahbsram/hresp\[1:0\]} \
{/tb_ahbsram/hsize\[2:0\]} \
{/tb_ahbsram/htrans\[1:0\]} \
{/tb_ahbsram/hwdata\[31:0\]} \
{/tb_ahbsram/hwrite} \
{/tb_ahbsram/sram_a\[11:0\]} \
{/tb_ahbsram/sram_csn} \
{/tb_ahbsram/sram_d\[31:0\]} \
{/tb_ahbsram/sram_q\[31:0\]} \
{/tb_ahbsram/sram_wen} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 )} \
           
wvSetPosition -win $_nWave2 {("G1" 16)}
wvGetSignalClose -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 421230.342276 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 416373.728030 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 388205.365402 -snap {("G1" 11)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectGroup -win $_nWave2 {G1}
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {23 24 1 1 1 1} -backward
debExit
