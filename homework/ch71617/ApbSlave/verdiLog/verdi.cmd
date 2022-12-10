debImport "-f" "./sim/filelist_sim.f"
debLoadSimResult \
           /home/gift/workplace/CourseDigitalIC/homework/ch71617/ApbSlave/build/simtop.fsdb
wvCreateWindow
wvSetCursor -win $_nWave2 66098.228051
wvRestoreSignal -win $_nWave2 \
           "/home/gift/workplace/CourseDigitalIC/homework/ch71617/ApbSlave/sim/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
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
wvScrollDown -win $_nWave2 7
