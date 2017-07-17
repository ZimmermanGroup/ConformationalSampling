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
include src/formats/CMakeFiles/rxnformat.dir/depend.make

# Include the progress variables for this target.
include src/formats/CMakeFiles/rxnformat.dir/progress.make

# Include the compile flags for this target's objects.
include src/formats/CMakeFiles/rxnformat.dir/flags.make

src/formats/CMakeFiles/rxnformat.dir/rxnformat.o: src/formats/CMakeFiles/rxnformat.dir/flags.make
src/formats/CMakeFiles/rxnformat.dir/rxnformat.o: ../src/formats/rxnformat.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/formats/CMakeFiles/rxnformat.dir/rxnformat.o"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/rxnformat.dir/rxnformat.o -c /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/rxnformat.cpp

src/formats/CMakeFiles/rxnformat.dir/rxnformat.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rxnformat.dir/rxnformat.i"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/rxnformat.cpp > CMakeFiles/rxnformat.dir/rxnformat.i

src/formats/CMakeFiles/rxnformat.dir/rxnformat.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rxnformat.dir/rxnformat.s"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/rxnformat.cpp -o CMakeFiles/rxnformat.dir/rxnformat.s

src/formats/CMakeFiles/rxnformat.dir/rxnformat.o.requires:
.PHONY : src/formats/CMakeFiles/rxnformat.dir/rxnformat.o.requires

src/formats/CMakeFiles/rxnformat.dir/rxnformat.o.provides: src/formats/CMakeFiles/rxnformat.dir/rxnformat.o.requires
	$(MAKE) -f src/formats/CMakeFiles/rxnformat.dir/build.make src/formats/CMakeFiles/rxnformat.dir/rxnformat.o.provides.build
.PHONY : src/formats/CMakeFiles/rxnformat.dir/rxnformat.o.provides

src/formats/CMakeFiles/rxnformat.dir/rxnformat.o.provides.build: src/formats/CMakeFiles/rxnformat.dir/rxnformat.o

# Object files for target rxnformat
rxnformat_OBJECTS = \
"CMakeFiles/rxnformat.dir/rxnformat.o"

# External object files for target rxnformat
rxnformat_EXTERNAL_OBJECTS =

lib/rxnformat.so: src/formats/CMakeFiles/rxnformat.dir/rxnformat.o
lib/rxnformat.so: src/formats/CMakeFiles/rxnformat.dir/build.make
lib/rxnformat.so: /usr/lib64/libm.so
lib/rxnformat.so: /usr/lib64/libz.so
lib/rxnformat.so: /usr/lib64/libcairo.so
lib/rxnformat.so: lib/libinchi.so.0.4.1
lib/rxnformat.so: lib/libopenbabel.so.5.0.0
lib/rxnformat.so: /usr/lib64/libcairo.so
lib/rxnformat.so: /usr/lib64/libm.so
lib/rxnformat.so: /usr/lib64/libz.so
lib/rxnformat.so: src/formats/CMakeFiles/rxnformat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module ../../lib/rxnformat.so"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rxnformat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/formats/CMakeFiles/rxnformat.dir/build: lib/rxnformat.so
.PHONY : src/formats/CMakeFiles/rxnformat.dir/build

src/formats/CMakeFiles/rxnformat.dir/requires: src/formats/CMakeFiles/rxnformat.dir/rxnformat.o.requires
.PHONY : src/formats/CMakeFiles/rxnformat.dir/requires

src/formats/CMakeFiles/rxnformat.dir/clean:
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && $(CMAKE_COMMAND) -P CMakeFiles/rxnformat.dir/cmake_clean.cmake
.PHONY : src/formats/CMakeFiles/rxnformat.dir/clean

src/formats/CMakeFiles/rxnformat.dir/depend:
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /export/zimmerman/paulzim/bcat/openbabel-2.4.1 /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats/CMakeFiles/rxnformat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/formats/CMakeFiles/rxnformat.dir/depend

