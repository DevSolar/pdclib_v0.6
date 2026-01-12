DEPENDS:=$(patsubst %.o,%.d,$(OBJECTS))

CC:=gcc
# The bit about -D_STDC_PREDEF_H is a heavy-handed way to interdict
# GCC making statements about the standard library's capabilities
# (by including stdc-predef.h). I was unable to identify a more
# elegant way to achieve this.
COPTS:=-g -O2 -fno-builtin -D_STDC_PREDEF_H
CSTD:=-std=c99
CDEPS:=-MMD -MP
CWARN:=-Wall -Wextra -pedantic -Wno-unused-parameter -Wshadow -Wpointer-arith -Wcast-align -Wwrite-strings -Wmissing-declarations -Wredundant-decls -Winline -Wno-long-long -Wuninitialized -Wno-overflow -Wmissing-prototypes -Wnested-externs -Wstrict-prototypes -Wdeclaration-after-statement -Werror
CFLAGS:=$(COPTS) $(CSTD) $(CDEPS) $(CWARN)

MKDIR:=mkdir
RMDIR:=rm -rf

AR:=ar
ARFLAGS:=rc
ARTARGET:=pdclib.a

-include $(DEPENDS)
