string(APPEND CPPDEFS " -DCESMCOUPLED")
if (MODEL STREQUAL pop)
  string(APPEND CPPDEFS " -D_USE_FLOW_CONTROL")
endif()
if (MODEL STREQUAL ufsatm)
  string(APPEND CPPDEFS " -DSPMD")
endif()
if (MODEL STREQUAL ufsatm)
  string(APPEND INCLDIR " -I$(EXEROOT)/atm/obj/FMS")
endif()
if (MODEL STREQUAL ufsatm)
  string(APPEND FFLAGS " $(FC_AUTO_R8)")
endif()
if (MODEL STREQUAL mom)
  string(APPEND FFLAGS " $(FC_AUTO_R8) -Duse_LARGEFILE")
endif()
set(SUPPORTS_CXX "FALSE")
