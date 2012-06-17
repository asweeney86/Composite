include Makefile.src

#CFLAGS=-Wall 
#-O3 yeah, that gets rid of the busy loop in udp_client
SRC=cnet_user.c udp_client.c udp_server.c tcp_server.c tcp_client.c
PRODS=$(SRC:.c=)
OBJ=$(SRC:.c=.o)

all: $(PRODS)

#FIXME Why don't I use LD?
cnet_user: cnet_user.o
	$(E) $(LD_STR) $@
	$(Q) $(CC) -o $@ $<

udp_client: udp_client.o
	$(E) $(LD_STR) $@
	$(Q) $(CC) -o $@ $<

udp_server: udp_server.o
	$(E) $(LD_STR) $@
	$(Q) $(CC) -o $@ $<

tcp_server: tcp_server.o
	$(E) $(LD_STR) $@
	$(Q) $(CC) -o $@ $<

tcp_client: tcp_client.o
	$(E) $(LD_STR) $@
	$(Q) $(CC) -o $@ $<

%.o:%.c
	$(E) $(CC_STR) $@
	$(Q) $(CC) $(CFLAGS) -o $@ -c $<

cp:
	$(Q) cp $(OBJ:.o=) $(TRANS_DIR)

clean:
	$(Q) rm -rf $(OBJ:.o=) *.o
