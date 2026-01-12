DEPENDS:=$(patsubst %.o,%.d,$(OBJECTS))

CC:=clang
# The bit about -D_STDC_PREDEF_H is a heavy-handed way to interdict
# Clang making statements about the standard library's capabilities
# (by including stdc-predef.h). I was unable to identify a more
# elegant way to achieve this.
COPTS:=-g -O2 -fno-builtin -D_STDC_PREDEF_H
CSTD:=-std=c99
CDEPS:=-MMD -MP
CWARN:=-Weverything
CFLAGS:=$(COPTS) $(CSTD) $(CDEPS) $(CWARN)

MKDIR:=mkdir
RMDIR:=rm -rf

AR:=ar
ARFLAGS:=rc
ARTARGET:=pdclib.a

-include $(DEPENDS)
