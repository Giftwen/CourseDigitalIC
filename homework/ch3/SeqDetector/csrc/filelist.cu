PIC_LD=ld

ARCHIVE_OBJS=
ARCHIVE_OBJS += _213184_archive_1.so
_213184_archive_1.so : archive.0/_213184_archive_1.a
	@$(AR) -s $<
	@$(PIC_LD) -shared  -Bsymbolic  -o .//../build/simtop.daidir//_213184_archive_1.so --whole-archive $< --no-whole-archive
	@rm -f $@
	@ln -sf .//../build/simtop.daidir//_213184_archive_1.so $@





O0_OBJS =

$(O0_OBJS) : %.o: %.c
	$(CC_CG) $(CFLAGS_O0) -c -o $@ $<
 

%.o: %.c
	$(CC_CG) $(CFLAGS_CG) -c -o $@ $<
CU_UDP_OBJS = \


CU_LVL_OBJS = \
SIM_l.o 

MAIN_OBJS = \
objs/amcQw_d.o 

CU_OBJS = $(MAIN_OBJS) $(ARCHIVE_OBJS) $(CU_UDP_OBJS) $(CU_LVL_OBJS)

