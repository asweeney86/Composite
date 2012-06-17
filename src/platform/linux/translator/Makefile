include Makefile.src

EXTRA_CFLAGS := $(CFLAGS)
CFLAGS :=

obj-m := trans.o
trans-objs := translator.o

default: module
	$(Q) $(MAKE) -C helpers 

module:
	$(Q) $(MAKE) -C $(LDIR) SUBDIRS=$(shell pwd) modules

cp:
	$(Q) cp trans.ko $(TRANS_DIR)
	$(Q) $(MAKE) -C helpers cp

clean:
	$(Q) rm -rf *.ko *.mod.c *.o *.mod.o .*.cmd .tmp_versions test Module.symvers
	$(Q) $(MAKE) -C helpers clean 
