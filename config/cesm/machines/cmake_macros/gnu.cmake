set(CFLAGS "-std=gnu99")
if (compile_threaded)
  string(APPEND CFLAGS " -fopenmp")
endif()
if (DEBUG)
  string(APPEND CFLAGS " -g -Wall -Og -fbacktrace -ffpe-trap=invalid,zero,overflow -fcheck=bounds")
endif()
if (NOT DEBUG)
  string(APPEND CFLAGS " -O")
endif()
string(APPEND CPPDEFS " -DFORTRANUNDERSCORE -DNO_R16 -DCPRGNU")
set(CXX_LINKER "FORTRAN")
set(FC_AUTO_R8 "-fdefault-real-8 -fdefault-double-8")
set(FFLAGS "-fconvert=big-endian -ffree-line-length-none -ffixed-line-length-none")
if (compile_threaded)
  string(APPEND FFLAGS " -fopenmp")
endif()
if (DEBUG)
  string(APPEND FFLAGS " -g -Wall -Og -fbacktrace -ffpe-trap=zero,overflow -fcheck=bounds")
endif()
if (NOT DEBUG)
  string(APPEND FFLAGS " -O")
endif()
set(FFLAGS_NOOPT "-O0")
set(FIXEDFLAGS "-ffixed-form")
set(FREEFLAGS "-ffree-form")
set(HAS_F2008_CONTIGUOUS "FALSE")
if (compile_threaded)
  string(APPEND LDFLAGS " -fopenmp")
endif()
set(MPICC "mpicc")
set(MPICXX "mpicxx")
set(MPIFC "mpif90")
set(SCC "gcc")
set(SCXX "g++")
set(SFC "gfortran")
set(SUPPORTS_CXX "TRUE")
