debImport "-f" "./sim/filelist_sim.f"
debLoadSimResult \
           /home/gift/workplace/CourseDigitalIC/homework/ch71617/Sort/build/simtop.fsdb
wvCreateWindow
wvSetCursor -win $_nWave2 800.416382
wvRestoreSignal -win $_nWave2 \
           "/home/gift/workplace/CourseDigitalIC/homework/ch71617/Sort/sim/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvSetCursor -win $_nWave2 15012.096170 -snap {("G2" 3)}
srcDeselectAll -win $_nTrace1
debExit
