#include "xtb.h"
using namespace std;
#include "constants.h"

//GRADNORM was 1.5
#define GRADNORM 5.

// standard opt after checking for existing file
double XTB::opt_check(string filename)
{
#if SKIPXTB
  return 0.;
#endif

  printf("  opt_check for %s \n",filename.c_str());
  string outfile = filename+".out";

  struct stat sts;
  if (stat(outfile.c_str(), &sts) != -1)
  {
    energy = read_output(outfile);

    string filenamexyz = filename + ".xyz";
    xyz_read(filenamexyz);
    return energy;
  }
   
  return opt(filename);
}

double XTB::opt()
{
  string filename = "scratch/testxtb";
  energy = opt(filename);
 
  return energy;
}

void XTB::opt_write()
{
  string filename = "scratch/testxtb.xyz";
  opt_write(filename);
 
  return;
}

// standard opt
double XTB::opt(string filename) 
{
  //printf(" in XTB/opt() \n");
 #if SKIPXTB
  printf(" skipping xtb opt! \n");
 #endif

  string outfile = filename + ".out";
  string filenamexyz = filename + ".xyz";

  printf("  opt for %s and %s \n",outfile.c_str(),filenamexyz.c_str());

  opt_write(filenamexyz);
  string charge_str = StringTools::int2str(charge,1,"0");;

 #if !SKIPXTB
  string cmd;
  if (nfrz>0)
    cmd = "xtb --input xtb.inp --chrg " + charge_str + " " + filenamexyz + " --opt > " + outfile;
  else
    cmd = "xtb --chrg " + charge_str + " " + filenamexyz + " --opt > " + outfile; 
  system(cmd.c_str());
 
  cmd = "mv xtbopt.xyz " + filenamexyz;
  system(cmd.c_str()); 
  cmd = "rm xtbopt.log xtbrestart xtbtopo.mol wbo charges .xtboptok";
  system(cmd.c_str());
 #endif

  energy = read_output(outfile);
  //printf(" initial energy: %1.4f final energy: %1.4f \n",energy0,energy); 

  // need to retrieve final geometry, write to xyz
  xyz_read(filenamexyz);

  if (abs(energy)<0.00001)
  {
    printf(" energy zero, xtb failed \n");
    return 10000;
  }

  return energy;
}

void XTB::opt_write(string filename)
{
  energy0 = energy = 0;

  ofstream inpfile;
  string inpfile_string = "xtbinp";
  ofstream xyzfile;
  string xyzfile_string = filename;

  //printf("  opt_write for %s and %s \n",inpfile_string.c_str(),xyzfile_string.c_str());

  if (nfrz0>0)
  {
    inpfile.open(inpfile_string.c_str());
    inpfile.setf(ios::fixed);
    inpfile.setf(ios::left);
    inpfile << setprecision(6);

    inpfile << "$fix" << endl;
    inpfile << " atoms:";
    for (int i=0;i<natoms;i++)
    if (!skip[i] && frzlistb[i])
      inpfile << " " << i;
    inpfile << "$end" << endl;

    inpfile.close();
  }

  xyzfile.open(xyzfile_string.c_str());
  xyzfile.setf(ios::fixed);
  xyzfile.setf(ios::left);
  xyzfile << setprecision(6);

  xyzfile << " " << natoms << endl << endl;
  for (int i=0;i<natoms;i++)
  if (!skip[i])
  {
    xyzfile << " " << anames[i] << " " << xyz[3*i+0] << " " << xyz[3*i+1] << " " << xyz[3*i+2] << endl;
  }

  xyzfile.close();

  return;
}

double XTB::read_output(string filename)
{
  energy = 10000;

  ifstream output(filename.c_str(),ios::in);
  string line;
  vector<string> tok_line;
  while(!output.eof()) 
  { 
    getline(output,line);
    if (line.find("TOTAL ENERGY")!=string::npos)
    {
      //cout << line << endl;
      tok_line = StringTools::tokenize(line, " \t");
      energy=atof(tok_line[3].c_str());
    }
  }

  printf("  found energy: %12.8f \n",energy);

  return energy;
}


void XTB::alloc(int natoms_i)
{
  printf(" in XTB/alloc() natoms: %2i \n",natoms_i);
  charge = 0;

  natoms = natoms_i;
  anumbers = new int[natoms];
  anames = new string[natoms];

  xyz0 = new double[3*natoms];
  xyz = new double[3*natoms];

  nfrz = 0;
  frzlist = new int[natoms];
  frzlistb = new int[natoms];

  nskip = 0;
  skip = new int[natoms];
  for (int i=0;i<natoms;i++)
    skip[i] = 0;

  return;
}

