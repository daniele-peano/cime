set(CONFIG_ARGS "--host=cray")
string(APPEND CFLAGS " -axCORE-AVX2 -xSSE4.2 -no-fma")
string(APPEND FFLAGS " -axCORE-AVX2 -xSSE4.2 -no-fma")
set(MPICC "icc")
set(MPI_LIB_NAME "mpi")
set(MPI_PATH "$ENV{MPI_ROOT}")
set(NETCDF_PATH "$ENV{NETCDF}")
string(APPEND SLIBS " -L$ENV{NETCDF}/lib -lnetcdff -lnetcdf")
set(PNETCDF_PATH "/home6/fvitt/pnetcdf-1.12.2")
set(ESMF_LIBDIR "/home6/fvitt/esmf-8_1_1/lib/libO/Linux.intel.64.mpt.default")
