#!/bin/sh

./cos_loader \
"c0.o, ;*fprr.o, ;mm.o, ;boot.o, ;print.o, ;\
\
!l.o,a1;!va.o,a2;!mpool.o,a3;!te.o,a3;!sm.o,a4;!e.o,a4;!buf.o,a5;!tp.o,a6;!ucbuf1.o,a10;!ucbuf2.o, ;!stat.o,a25:\
\
c0.o-fprr.o;\
fprr.o-print.o|[parent_]mm.o;\
l.o-fprr.o|mm.o|print.o;\
te.o-sm.o|print.o|fprr.o|mm.o|va.o;\
mm.o-print.o;\
e.o-sm.o|fprr.o|print.o|mm.o|l.o|va.o;\
stat.o-sm.o|te.o|fprr.o|l.o|print.o|e.o;\
boot.o-print.o|fprr.o|mm.o;\
sm.o-print.o|fprr.o|mm.o|boot.o|va.o|l.o|mpool.o;\
buf.o-boot.o|sm.o|fprr.o|print.o|l.o|mm.o|va.o|mpool.o;\
mpool.o-print.o|fprr.o|mm.o|boot.o|va.o|l.o;\
tp.o-sm.o|buf.o|print.o|te.o|fprr.o|mm.o|va.o|mpool.o;\
va.o-fprr.o|print.o|mm.o|l.o|boot.o;\
ucbuf1.o-fprr.o|sm.o|ucbuf2.o|print.o|mm.o|va.o|buf.o|l.o;\
ucbuf2.o-sm.o|print.o|mm.o|va.o|buf.o|l.o\
" ./gen_client_stub

#mpd.o-sm.o|cg.o|fprr.o|print.o|te.o|mm.o|va.o;\
#!mpd.o,a5;
#[print_]trans.o
