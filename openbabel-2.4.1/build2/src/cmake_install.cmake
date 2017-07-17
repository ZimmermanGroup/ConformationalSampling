# Install script for directory: /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src

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
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenbabel.so.5.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenbabel.so.5"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenbabel.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/export/zimmerman/paulzim/openbabel241/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/lib/libopenbabel.so.5.0.0"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/lib/libopenbabel.so.5"
    "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/lib/libopenbabel.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenbabel.so.5.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenbabel.so.5"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenbabel.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "::::::::::::::::::::::::::::::::::::::::::"
           NEW_RPATH "/export/zimmerman/paulzim/openbabel241/lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_descriptors.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_descriptors.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_descriptors.so"
         RPATH "/export/zimmerman/paulzim/openbabel241/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/lib/plugin_descriptors.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_descriptors.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_descriptors.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_descriptors.so"
         OLD_RPATH "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/lib:"
         NEW_RPATH "/export/zimmerman/paulzim/openbabel241/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_descriptors.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_fingerprints.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_fingerprints.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_fingerprints.so"
         RPATH "/export/zimmerman/paulzim/openbabel241/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/lib/plugin_fingerprints.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_fingerprints.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_fingerprints.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_fingerprints.so"
         OLD_RPATH "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/lib:"
         NEW_RPATH "/export/zimmerman/paulzim/openbabel241/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_fingerprints.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_forcefields.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_forcefields.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_forcefields.so"
         RPATH "/export/zimmerman/paulzim/openbabel241/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/lib/plugin_forcefields.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_forcefields.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_forcefields.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_forcefields.so"
         OLD_RPATH "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/lib:"
         NEW_RPATH "/export/zimmerman/paulzim/openbabel241/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_forcefields.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_ops.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_ops.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_ops.so"
         RPATH "/export/zimmerman/paulzim/openbabel241/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/lib/plugin_ops.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_ops.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_ops.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_ops.so"
         OLD_RPATH "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/lib:"
         NEW_RPATH "/export/zimmerman/paulzim/openbabel241/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_ops.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_charges.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_charges.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_charges.so"
         RPATH "/export/zimmerman/paulzim/openbabel241/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/lib/plugin_charges.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_charges.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_charges.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_charges.so"
         OLD_RPATH "/export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/lib:"
         NEW_RPATH "/export/zimmerman/paulzim/openbabel241/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/plugin_charges.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats/cmake_install.cmake")

endif()

