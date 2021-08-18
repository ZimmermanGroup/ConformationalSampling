#Conformational sampling code for ligand-ion complexes#

Includes support for XTB and MOPAC for structure optimization
GSM must be available.


This code uses OpenBabel to generate conformers of one ligand structure (test.xyz), 
then generates GSM input to attach the ligand to a binding site (target.xyz).
A working installation of OpenBabel should be linked in Makefile and setup_vars.


Two procedures are available:
  procedure_2: generate conformers of the ligand
  procedure_1: same as procedure_2, then attempts to ligate to target.xyz

main.cpp specifies which procedure is active (bottom of file). procedure_2 is default.

See test_buildComplex for an example of procedure_1
See test_conformersOnly for an example of procedure_2


To run bcat.exe:
./bcat.exe [nconfs] [xyzfile] > output

both [arguments] are optional. 
nconfs specifies how many conformers OpenBabel will attempt to locate. default is 25000
xyzfile default name is ligand.xyz.


Input files for test_buildComplex:
CHARGE1 (ligand), CHARGE2 (target)
ADD (see NOTES in test_buildComplex directory)
inpfileq (GSM, should be SM_TYPE OPT)
ograd (interface to XTB for GSM)
tm2orca.py 

