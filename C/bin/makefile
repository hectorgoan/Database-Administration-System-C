# makefile for Solaris Oracle Embedded SQL
# Usage: "make E=prog"  for source file prog.pc.  Builds executable prog.ox.
# Loads $(E).o with prompt.o
# Depends on ORACLE_HOME envir var being defined, usually via oracle module
# Oracle91: need 64-bit architecture: use -m64 flag for gcc
# default target--needs to be before included .mk file (it has targets!)
ebuild: $(E).ox

# for PROLDLIBS, PROCFLAGS, LIBHOME defs--
include $(ORACLE_HOME)/precomp/lib/env_precomp.mk

PROC=$(ORACLE_HOME)/bin/proc
CC=gcc
CFLAGS= -g -DSLXMX_ENABLE -DSLTS_ENABLE -D_REENTRANT -I$(ORACLE_HOME)/precomp/public -m64

.SUFFIXES: .pc .c .o

.pc.c:
	$(PROC) $(PROCFLAGS) MODE=ANSI iname=$*.pc

.pc.o:
	$(PROC) $(PROCFLAGS) MODE=ANSI iname=$*.pc
	$(CC) $(CFLAGS) -c $*.c

.c.o:
	$(CC) $(CFLAGS) -c $*.c


$(E).ox: $(E).o prompt.o db_error.o
	$(CC) -o $(E).ox $(E).o prompt.o db_error.o -m64 -L$(LIBHOME) $(PROLDLIBS)

# Rule to compile any program (specify EXE= and OBJS= on command line)
build: $(OBJS)
	$(CC) -o $(EXE) $(OBJS) -m64 -L$(LIBHOME) $(PROLDLIBS)

# although .c files are generated from .pc files, it seems too dangerous
# to rm *.c here in case someone wrote an unrelated .c file in the same dir
clean:
	rm -f *.ox *.o core *~
