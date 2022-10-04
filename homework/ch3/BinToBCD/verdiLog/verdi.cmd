debImport "-f" "./sim/filelist_sim.f"
debLoadSimResult \
           /home/gift/workplace/CourseDigitalIC/homework/ch3/BinToBCD/build/simtop.fsdb
wvCreateWindow
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/BinToBCD_m1"
wvGetSignalSetScope -win $_nWave2 "/tb_BinToBCD"
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_BinToBCD/bcd_out\[9:0\]} \
{/tb_BinToBCD/bin_in\[7:0\]} \
{/tb_BinToBCD/clk} \
{/tb_BinToBCD/flag} \
{/tb_BinToBCD/rst} \
{/tb_BinToBCD/sampling} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_BinToBCD/clk} \
{/tb_BinToBCD/rst} \
{/tb_BinToBCD/sampling} \
{/tb_BinToBCD/bin_in\[7:0\]} \
{/tb_BinToBCD/flag} \
{/tb_BinToBCD/bcd_out\[9:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 243890.964917 -snap {("G2" 0)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetCursor -win $_nWave2 246629.425326 -snap {("G2" 0)}
