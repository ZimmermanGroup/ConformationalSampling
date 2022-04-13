#ifndef XTB_H
#define XTB_H

#include <sys/stat.h>
#include "stringtools.h"
#include "pTable.h"
//#include "icoord.h"

class XTB {
  
  private:
  
   int natoms;
   int* anumbers;
   string* anames;
   int charge;
   int nfrz; //total frozen atoms
   int nfrz0; //total "moved" frozen atoms
   int* frzlist;
   int* frzlistb;

   int nskip;
   int* skip;
   vector<int> constraints;

  public:

   double opt();
   double opt(string filename);
   double opt_check(string filename);
   void opt_write();
   void opt_write(string filename);

   double read_output(string filename);
   void read_output2(string filename);
   void xyz_read(string filename);
   void xyz_read_aux(string filename);
   void xyz_save(string filename);


   void set_charge(int c0);

   void alloc(int natoms);
   void init(int natoms, int* anumbers, string* anames, double* xyz);
   void reset(int natoms, int* anumbers, string* anames, double* xyz);
   void freemem();

   void freeze(int* frzlist, int nfrz, int nfrz0);
   void freeze_d(int* frzlist);
   void constrain(vector<int> constraints_new);

   double energy0;
   double energy;

   double* xyz0;
   double* xyz;

};

#endif
