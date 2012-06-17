include Makefile.src

default:
	$(Q) $(MAKE) -C linux

cp:
	$(Q) $(MAKE) -C linux cp

clean:
	$(Q) $(MAKE) -C linux clean
	$(Q) $(MAKE) -C tests clean

init: clean default

ltests:
	$(call print_header, Building Platform Tests)
	$(Q) $(MAKE) -C tests 
