include Makefile.src

default:
	$(Q) $(MAKE) -C module
	$(Q) $(MAKE) -C net
	$(Q) $(MAKE) -C translator
	$(Q) $(MAKE) -C link_load

cp:
	$(Q) $(MAKE) -C module cp
	$(Q) $(MAKE) -C net cp
	$(Q) $(MAKE) -C translator cp
	$(Q) $(MAKE) -C link_load cp
# we want to avoid having to include anything in the transfer
# makefile, so intelligently make the makefile dynamically with the
# includes patched in!
	$(Q) cat $(TOP_DIR)/Makefile.src ./util/Makefile.end > $(TRANS_DIR)/Makefile
	$(Q) $(CP) $(TOP_DIR)/Makefile.cosconfig $(TRANS_DIR)/
	$(Q) $(CP) ./util/*.sh $(TRANS_DIR)

clean:
	$(Q) $(MAKE) -C module clean
	$(Q) $(MAKE) -C net clean
	$(Q) $(MAKE) -C translator clean
	$(Q) $(MAKE) -C link_load clean

fresh: clean default
