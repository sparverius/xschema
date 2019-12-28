######
#
# For building xschema
#
######

CC=gcc
SED=sed
CP=cp
RMF=rm -f
MVF=mv -f

######

PATSCC=$(PATSHOME)/bin/patscc
PATSOPT=$(PATSHOME)/bin/patsopt

######
#
CFLAGS=
# CFLAGS=-O2
#
# CFLAGS=-g
# CFLAGS=-g -O
# CFLAGS=-g -O2
#
GCFLAG=
GCFLAG=-DATS_MEMALLOC_LIBC
GCFLAG=-DATS_MEMALLOC_GCBDW
#
LIBGC=
LIBGC=-lgc
#
######

SRCSATS := \
schema.sats \
basics.sats \
stamp0.sats \
symbol.sats \
label0.sats \
locinfo.sats \
lexing.sats \
filpath.sats \
dynexp0.sats \
staexp0.sats \
dynexp1.sats \
staexp1.sats \
statyp2.sats \
staexp2.sats \
dynexp2.sats \
dynexp3.sats \
fixity.sats \
schema0.sats \

SRCDATS := \
schema.dats \
basics.dats \
stamp0.dats \
symbol.dats \
label0.dats \
locinfo.dats \
lexing_token.dats \
filpath.dats \
staexp0.dats \
dynexp0.dats \
staexp1.dats \
dynexp1.dats \
statyp2.dats \
staexp2.dats \
dynexp2.dats \
dynexp3.dats \
schema0.dats \

######

OBJSATS := \
$(patsubst %.sats, BUILD/%_sats.o, $(SRCSATS))
OBJDATS := \
$(patsubst %.dats, BUILD/%_dats.o, $(SRCDATS))

######

XATSHOMEQ=./../xanadu
XATSQ=./../xanadu/srcgen/xats
XNAME=./../xnameof
XARGS=./../xargsof

INCLUDE:=
INCLUDE+=-I"."
INCLUDE+=-I"./BUILD/xats"
LIBRARY:=-L$(XATSHOMEQ)/lib -lxatsopt
LIBRARY+=-L$(XNAME)/lib -lxnameof
LIBRARY+=-L$(XARGS)/lib -lxargsof

######
#
all: \
xschema
xschema: \
DATS/xschema.dats \
$(OBJSATS) $(OBJDATS) ; \
$(PATSCC) -cleanaft -o ./bin/xschema \
$(INCLUDE) $(CFLAGS) $(GCFLAG) $^ $(LIBGC) $(LIBRARY)
#
######

libxschema: \
$(OBJSATS) $(OBJDATS) \
BUILD/libxschema_dats.o ; \
($(AR) -r $@.a $^ && $(MVF) $@.a ./lib)
BUILD/libxschema_dats.o: \
DATS/xschema.dats; $(PATSCC) -DATS _LIBXSCHEMA_ $(INCLUDE) -o $@ -c $<

######

BUILD/%_sats.c: \
./SATS/%.sats ; $(PATSOPT) -o $@ --static $<
BUILD/%_dats.c: \
./DATS/%.dats ; $(PATSOPT) -o $@ --dynamic $<

######

BUILD/%_sats.o: \
BUILD/%_sats.c; \
$(PATSCC) $(INCLUDE) $(CFLAGS) -o $@ -c $<
BUILD/%_dats.o: \
BUILD/%_dats.c; \
$(PATSCC) $(INCLUDE) $(CFLAGS) $(GCFLAG) -o $@ -c $<

######
#
# HX-2018-10-07:
# '--output-a .depend' means
# appending instead of overwriting
#
SATS_SRCSATS := \
$(patsubst %.sats, SATS/%.sats, $(SRCSATS))
DATS_SRCDATS := \
$(patsubst %.dats, DATS/%.dats, $(SRCDATS))
#
depend:: ; $(RMF) .depend
#
depend:: ; \
$(PATSOPT) --output-a .depend --depgen -s $(SATS_SRCSATS)
depend:: ; \
$(PATSOPT) --output-a .depend --depgen -d $(DATS_SRCDATS)
depend:: ; \
$(PATSOPT) --output-a .depend --depgen -d DATS/xschema.dats
#
depend:: ; \
$(SED) -i -e 's/^SATS/BUILD/' -e 's/^DATS/BUILD/' .depend
#
-include .depend
#
######

clean:: ; $(RMF) BUILD/*_?ats.c
clean:: ; $(RMF) BUILD/*_?ats.o
clean:: ; $(RMF) xschema_dats.o
clean:: ; $(RMF) xschema_dats.c

cleanall:: clean
cleanall:: ; $(RMF) ./bin/xschema
cleanall:: ; $(RMF) ./lib/libxschema.a
# cleanall:: ; (cd $(XATSQ) && make cleanall)
# cleanall:: ; $(RMF) $(XATSQ)/../../lib/libxatsopt.a

######

###### end of [Makefile] ######
