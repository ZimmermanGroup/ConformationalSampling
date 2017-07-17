# Install script for directory: /export/zimmerman/paulzim/bcat/openbabel-2.4.1/data

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/export/zimmerman/paulzim/openbabel241")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/aromatic.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/atomization-energies.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/atomtyp.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/babel_povray3.inc;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/bondtyp.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/element.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/eem.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/eem2015ba.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/eem2015bm.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/eem2015bn.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/eem2015ha.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/eem2015hm.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/eem2015hn.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/eqeqIonizations.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/fragments.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/gaff.dat;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/gaff.prm;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/ghemical.prm;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/isotope-small.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/isotope.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/logp.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/MACCS.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/mmff94.ff;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/mmff94s.ff;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/mmffang.par;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/mmffbndk.par;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/mmffbond.par;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/mmffchg.par;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/mmffdef.par;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/mmffdfsb.par;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/mmffoop.par;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/mmffpbci.par;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/mmffprop.par;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/mmffstbn.par;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/mmfftor.par;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/mmffvdw.par;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/mmffs_oop.par;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/mmffs_tor.par;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/mpC.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/mr.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/patterns.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/phmodel.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/plugindefines.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/psa.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/qeq.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/resdata.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/ringtyp.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/SMARTS_InteLigand.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/space-groups.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/superatom.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/svgformat.script;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/templates.sdf;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/torlib.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/types.txt;/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1/UFF.prm")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/export/zimmerman/paulzim/openbabel241/share/openbabel/2.4.1" TYPE FILE FILES
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/aromatic.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/atomization-energies.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/atomtyp.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/babel_povray3.inc"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/bondtyp.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/element.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/eem.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/eem2015ba.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/eem2015bm.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/eem2015bn.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/eem2015ha.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/eem2015hm.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/eem2015hn.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/eqeqIonizations.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/fragments.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/gaff.dat"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/gaff.prm"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/ghemical.prm"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/isotope-small.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/isotope.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/logp.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/MACCS.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/mmff94.ff"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/mmff94s.ff"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/mmffang.par"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/mmffbndk.par"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/mmffbond.par"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/mmffchg.par"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/mmffdef.par"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/mmffdfsb.par"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/mmffoop.par"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/mmffpbci.par"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/mmffprop.par"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/mmffstbn.par"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/mmfftor.par"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/mmffvdw.par"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/mmffs_oop.par"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/mmffs_tor.par"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/mpC.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/mr.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/patterns.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/phmodel.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/plugindefines.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/psa.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/qeq.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/resdata.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/ringtyp.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/SMARTS_InteLigand.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/space-groups.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/superatom.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/svgformat.script"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/templates.sdf"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/torlib.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/types.txt"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/data/UFF.prm"
    )
endif()

