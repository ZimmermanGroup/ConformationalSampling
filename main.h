#include <iostream>
#include <fstream>
#include <stdio.h> 
#include <sys/stat.h>
    
#include "utils.h"
#include "mopac.h"
#include "xtb.h"
#include "stringtools.h"
#include "align.h"   
     
#include <openbabel/mol.h>
#include <openbabel/obconversion.h>
#include <openbabel/math/align.h>
#include <openbabel/conformersearch.h>
#include <openbabel/data.h>
      
using namespace std;
using namespace OpenBabel;
      
void xyz_read(int natoms, string* anames, double* coords, string xyzfile);
void xyz_read_last(int natoms1, double* coords, string xyzfile);
int get_natoms(string filename);
int get_charge(string filename);
void get_all_xyz(int natoms, string* anames, vector<double*> &xyzs, string xyzfile);
int get_unique_conf(int nstruct, int* unique);
void opt_semi(OBMol &mol, vector<int> constraints = vector<int>(), int type = 1);
void opt_semi(int charge, int natoms, string* anames, int* anumbers, vector<double*> xyzall, double* E, vector<int> constraints, int type);
void align_and_opt(int natoms1, int natoms2, string* anames, string* anamesm, string* anamest, int* anumbers, int* anumbersm, int charget, int nstruct, bool* unique, vector<double*> xyzall, double* xyzm);
void align_and_opt_with_constraint(OBMol &mol, OBMol &target);
void write_all_xyz(OBMol &mol, string xyzfile_string);
void write_all_xyz(int natoms, string* anames, double* E, vector<double*> xyzs, string xyzfile_string);
void write_all_xyz(int natoms, string* anames, int nstruct, double* E, double** xyzs, string xyzfile_string);
void write_gsm(int natoms, string* anames, int charge, int nstruct, double* E, double** xyzs, int nadd, int* adds);
void do_gsm(int nstruct);

void procedure_1(string xyzfile, string targetfile);
void procedure_2(int nconf, string xyzfile, string targetfile);

void check_bonding(int nstruct, ICoord ic1, int natoms1, string* anames, int* anumbers, vector<double*> xyzalla, bool* unique);


