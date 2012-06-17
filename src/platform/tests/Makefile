include Makefile.src
TESTS=$(wildcard */)

all:
	$(Q)for dir in $(TESTS) ; do \
		$(MAKE) -C $$dir ; \
	done

clean:
	$(Q)for dir in $(TESTS) ; do \
		$(MAKE) -C $$dir clean ; \
	done
