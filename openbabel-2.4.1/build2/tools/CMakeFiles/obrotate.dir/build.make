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
include tools/CMakeFiles/obrotate.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/obrotate.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/obrotate.dir/flags.make

tools/CMakeFiles/obrotate.dir/obrotate.o: tools/CMakeFiles/obrotate.dir/flags.make
tools/CMakeFiles/obrotate.dir/obrotate.o: ../tools/obrotate.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/CMakeFiles/obrotate.dir/obrotate.o"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/obrotate.dir/obrotate.o -c /export/zimmerman/paulzim/bcat/openbabel-2.4.1/tools/obrotate.cpp

tools/CMakeFiles/obrotate.dir/obrotate.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/obrotate.dir/obrotate.i"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /export/zimmerman/paulzim/bcat/openbabel-2.4.1/tools/obrotate.cpp > CMakeFiles/obrotate.dir/obrotate.i

tools/CMakeFiles/obrotate.dir/obrotate.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/obrotate.dir/obrotate.s"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /export/zimmerman/paulzim/bcat/openbabel-2.4.1/tools/obrotate.cpp -o CMakeFiles/obrotate.dir/obrotate.s

tools/CMakeFiles/obrotate.dir/obrotate.o.requires:
.PHONY : tools/CMakeFiles/obrotate.dir/obrotate.o.requires

tools/CMakeFiles/obrotate.dir/obrotate.o.provides: tools/CMakeFiles/obrotate.dir/obrotate.o.requires
	$(MAKE) -f tools/CMakeFiles/obrotate.dir/build.make tools/CMakeFiles/obrotate.dir/obrotate.o.provides.build
.PHONY : tools/CMakeFiles/obrotate.dir/obrotate.o.provides

tools/CMakeFiles/obrotate.dir/obrotate.o.provides.build: tools/CMakeFiles/obrotate.dir/obrotate.o

# Object files for target obrotate
obrotate_OBJECTS = \
"CMakeFiles/obrotate.dir/obrotate.o"

# External object files for target obrotate
obrotate_EXTERNAL_OBJECTS =

bin/obrotate: tools/CMakeFiles/obrotate.dir/obrotate.o
bin/obrotate: tools/CMakeFiles/obrotate.dir/build.make
bin/obrotate: lib/libopenbabel.so.5.0.0
bin/obrotate: /usr/lib64/libm.so
bin/obrotate: /usr/lib64/libz.so
bin/obrotate: tools/CMakeFiles/obrotate.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/obrotate"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/obrotate.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/obrotate.dir/build: bin/obrotate
.PHONY : tools/CMakeFiles/obrotate.dir/build

tools/CMakeFiles/obrotate.dir/requires: tools/CMakeFiles/obrotate.dir/obrotate.o.requires
.PHONY : tools/CMakeFiles/obrotate.dir/requires

tools/CMakeFiles/obrotate.dir/clean:
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools && $(CMAKE_COMMAND) -P CMakeFiles/obrotate.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/obrotate.dir/clean

tools/CMakeFiles/obrotate.dir/depend:
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /export/zimmerman/paulzim/bcat/openbabel-2.4.1 /export/zimmerman/paulzim/bcat/openbabel-2.4.1/tools /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools/CMakeFiles/obrotate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/obrotate.dir/depend

