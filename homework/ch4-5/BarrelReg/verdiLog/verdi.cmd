debImport "-f" "./sim/filelist_sim.f"
debLoadSimResult \
           /home/gift/workplace/CourseDigitalIC/homework/ch4-5/BarrelReg/build/simtop.fsdb
wvCreateWindow
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb_cla"
debExit
