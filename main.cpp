#include "main.h"


#define DIST_THRESH 0.2
#define GSM_CMD "./gfstringq.exe"

void opt_semi(OBMol &mol, vector<int> constraints, int type)
{
  OBElementTable etab;
  vector<string> anames;
  vector<int> anumbers;
  for (int i=1; i<=mol.NumAtoms(); ++i)
  {
    OBAtom* atom = mol.GetAtom(i);
    anames.push_back(etab.GetSymbol(atom->GetAtomicNum()));
    anumbers.push_back(atom->GetAtomicNum());
  }

  vector<double> E(mol.NumConformers(), 0.0);
  opt_semi(mol.GetTotalCharge(), mol.NumAtoms(), anames.data(), anumbers.data(), mol.GetConformers(), E.data(), constraints, type);
  mol.SetEnergies(E);
}

void opt_semi(int charge, int natoms, string* anames, int* anumbers, vector<double*> xyzall, double* E, vector<int> constraints, int type)
{
  int N3 = natoms*3;
  int nstruct = xyzall.size();

  int* frz = new int[natoms];
  for (int i=0;i<natoms;i++) frz[i] = 0;
 #if USE_XTB
  XTB sopt;
 #else
  Mopac sopt;
 #endif
  sopt.alloc(natoms);
  sopt.set_charge(charge);
  sopt.freeze_d(frz);
  sopt.constrain(constraints);

  int* done = new int[nstruct];
  for (int i=0;i<nstruct;i++) done[i] = 0;

  for (int i=0;i<nstruct;i++)
  if (!done[i])
  {
    string nstr = StringTools::int2str(i,3,"0");
    string mfilename;
    if (type==1)
      mfilename = "scratch/sopt"+nstr;
    else if (type==2)
      mfilename = "scratch/soptb"+nstr;
    else
      mfilename = "scratch/soptc"+nstr;
  
    sopt.reset(natoms,anumbers,anames,xyzall[i]);
    E[i] = sopt.opt_check(mfilename);
    for (int j=0;j<N3;j++)
      xyzall[i][j] = sopt.xyz[j];

    done[i] = 1;
  }

  printf("  conformer energies:");
  for (int i=0;i<nstruct;i++)
    printf(" %8.4f",E[i]);
  printf("\n");

  delete [] done;
  delete [] frz;

  return;
}

void generate_conformers_and_opt(OBMol &mol, int nconf)
{
  OBConformerSearch cs;
  cs.Setup(mol);
  cs.Search();
  cs.GetConformers(mol);
  write_all_xyz(mol, "all_openbabel.xyz");

  opt_semi(mol, vector<int>(), 1);
  write_all_xyz(mol, "all_openbabel2.xyz");
  
}

void procedure(int nconf, string xyzfile, string targetfile, int procedure_type)
{
  ICoord ic1; 
  ic1.init(xyzfile);
  printf(" initial bonds \n");
  ic1.print_bonds();

  vector<double*> xyzall;
  double* E;

  OBConversion obconversion;
  obconversion.SetInAndOutFormats("xyz", "xyz");
  OBMol mol;
  obconversion.ReadFile(&mol, xyzfile);
  generate_conformers_and_opt(mol, nconf);

  if (procedure_type==2) return;

  string cfilename = "CHARGE1";
  int charge1 = get_charge(cfilename);
  cfilename = "CHARGE2";
  int charge2 = get_charge(cfilename);
  int charget = charge1 + charge2;

  OBMol target;
  obconversion.ReadFile(&target, targetfile);

  mol.SetTotalCharge(charge1);
  target.SetTotalCharge(charge2);

  int nstruct = mol.NumConformers();

  align_and_opt_with_constraint(mol, target);
}


