include Makefile.src

CFLAGS_EXTRA := $(CFLAGS)
CFLAGS :=

obj-m := cnet.o
cnet-objs := cosnet.o

default: module
	$(Q) $(MAKE) -C util

module:
	$(Q) $(MAKE) -C $(LDIR) SUBDIRS=$(shell pwd) modules

cp:
	$(Q) cp cnet.ko $(TRANS_DIR)
	$(Q) $(MAKE) -C util cp

clean:
	$(Q) rm -rf *.ko *.mod.c *.o *.mod.o .*.cmd .tmp_versions test Module.symvers
	$(Q) $(MAKE) -C util clean
