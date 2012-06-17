include Makefile.src Makefile.comp

LIB_OBJS=cos_component.o heap.o cobj_format.o
LIBS=$(LIB_OBJS:%.o=%.a)
MANDITORY=c_stub.o cos_asm_upcall.o
MAND=$(MANDITORY_LIB)
SIMPLE_STACKS=c_stub.o cos_asm_upcall_simple_stacks.o
SIMPLE_STKLIB=simple_stklib.o

.PHONY: all
all: $(LIBS) $(MAND) $(SIMPLE_STKLIB)

# we have to compile these without dietlibc so that there are not
# symbol conflicts and this is why we have the %.a here and don't
# output a .a file.
%.a:%.c
	$(E) $(CC_STR) Creating library file $@ from $^
	$(Q) $(CC) $(CFLAGS) $(CINC) -o $(@:%.a=%.o) -c $<
	$(E) $(AR_STR) lib$@ $(@:%.a=%.o)
	$(Q) $(AR) cr lib$@ $(@:%.a=%.o)

$(MAND): $(MANDITORY)
	$(call print_header, Building Manditory Libs)
	$(E) $(LD_STR) $@
	$(Q) $(LD) -r -o $@ $^

$(SIMPLE_STKLIB): $(SIMPLE_STACKS)
	$(E) $(LD_STR) $@
	$(Q) $(LD) -r -o $@ $^

%.o:%.S
	$(E) $(AS_STR) $@
	$(Q) $(AS) $(ASFLAGS) $(CINC) -c -o $@ $^

clean:
	$(E) $(RM_STR) Cleaning up directory
	$(Q) $(RM) -f a.out *.o *.a *.d *~

distclean:
	$(Q) $(MAKE) -C dietlibc clean
	$(Q) $(MAKE) -C lwip/cos clean	

# For some reason I have to first compile dietlibc for x86_64
init: all
	$(call print_header, Building dietlibc)
	$(Q) $(MAKE) -C dietlibc 
	$(Q) $(MAKE) -C dietlibc i386
	$(call print_header, Building lwip)
	$(Q) $(MAKE) -C lwip/cos

