include Makefile.src Makefile.comp
INTERFACES=$(wildcard */)

.PHONY: all
all:
	$(call print_header, Building Interfaces)
	$(Q)for dir in $(INTERFACES) ; do \
		$(MAKE) -C $$dir ; \
	done

.PHONY: clean
clean:
	$(E) $(RM_STR) Cleaning up interface directories
	$(Q)for dir in $(INTERFACES) ; do \
		$(MAKE) -C $$dir clean ; \
	done

.PHONY: cp
cp:

.PHONY: init
init: clean all
