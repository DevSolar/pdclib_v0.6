DEPENDS:=$(patsubst %.o,%.deps,$(OBJECTS))

CC:=vc
# The bit about -D_STDC_PREDEF_H is a heavy-handed way to interdict
# Clang making statements about the standard library's capabilities
# (by including stdc-predef.h). I was unable to identify a more
# elegant way to achieve this.
COPTS:=+aos68k -g -O2
CSTD:=-std=c99
CDEPS:=-deps -deps-for-libs
CWARN:=-warn=-1
CFLAGS:=$(COPTS) $(CSTD) $(CDEPS) $(CWARN)

MKDIR:=Makedir
RMDIR:=Delete ALL QUIET

AR:=Lha
ARFLAGS:=-q a $@ $(^D) $^
ARTARGET:=pdclib.lha

-include $(DEPENDS)