void check_bonding(int nstruct, ICoord ic1, int natoms1, string* anames, int* anumbers, vector<double*> xyzalla, bool* unique)
{
  printf("\n  now checking bonding \n");
  for (int i=0;i<nstruct;i++)
  {
    ICoord ic2;
    ic2.isOpt = 0;
    ic2.init(natoms1,anames,anumbers,xyzalla[i]);
    //ic2.print_bonds();

    if (ic2.nbonds!=ic1.nbonds)
    {
      printf("  struct %2i bonds changed, eliminating \n",i+1);
      unique[i] = 0;
    }
    else
    {
     //here check that bonding is the same
      int nf = 0;
      //for (int j=0;j<ic1.nbonds;j++)
    }
  }

  return;
}


int read_adds(int* adds, string addfile)
{
  int nadd = 0;

  ifstream infile;
  infile.open(addfile.c_str());
  if (!infile){
    printf(" Error: couldn't open file: %s \n",addfile.c_str());
    exit(-1);
  } 
  
  string line;
  while (!infile.eof())
  {
    getline(infile,line);
    vector<string> tok_line = StringTools::tokenize(line, " \t");
    if (tok_line.size()<2) break;

    adds[2*nadd+0] = atoi(tok_line[0].c_str())-1;
    adds[2*nadd+1] = atoi(tok_line[1].c_str())-1;
    //printf(" ADD found: %2i %2i \n",adds[2*nadd+0]+1,adds[2*nadd+1]+1);
    nadd++;
  }

  return nadd;
}


void align_and_opt_with_constraint(OBMol &mol, OBMol &target)
{
  
  vector<int> adds(8); //no more than tetradentate
  int nadd = read_adds(adds.data(),"ADD");
  for (int i=0;i<nadd;i++)
  {
    adds[2*i+1] += mol.NumAtoms();
    printf(" ADD found: %2i %2i \n",adds[2*i+0]+1,adds[2*i+1]+1);
  }

  OBMol combined_mol(mol);
  combined_mol += target;
  for (int i=0;i<mol.NumConformers();i++)
  {
    printf(" working on structure %2i \n",i+1);
    mol.SetConformer(i);
    Align align1;
    // feed in 2 xyz structures into the Align class
    align1.init(mol, target);
    // nadd : how many pairs of aligned vectors
    // adds : flattened pairs of atom indices (molecule 1 atom #, molecule 2 atom #, molecule 1 atom # ...)
    align1.add_align(nadd,adds.data());
    combined_mol.AddConformer(align1.xyza);
  }
  printf("\n");

  write_all_xyz(combined_mol, "all_openbabel3.xyz");
  // JOSH - write an xtb constraint input instead of a GSM input
  // use analog of opt_semi for the constraint
  opt_semi(combined_mol, adds, 2);
  write_all_xyz(combined_mol, "all_openbabel4.xyz");

}

void align_and_opt(int natoms1, int natoms2, string* anames, string* anamesm, string* anamest, int* anumbers, int* anumbersm, int charget, int nstruct, bool* unique, vector<double*> xyzall, double* xyzm)
{
  int natomst = natoms1 + natoms2;
  
  int* adds = new int[8]; //no more than tetradentate
  int nadd = read_adds(adds,"ADD");
  for (int i=0;i<nadd;i++)
  {
    adds[2*i+1] += natoms1;
    printf(" ADD found: %2i %2i \n",adds[2*i+0]+1,adds[2*i+1]+1);
  }

  int N3t = (natoms1+natoms2)*3;
  double** xyzalign = new double*[nstruct];
  for (int i=0;i<nstruct;i++)
    xyzalign[i] = new double[N3t];

  printf("  now creating initial.xyz \n");
  for (int i=0;i<nstruct;i++)
  {
    printf(" working on structure %2i \n",i+1);

    Align align1;
    // feed in 2 xyz structures into the Align class
    align1.init(natoms1,anames,anumbers,xyzall[i],natoms2,anamesm,anumbersm,xyzm);
    // nadd : how many pairs of aligned vectors
    // adds : flattened pairs of atom indices (molecule 1 atom #, molecule 2 atom #, molecule 1 atom # ...)
    align1.add_align(nadd,adds);
    for (int j=0;j<N3t;j++)
      xyzalign[i][j] = align1.xyza[j];
  }
  printf("\n");

  write_all_xyz(natomst,anamest,nstruct,NULL,xyzalign,"all3.xyz");
  // JOSH - write an xtb constraint input instead of a GSM input
  // use analog of opt_semi for the constraint
  write_gsm(natomst,anamest,charget,nstruct,NULL,xyzalign,nadd,adds);

#if 0
  printf(" printing aligned structures \n");
  for (int i=0;i<nstruct;i++)
  {
    printf(" %2i \n \n",natomst);
    for (int j=0;j<natomst;j++)
      printf(" %2s %8.5f %8.5f %8.5f \n",anamest[j].c_str(),xyzalign[i][3*j+0],xyzalign[i][3*j+1],xyzalign[i][3*j+2]);
  }
#endif

  do_gsm(nstruct);

  for (int i=0;i<nstruct;i++)
    delete [] xyzalign[i];
  delete [] xyzalign;

  return;
}

