include Makefile.src
HELPERS=$(wildcard */)

all:
	$(Q)for dir in $(HELPERS) ; do \
		$(MAKE) -C $$dir ; \
	done

cp:
	$(Q)for dir in $(HELPERS) ; do \
		$(MAKE) -C $$dir cp; \
	done

clean:
	$(Q)for dir in $(HELPERS) ; do \
		$(MAKE) -C $$dir clean ; \
	done
