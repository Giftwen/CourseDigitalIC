debImport "-f" "./sim/filelist_sim.f"
debLoadSimResult \
           /home/gift/workplace/CourseDigitalIC/homework/ch4-5/StopWatch/build/simtop.fsdb
wvCreateWindow
wvSetCursor -win $_nWave2 273486006.016287
wvRestoreSignal -win $_nWave2 \
           "/home/gift/workplace/CourseDigitalIC/homework/ch4-5/StopWatch/sim/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
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
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetCursor -win $_nWave2 798824067.752443 -snap {("G1" 4)}
srcActiveTrace "tb_cla.start_stop" -win $_nTrace1 -TraceByDConWave -TraceTime \
           4000 -TraceValue 1
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 779203827.491857 -snap {("G1" 5)}
srcActiveTrace "tb_cla.hr_h\[3:0\]" -win $_nTrace1 -TraceByDConWave -TraceTime \
           720007000 -TraceValue 0100
wvZoomAll -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetCursor -win $_nWave2 8812857545.775352 -snap {("G1" 3)}
