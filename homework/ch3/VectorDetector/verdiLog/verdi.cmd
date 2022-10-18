debImport "-f" "./sim/filelist_sim.f"
debLoadSimResult \
           /home/gift/workplace/CourseDigitalIC/homework/ch3/VectorDetector/build/simtop.fsdb
wvCreateWindow
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/VectorDetector_m1"
wvGetSignalSetScope -win $_nWave2 "/VectorDetector_m3"
wvGetSignalSetScope -win $_nWave2 "/tb_VectorDetector"
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_VectorDetector/clk} \
{/tb_VectorDetector/din\[31:0\]} \
{/tb_VectorDetector/out\[5:0\]} \
{/tb_VectorDetector/rst} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 )} 
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_VectorDetector/clk} \
{/tb_VectorDetector/din\[31:0\]} \
{/tb_VectorDetector/out\[5:0\]} \
{/tb_VectorDetector/rst} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 )} 
wvSetPosition -win $_nWave2 {("G1" 4)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetRadix -win $_nWave2 -format UDec
verdiWindowResize -win $_Verdi_1 "248" "280" "899" "700"
debExit
