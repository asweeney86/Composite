include Makefile.src

#CFLAGS=-Wall -Wextra -Wno-unused-parameter -Wno-unused-function -ggdb3 -I$(KINC) 
CFLAGS += -I$(KINC)
PRODUCTS=cos_loader gen_client_stub
LDFLAGS += -m elf_i386
default: $(PRODUCTS)

%.o: %.c
	$(E) $(CC_STR) $@
	$(Q) $(CC) $(CFLAGS) -I$(CDIR)/include/ -c -o $@ $^ -I$(SHAREDINC)

#$(Q) $(CC) $(CFLAGS) -o $@ $< 
gen_client_stub: gen_client_stub.o
	$(E) $(CC_STR) $@
	$(Q) $(LD) -o $@ $< 

#$(Q) $(CC) $(CFLAGS) -o $@ $^ -L/usr/lib32/ -lbfd -liberty -L$(CDIR)/lib/ -lcobj_format
cos_loader: cos_loader.o
	$(E) $(CC_STR) $@
	$(Q) $(LD) -o $@ $^ -L/usr/lib32/ -lbfd -liberty -L$(CDIR)/lib/ -lcobj_format

cp:
	$(Q) cp cos_loader gen_client_stub $(TRANS_DIR)

clean:
	$(Q) rm -f *~ *.o *.a $(PRODUCTS)

fresh: clean default