void do_gsm(int nstruct)
{
//  printf("  skipping GSM step \n");
//  return;

  string gsm_cmd = GSM_CMD;
  string cmd;
  for (int i=0;i<nstruct;i++)
  {
    string nstr = StringTools::int2str(i,4,"0");
    string istr = StringTools::int2str(i,1,"0");
    string filename = "scratch/firstnode.xyz"+nstr;
    struct stat sts;
    if (stat(filename.c_str(), &sts) != -1)
    {
      printf("  string %2i already done \n",i);
    }
    else
    {
      cmd = gsm_cmd + " " + istr + " > scratch/paragsm" + nstr;
      system(cmd.c_str());
    }
  }
}

void get_all_xyz(int natoms, string* anames, vector<double*> &xyzs, string xyzfile)
{
  ifstream infile;
  infile.open(xyzfile.c_str());
  if (!infile)
  {
    printf(" Error: couldn't open XYZ file: %s \n",xyzfile.c_str());
    exit(-1);
  } 
  
  string line;
  int nf = 0;
  while (!infile.eof())
  {
    getline(infile, line);
    int natoms1 = atoi(line.c_str());
    if (natoms1==natoms)
    {
      double* coords = new double[3*natoms];
      getline(infile, line);
  
      for (int i=0;i<natoms;i++)
      {
        getline(infile, line);
        int length=StringTools::cleanstring(line);
        vector<string> tok_line = StringTools::tokenize(line, " \t");
        if (nf==0)
          anames[i]=tok_line[0];
        coords[3*i+0]=atof(tok_line[1].c_str());
        coords[3*i+1]=atof(tok_line[2].c_str());
        coords[3*i+2]=atof(tok_line[3].c_str());
      }
      xyzs.push_back(coords);
      nf++;
    } //if adding new geom
    else
    {
      printf(" done reading after %2i structures \n",nf);
      break;
    }
  }
  infile.close();
 
  return;
}   

void xyz_read(int natoms, string* anames, double* coords, string xyzfile)
{  
  ifstream infile;
  infile.open(xyzfile.c_str());
  if (!infile){
    printf(" Error: couldn't open XYZ file \n");
    exit(-1);
  } 
  
  string line;
  bool success=true;
  success=getline(infile, line);
  if (success){
    int length=StringTools::cleanstring(line);
    natoms=atoi(line.c_str());
  }
  printf(" natoms: %i \n",natoms);
  
  success=getline(infile, line);
  
  //cout <<"  -Reading the atomic names...";
  for (int i=0;i<natoms;i++){
    success=getline(infile, line);
    int length=StringTools::cleanstring(line);
    vector<string> tok_line = StringTools::tokenize(line, " \t");
    anames[i]=tok_line[0];
    coords[3*i+0]=atof(tok_line[1].c_str());
    coords[3*i+1]=atof(tok_line[2].c_str());
    coords[3*i+2]=atof(tok_line[3].c_str());
  }
  
  infile.close();

#if 0
  printf(" XYZ: \n");
  for (int i=0;i<natoms;i++)
    printf(" %s %8.6f %8.6f %8.6f \n",anames[i].c_str(),coords[3*i+0],coords[3*i+1],coords[3*i+2]);
#endif

  printf(" done reading XYZ \n"); fflush(stdout);
 
  return;
}   

