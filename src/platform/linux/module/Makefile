include Makefile.src

CFLAGS_EXTRA := $(CFLAGS)
CFLAGS := 

obj-m := cos.o
cos-objs := kern_entry.o ipc.o hw_ints.o hijack.o ../../../kernel/inv.o ../../../kernel/thread.o ../../../kernel/spd.o ../../../kernel/measurement.o ../../../kernel/page_pool.o ../../../kernel/mmap.o ../../../kernel/ring_buff.o

default: module

module: 
	$(E) $(BLD_STR) $(LDIR)
	$(Q) $(MAKE) -C $(LDIR) SUBDIRS=$(shell pwd) modules

cp:
	$(E) $(CP_STR) cos.ko $(TRANS_DIR)
	$(Q) cp cos.ko $(TRANS_DIR)

#loc:
#	@ wc -l *.c *.S *.h include/*.h $(LINKER_DIR)/*.c $(LINKER_DIR)/t/*.S $(LINKER_DIR)/t/*.c $(LINKER_DIR)/t/*.h $(NET_DIR)/*.c $(NET_DIR)/util/*.c | tail -n 1 | awk '{print $1}'

clean:
	$(E) $(RM_STR) Cleaning $(KDIR)
	$(Q) rm -rf *.ko *.mod.c *.o *.mod.o .*.cmd .tmp_versions test Module.symvers
	$(Q) rm -rf $(KDIR)/*.o $(KDIR)/.*.o.cmd

fresh: clean default
