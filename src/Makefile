include Makefile.src
MAKEFLAGS=--no-print-directory -I$(PWD)
#$(info Make flags $(MAKEFLAGS))

all: kern
comps: 
	$(call print_header, Building Components)
	$(Q) $(MAKE) $(MAKEFLAGS) -C components

kern: comps
	$(call print_header, Building Platform and Kernel)
	$(Q) $(MAKE) $(MAKEFLAGS) -C platform

cp:
	$(Q) $(MAKE) $(MAKEFLAGS) -C platform cp
	$(Q) $(MAKE) $(MAKEFLAGS) -C components cp

clean:
	$(Q) $(MAKE) $(MAKEFLAGS) -C platform clean
	$(Q) $(MAKE) $(MAKEFLAGS) -C components clean


distclean: clean
	$(Q) $(MAKE) $(MAKEFLAGS) -C components distclean	

init:
	$(Q) $(MAKE) $(MAKEFLAGS) -C components init
	$(Q) $(MAKE) $(MAKEFLAGS) -C platform init

#config:
#	@echo "Configuring the system with clock speed and directory structure."
#	@echo "Please view Makefile.cosconfig and kernel/include/shared/cpu_ghz.h to make sure they're accurate."
#	@echo "Do _not_ 'git add' either of these files."
#	@cat /proc/cpuinfo | grep "model name" | sed 's/.*\([0-9]\.[0-9]*\).*/\#define CPU_GHZ \1/' > ./kernel/include/shared/cpu_ghz.h
#	@pwd | sed 's/\(\/[a-zA-Z0-9]*\/[a-zA-Z0-9]*\/\).*/HOME_DIR=\1/' > Makefile.cosconfig
#	@echo "CODE_DIR=\$$(HOME_DIR)/research/" >> Makefile.cosconfig
#	@echo "TRANS_DIR=\$$(HOME_DIR)/transfer/" >> Makefile.cosconfig
#	@echo "LDIR=\$$(CODE_DIR)/linux-2.6.33/" >> Makefile.cosconfig
#	@echo "TEST_DIR=/root/experiments/" >> Makefile.cosconfig
#
ltests:
	$(Q) $(MAKE) $(MAKEFLAGS) -C platform ltests