void xyz_read_last(int natoms, double* coords, string xyzfile)
{ 
  ifstream infile;
  infile.open(xyzfile.c_str());
  if (!infile){
    printf(" Error: couldn't open XYZ file: %s \n",xyzfile.c_str());
    exit(-1);
  } 
  
  string line;
  int nf = 0;
  while (!infile.eof())
  {
    getline(infile, line);
    int natoms1 = atoi(line.c_str());
    if (natoms1==natoms)
    {
      getline(infile, line);  
      for (int i=0;i<natoms;i++)
      {
        getline(infile, line);
        int length=StringTools::cleanstring(line);
        vector<string> tok_line = StringTools::tokenize(line, " \t");
        coords[3*i+0]=atof(tok_line[1].c_str());
        coords[3*i+1]=atof(tok_line[2].c_str());
        coords[3*i+2]=atof(tok_line[3].c_str());
      }
      nf++;
    } //if adding new geom
    else
    {
      printf(" done reading after %2i structures \n",nf);
      break;
    }
  }
  infile.close();
 
  return;
}   

int get_charge(string filename)
{
  return get_natoms(filename);
}

int get_natoms(string filename)
{
  ifstream infile;
  infile.open(filename.c_str());
  if (!infile){
    printf("  couldn't find file %s \n",filename.c_str());
    exit(-1);
  }

  string line;
  getline(infile, line);
  int length=StringTools::cleanstring(line);
  int natoms = atoi(line.c_str());

  infile.close();

  return natoms;
}

int get_unique_conf(int nstruct, bool* unique)
{
  int ns2 = nstruct * nstruct;
  int* similar = new int[ns2];
  for (int i=0;i<ns2;i++) similar[i] = 0;

  OBConversion obc1,obc2;
  obc1.SetInFormat("xyz");
  obc2.SetInFormat("xyz");
  OBMol mol1;
  OBMol mol2;

  int nf1 = 0;
  bool notatend1 = obc1.ReadFile(&mol1,"all2.xyz");
  while (notatend1)
  {
    //printf("  Molecular Weight: %5.3f \n",mol1.GetMolWt());

    int nf2 = 0;
    bool notatend2 = obc2.ReadFile(&mol2,"all2.xyz");
    while (notatend2)
    {
      OBAlign align1 = OBAlign(mol1,mol2);
      align1.Align();
      double dist = align1.GetRMSD();
      printf(" difference (%2i-%2i): %10.6f \n",nf1,nf2,dist);
      if (dist<DIST_THRESH) similar[nf1*nstruct+nf2] = 1;

      mol2.Clear();
      notatend2 = obc2.Read(&mol2);
      nf2++;
    }
    mol1.Clear();
    notatend1 = obc1.Read(&mol1);
    nf1++;
  }

  for (int i=0;i<nstruct;i++) unique[i] = 1;
  for (int i=0;i<nstruct;i++)
  for (int j=0;j<i;j++)
  if (similar[i*nstruct+j])
    unique[j] = 0;

  int nf = 0;
  for (int i=0;i<nstruct;i++)
  if (unique[i])
    nf++;
  
  printf("\n similarity matrix: \n");
  for (int i=0;i<nstruct;i++)
  {
    for (int j=0;j<nstruct;j++)
      printf(" %i",similar[i*nstruct+j]);
    printf("\n");
  }
  printf(" unique list:");
  for (int i=0;i<nstruct;i++)
    printf(" %i",unique[i]);
  printf("\n\n");

  return nf;
}

