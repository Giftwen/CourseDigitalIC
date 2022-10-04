debImport "-f" "./sim/filelist_sim.f"
debLoadSimResult \
           /home/gift/workplace/CourseDigitalIC/homework/ch3/VectorDetector/build/simtop.fsdb
wvCreateWindow
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/VectorDetector_m1"
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debExit
