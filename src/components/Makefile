include Makefile.src

# Order matters here.  Interface files rely on library files, and
# component implementations rely on both the interfaces and the libs
MAKEFLAGS=-I$(shell pwd)

ENABLE_STK:=${shell grep ENABLE_STACK_MANAGER include/cos_stkmgr_configure.h | awk '{print $$3 }' }

#$(info ENABLE_STK = "${ENABLE_STK}")
ifeq ($(ENABLE_STK), 1)
    export ENABLE_STACK_MANAGER:=1
endif

ifdef ENABLE_STACK_MANAGER 
    $(E "####### Stack Manager is Enabled #######")
else
    $(E "####### Stack Manager is Disabled #######")
endif

all:
	$(Q) $(MAKE) $(MAKEFLAGS) -C lib
	$(Q) $(MAKE) $(MAKEFLAGS) -C interface
	$(Q) $(MAKE) $(MAKEFLAGS) -C implementation

cp:
	$(Q) $(MAKE) $(MAKEFLAGS) -C implementation cp

clean:
	$(Q) $(MAKE) $(MAKEFLAGS) -C lib clean
	$(Q) $(MAKE) $(MAKEFLAGS) -C interface clean
	$(Q) $(MAKE) $(MAKEFLAGS) -C implementation clean

distclean:
	$(Q) $(MAKE) $(MAKEFLAGS) -C lib distclean

init:
	$(Q) $(MAKE) $(MAKEFLAGS) -C lib init
	$(Q) $(MAKE) $(MAKEFLAGS) -C interface init
	$(Q) $(MAKE) $(MAKEFLAGS) -C implementation init

