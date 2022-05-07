# Use this Makefile with make

# Executable name
CMD = bcat.exe

# -------- Define environmental variable C_COMPILER -----------
 CC = icpc -std=c++11 -fopenmp -I$(OBROOT)/include/openbabel-2.0/ \
                   -I/home/paulzim/bcat/eigen2/ -DUSE_XTB=1
DFLAGS = # the cpp flags to be used
OFLAGS =  # optimization
F95ROOT = $(MKLROOT)

#Intel Linkers
#LINKERFLAGS =  -L$(MKLROOT)/lib/em64t $(F95ROOT)/lib/intel64/libmkl_lapack95_lp64.a -lmkl_intel_lp64 -lmkl_sequential -lmkl_core -lpthread -lm
LINKERFLAGS =  -L$(MKLROOT)/lib/intel64 -lmkl_intel_lp64 -lmkl_intel_thread -lmkl_core -lpthread -lm -L$(OBROOT)/lib/ -lopenbabel

#MacOS link 
#LINKERFLAGS = -lm -framework Accelerate 



#
# Implicit rules for handling src files
#  ( uses static pattern rules, see info for make )
.c.o:
	$(CC) -c -g $(DFLAGS) -Wimplicit $<
.cpp.o:
	$(CC) -c -g $(DFLAGS) $<

OBJECTS = main.o utils.o stringtools.o mopac.o icoord.o mem.o optic.o bmat.o print.o mm_grad.o pTable.o align.o xtb.o

$(CMD) : $(OBJECTS)
	$(CC) $(DEBUG_FLAGS) $(OFLAGS) $(LINKERFLAGS) $(OBJECTS)  -o ./$(CMD)

clean:
	/bin/rm -f *.o *.i *.mod *.exe a.out make.log

cleano:
	rm -f *.o *.i

depend :
	g++ -MM *.cpp *.c >> Makefile 

# DO NOT DELETE created with g++ -MM *.cpp *.c
main.o: main.cpp main.h stringtools.h utils.h mopac.h align.h
utils.o: utils.cpp utils.h 
stringtools.o: stringtools.cpp stringtools.h
molpro.o: molpro.cpp molpro.h
mopac.o: mopac.cpp mopac.h icoord.h
xtb.o: xtb.cpp xtb.h
icoord.o: icoord.h icoord.cpp bmat.cpp mem.cpp optic.cpp
mem.o: mem.cpp icoord.h
optic.o: optic.cpp icoord.h
bmat.o: bmat.cpp icoord.h
print.o: print.cpp icoord.h
mm_grad.o: mm_grad.cpp icoord.h
pTable.o: pTable.cpp pTable.h
align.o: align.cpp align.h