void write_all_xyz(OBMol &mol, string xyzfile_string)
{
  OBElementTable etab;
  vector<string> anames;
  for (int i=1; i<=mol.NumAtoms(); ++i)
  {
    OBAtom* atom = mol.GetAtom(i);
    anames.push_back(etab.GetSymbol(atom->GetAtomicNum()));
  }
  cout << endl << "Number of conformers: " << mol.GetConformers().size() << endl;
  write_all_xyz(mol.NumAtoms(), anames.data(), mol.GetEnergies().data(), mol.GetConformers(), xyzfile_string);

}

void write_all_xyz(int natoms, string* anames, double* E, vector<double*> xyzs, string xyzfile_string)
{
  int nstruct = xyzs.size();
  double** xyzs1 = &xyzs[0];
  write_all_xyz(natoms,anames,nstruct,E,xyzs1,xyzfile_string);
  return;
}

void write_all_xyz(int natoms, string* anames, int nstruct, double* E, double** xyzs, string xyzfile_string)
{
  ofstream xyzfile;
  xyzfile.open(xyzfile_string.c_str());
  xyzfile.setf(ios::fixed);
  xyzfile.setf(ios::left);
  xyzfile << setprecision(6);

  char* sbuff = new char[3000];
  for (int i=0;i<nstruct;i++)
  {
    if (E==NULL)
      xyzfile << natoms << endl << endl;
    else
      xyzfile << natoms << endl << E[i] << endl;
    for (int j=0;j<natoms;j++)
    {
      sprintf(sbuff," %2s %10.6f %10.6f %10.6f \n",anames[j].c_str(),xyzs[i][3*j+0],xyzs[i][3*j+1],xyzs[i][3*j+2]);
      xyzfile << sbuff;
    }
  }

  xyzfile.close();

  delete [] sbuff;

  printf(" done writing \n");

  return;
}

void write_gsm(int natoms, string* anames, int charge, int nstruct, double* E, double** xyzs, int nadd, int* adds)
{
  char* sbuff = new char[3000];

  for (int i=0;i<nstruct;i++)
  {
    string nstr = StringTools::int2str(i,4,"0");

    string xyzfile_string = "scratch/initial"+nstr+".xyz";
    ofstream xyzfile;
    xyzfile.open(xyzfile_string.c_str());
    xyzfile.setf(ios::fixed);
    xyzfile.setf(ios::left);
    xyzfile << setprecision(8);

    xyzfile << natoms << endl << charge << endl;
    for (int j=0;j<natoms;j++)
    {
      sprintf(sbuff," %2s %10.6f %10.6f %10.6f \n",anames[j].c_str(),xyzs[i][3*j+0],xyzs[i][3*j+1],xyzs[i][3*j+2]);
      xyzfile << sbuff;
    }
    xyzfile.close();

    string isofile_string = "scratch/ISOMERS"+nstr;
    ofstream isofile;
    isofile.open(isofile_string.c_str());
    isofile << "NEW" << endl;
    for (int j=0;j<nadd;j++)
      isofile << "BOND " << adds[2*j+0]+1 << " " << adds[2*j+1]+1 << endl;
    isofile.close();

    double dist1 = 2.0;
    string forcefile_string = "scratch/FORCE"+nstr;
    ofstream forcefile;
    forcefile.open(forcefile_string.c_str());
    for (int j=0;j<nadd;j++)
      forcefile << adds[2*j+0]+1 << " " << adds[2*j+1]+1 << " " << dist1 << " 0.15 " << endl;
    forcefile.close();
  }


  delete [] sbuff;

  printf(" done writing \n");

  return;
}


int main(int argc, char* argv[])
{
  printf("\n\n in main() \n");

  string xyzfile = "ligand.xyz";
  string targetfile = "target.xyz";
  int nconf = 25000;

  switch (argc){
    case 2:
      nconf = atoi(argv[1]);
      break;
    case 3:
      //printf(" case 2 \n");
      nconf = atoi(argv[1]);
      xyzfile = argv[2];
      break;
    default:
      break;
  }
  int procedure_type = 1;
  procedure(nconf,xyzfile,targetfile,procedure_type);

  return 0;
}

