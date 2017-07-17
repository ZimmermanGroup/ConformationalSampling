# Install script for directory: /export/zimmerman/paulzim/bcat/openbabel-2.4.1/include

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/inchi" TYPE FILE FILES "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/inchi_api.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openbabel-2.0/openbabel" TYPE FILE FILES "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/chemdrawcdx.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openbabel-2.0/openbabel" TYPE FILE FILES
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/conformersearch.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/generic.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/matrix.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/bond.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/obconversion.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/rotamer.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/chargemodel.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/isomorphism.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/data.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/canon.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/descriptor.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/forcefield.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/rotor.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/molchrg.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/locale.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/reaction.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/internalcoord.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/griddata.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/obutil.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/fingerprint.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/pointgroup.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/builder.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/spectrophore.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/patty.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/parsmart.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/tokenst.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/text.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/data_utilities.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/base.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/typer.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/distgeom.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/residue.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/obmolecformat.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/mcdlutil.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/mol.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/shared_ptr.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/obiter.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/chiral.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/oberror.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/graphsym.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/chains.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/groupcontrib.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/rand.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/atomclass.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/lineend.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/tautomer.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/grid.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/bitvec.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/op.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/query.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/format.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/inchiformat.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/ring.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/atom.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/kinetics.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/alias.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/phmodel.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/plugin.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/bondtyper.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/dlhandler.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/xml.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/optransform.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openbabel-2.0/openbabel/math" TYPE FILE FILES
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/math/align.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/math/erf.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/math/spacegroup.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/math/transform3d.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/math/matrix3x3.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/math/vector3.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openbabel-2.0/openbabel/stereo" TYPE FILE FILES
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/stereo/squareplanar.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/stereo/tetranonplanar.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/stereo/cistrans.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/stereo/tetrahedral.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/stereo/stereo.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/stereo/tetraplanar.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/stereo/bindings.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openbabel-2.0/openbabel/json" TYPE FILE FILES
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/json/customwriter.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/json/json.h"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/include/openbabel/json/json-forwards.h"
    )
endif()