void XTB::init(int natoms_i, int* anumbers_i, string* anames_i, double* xyz_i)
{ 
//  printf(" in XTB/init() \n");
  charge = 0;

  natoms = natoms_i;
  anumbers = new int[natoms];
  anames = new string[natoms];

  xyz0 = new double[3*natoms];
  xyz = new double[3*natoms];

  for (int i=0;i<natoms;i++)
    anumbers[i] = anumbers_i[i];
  for (int i=0;i<natoms;i++)
    anames[i] = anames_i[i];
  for (int i=0;i<3*natoms;i++)
    xyz0[i] = xyz[i] = xyz_i[i];  

  nfrz = 0;
  frzlist = new int[natoms_i];
  frzlistb = new int[natoms_i];

  nskip = 0;
  skip = new int[natoms];
  for (int i=0;i<natoms;i++)
    skip[i] = 0;
  for (int i=0;i<natoms;i++)
  if (anames[i]=="X")
  {
    nskip++;
    skip[i] = 1;
  }

  return;
}

void XTB::freemem()
{
  delete [] xyz0;
  delete [] xyz;
  delete [] anumbers;
  delete [] anames;

  delete [] frzlist;
  delete [] frzlistb;

  delete [] skip;

  return;
}

void XTB::freeze(int* frzlist_new, int nfrz_new, int nfrz0_new)
{
  nfrz0 = nfrz0_new;
  nfrz = nfrz_new;
  for (int i=0;i<natoms;i++)
    frzlistb[i] = 0;
  for (int i=0;i<nfrz;i++)
    frzlistb[frzlist_new[i]] = 1;
  for (int i=0;i<nfrz;i++)
    frzlist[i] = frzlist_new[i];

 #if 0
  printf(" freeze list: ");
  for (int i=0;i<nfrz;i++)
    printf("%i ",frzlist[i]);
  printf("\n");
 #endif
  
  return;
}

void XTB::freeze_d(int* frzlist_new)
{
  for (int i=0;i<natoms;i++)
    frzlist[i] = frzlist_new[i];
  for (int i=0;i<natoms;i++)
    frzlistb[i] = frzlist_new[i];

  nfrz = 0;
  for (int i=0;i<natoms;i++)
  if (frzlist[i])
    nfrz++;

  nfrz0 = nfrz;

 #if 1
  printf(" freeze list: ");
  for (int i=0;i<natoms;i++)
    printf("%i ",frzlistb[i]);
  printf("\n");
 #endif
  
  return;
}

void XTB::reset(int natoms_i, int* anumbers_i, string* anames_i, double* xyz_i)
{
 #if 0
  if (natoms!=natoms_i)
  {
    printf(" xtb reset failed due to different # of atoms \n");
    return;
  }
 #endif
  natoms = natoms_i;

  for (int i=0;i<natoms;i++)
    anumbers[i] = anumbers_i[i];
  for (int i=0;i<natoms;i++)
    anames[i] = anames_i[i];
  for (int i=0;i<3*natoms;i++)
    xyz0[i] = xyz[i] = xyz_i[i];  

  nskip = 0;
  for (int i=0;i<natoms;i++)
  if (anames[i]=="X")
  {
    nskip++;
    skip[i] = 1;
  }
  else
    skip[i] = 0;

  nfrz = 0;

  return;
}

void XTB::set_charge(int c0)
{
  charge = c0;
  return;
}

void XTB::xyz_save(string filename)
{
  ofstream xyzfile;
  string xyzfile_string = "xyzfile.txt";
  xyzfile.open(filename.c_str());
  xyzfile.setf(ios::fixed);
  xyzfile.setf(ios::left);
  xyzfile << setprecision(6);

   xyzfile << " " << natoms << endl;
   xyzfile << " " << endl;
   for (int i=0;i<natoms;i++)
   {
     xyzfile << "  " << anames[i];
     xyzfile << " " << xyz[3*i+0] << " " << xyz[3*i+1] << " " << xyz[3*i+2];
     xyzfile << endl;
   }

  xyzfile.close();
  return;
}

void XTB::xyz_read(string filename)
{
//  printf(" in xyz_read \n");
  string oname = filename;
  ifstream output(oname.c_str(),ios::in);

  string line;
  vector<string> tok_line;
  int i = 0;

  getline(output,line);
  getline(output,line);
  while(!output.eof()) 
  { 
    getline(output,line);
    //cout << " RR " << line << endl;
    while (i<natoms && skip[i])
      i++;
    if (i==natoms) break;
    if (!StringTools::cleanstring(line)) break;
    vector<string> tok_line = StringTools::tokenize(line, " \t");
    //cout << tok_line[0] << " " << tok_line[1] << " " << tok_line[2] << " " << tok_line[3] << endl; 

    xyz[3*i+0]=atof(tok_line[1].c_str());
    xyz[3*i+1]=atof(tok_line[2].c_str());
    xyz[3*i+2]=atof(tok_line[3].c_str());
    i++;
  }

  output.close();
 
  return;
}   

