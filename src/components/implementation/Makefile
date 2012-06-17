include Makefile.src Makefile.comp
SUBDIRS=$(wildcard */)
MAKEFLAGS=-I$(shell pwd)

.PHONY: all
all: 
	$(call print_header, Building Implementations)
	$(Q)for dir in $(SUBDIRS) ; do \
		$(MAKE) $(MAKEFLAGS) -C $$dir ; \
	done

.PHONY: cp
cp:
	$(E) $(CP_STR) Copying all components to $(TRANS_DIR)
	$(Q)for dir in $(SUBDIRS) ; do \
		$(MAKE) $(MAKEFLAGS) -C $$dir cp ; \
	done

.PHONY: clean
clean:
	$(E) $(RM_STR) Cleaning up implementation directories
	$(Q)for dir in $(SUBDIRS) ; do \
		$(MAKE) $(MAKEFLAGS) -C $$dir clean ; \
	done

.PHONY: init
init: clean all
