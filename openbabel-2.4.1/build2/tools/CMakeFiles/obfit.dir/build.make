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
include tools/CMakeFiles/obfit.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/obfit.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/obfit.dir/flags.make

tools/CMakeFiles/obfit.dir/obfit.o: tools/CMakeFiles/obfit.dir/flags.make
tools/CMakeFiles/obfit.dir/obfit.o: ../tools/obfit.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/CMakeFiles/obfit.dir/obfit.o"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/obfit.dir/obfit.o -c /export/zimmerman/paulzim/bcat/openbabel-2.4.1/tools/obfit.cpp

tools/CMakeFiles/obfit.dir/obfit.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/obfit.dir/obfit.i"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /export/zimmerman/paulzim/bcat/openbabel-2.4.1/tools/obfit.cpp > CMakeFiles/obfit.dir/obfit.i

tools/CMakeFiles/obfit.dir/obfit.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/obfit.dir/obfit.s"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /export/zimmerman/paulzim/bcat/openbabel-2.4.1/tools/obfit.cpp -o CMakeFiles/obfit.dir/obfit.s

tools/CMakeFiles/obfit.dir/obfit.o.requires:
.PHONY : tools/CMakeFiles/obfit.dir/obfit.o.requires

tools/CMakeFiles/obfit.dir/obfit.o.provides: tools/CMakeFiles/obfit.dir/obfit.o.requires
	$(MAKE) -f tools/CMakeFiles/obfit.dir/build.make tools/CMakeFiles/obfit.dir/obfit.o.provides.build
.PHONY : tools/CMakeFiles/obfit.dir/obfit.o.provides

tools/CMakeFiles/obfit.dir/obfit.o.provides.build: tools/CMakeFiles/obfit.dir/obfit.o

# Object files for target obfit
obfit_OBJECTS = \
"CMakeFiles/obfit.dir/obfit.o"

# External object files for target obfit
obfit_EXTERNAL_OBJECTS =

bin/obfit: tools/CMakeFiles/obfit.dir/obfit.o
bin/obfit: tools/CMakeFiles/obfit.dir/build.make
bin/obfit: lib/libopenbabel.so.5.0.0
bin/obfit: /usr/lib64/libm.so
bin/obfit: /usr/lib64/libz.so
bin/obfit: tools/CMakeFiles/obfit.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/obfit"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/obfit.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/obfit.dir/build: bin/obfit
.PHONY : tools/CMakeFiles/obfit.dir/build

tools/CMakeFiles/obfit.dir/requires: tools/CMakeFiles/obfit.dir/obfit.o.requires
.PHONY : tools/CMakeFiles/obfit.dir/requires

tools/CMakeFiles/obfit.dir/clean:
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools && $(CMAKE_COMMAND) -P CMakeFiles/obfit.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/obfit.dir/clean

tools/CMakeFiles/obfit.dir/depend:
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /export/zimmerman/paulzim/bcat/openbabel-2.4.1 /export/zimmerman/paulzim/bcat/openbabel-2.4.1/tools /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools/CMakeFiles/obfit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/obfit.dir/depend

