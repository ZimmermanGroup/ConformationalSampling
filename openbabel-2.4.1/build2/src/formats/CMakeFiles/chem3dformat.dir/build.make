# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /export/apps/CMake/3.2.2/bin/cmake

# The command to remove a file.
RM = /export/apps/CMake/3.2.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /export/zimmerman/paulzim/bcat/openbabel-2.4.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build

# Include any dependencies generated for this target.
include src/formats/CMakeFiles/chem3dformat.dir/depend.make

# Include the progress variables for this target.
include src/formats/CMakeFiles/chem3dformat.dir/progress.make

# Include the compile flags for this target's objects.
include src/formats/CMakeFiles/chem3dformat.dir/flags.make

src/formats/CMakeFiles/chem3dformat.dir/chem3dformat.o: src/formats/CMakeFiles/chem3dformat.dir/flags.make
src/formats/CMakeFiles/chem3dformat.dir/chem3dformat.o: ../src/formats/chem3dformat.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/formats/CMakeFiles/chem3dformat.dir/chem3dformat.o"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/chem3dformat.dir/chem3dformat.o -c /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/chem3dformat.cpp

src/formats/CMakeFiles/chem3dformat.dir/chem3dformat.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chem3dformat.dir/chem3dformat.i"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/chem3dformat.cpp > CMakeFiles/chem3dformat.dir/chem3dformat.i

src/formats/CMakeFiles/chem3dformat.dir/chem3dformat.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chem3dformat.dir/chem3dformat.s"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/chem3dformat.cpp -o CMakeFiles/chem3dformat.dir/chem3dformat.s

src/formats/CMakeFiles/chem3dformat.dir/chem3dformat.o.requires:
.PHONY : src/formats/CMakeFiles/chem3dformat.dir/chem3dformat.o.requires

src/formats/CMakeFiles/chem3dformat.dir/chem3dformat.o.provides: src/formats/CMakeFiles/chem3dformat.dir/chem3dformat.o.requires
	$(MAKE) -f src/formats/CMakeFiles/chem3dformat.dir/build.make src/formats/CMakeFiles/chem3dformat.dir/chem3dformat.o.provides.build
.PHONY : src/formats/CMakeFiles/chem3dformat.dir/chem3dformat.o.provides

src/formats/CMakeFiles/chem3dformat.dir/chem3dformat.o.provides.build: src/formats/CMakeFiles/chem3dformat.dir/chem3dformat.o

# Object files for target chem3dformat
chem3dformat_OBJECTS = \
"CMakeFiles/chem3dformat.dir/chem3dformat.o"

# External object files for target chem3dformat
chem3dformat_EXTERNAL_OBJECTS =

lib/chem3dformat.so: src/formats/CMakeFiles/chem3dformat.dir/chem3dformat.o
lib/chem3dformat.so: src/formats/CMakeFiles/chem3dformat.dir/build.make
lib/chem3dformat.so: /usr/lib64/libm.so
lib/chem3dformat.so: /usr/lib64/libz.so
lib/chem3dformat.so: /usr/lib64/libcairo.so
lib/chem3dformat.so: lib/libinchi.so.0.4.1
lib/chem3dformat.so: lib/libopenbabel.so.5.0.0
lib/chem3dformat.so: /usr/lib64/libcairo.so
lib/chem3dformat.so: /usr/lib64/libm.so
lib/chem3dformat.so: /usr/lib64/libz.so
lib/chem3dformat.so: src/formats/CMakeFiles/chem3dformat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module ../../lib/chem3dformat.so"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chem3dformat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/formats/CMakeFiles/chem3dformat.dir/build: lib/chem3dformat.so
.PHONY : src/formats/CMakeFiles/chem3dformat.dir/build

src/formats/CMakeFiles/chem3dformat.dir/requires: src/formats/CMakeFiles/chem3dformat.dir/chem3dformat.o.requires
.PHONY : src/formats/CMakeFiles/chem3dformat.dir/requires

src/formats/CMakeFiles/chem3dformat.dir/clean:
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && $(CMAKE_COMMAND) -P CMakeFiles/chem3dformat.dir/cmake_clean.cmake
.PHONY : src/formats/CMakeFiles/chem3dformat.dir/clean

src/formats/CMakeFiles/chem3dformat.dir/depend:
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /export/zimmerman/paulzim/bcat/openbabel-2.4.1 /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats/CMakeFiles/chem3dformat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/formats/CMakeFiles/chem3dformat.dir/depend

