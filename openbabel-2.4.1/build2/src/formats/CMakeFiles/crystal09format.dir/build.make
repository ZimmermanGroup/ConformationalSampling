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
include src/formats/CMakeFiles/crystal09format.dir/depend.make

# Include the progress variables for this target.
include src/formats/CMakeFiles/crystal09format.dir/progress.make

# Include the compile flags for this target's objects.
include src/formats/CMakeFiles/crystal09format.dir/flags.make

src/formats/CMakeFiles/crystal09format.dir/crystal09format.o: src/formats/CMakeFiles/crystal09format.dir/flags.make
src/formats/CMakeFiles/crystal09format.dir/crystal09format.o: ../src/formats/crystal09format.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/formats/CMakeFiles/crystal09format.dir/crystal09format.o"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/crystal09format.dir/crystal09format.o -c /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/crystal09format.cpp

src/formats/CMakeFiles/crystal09format.dir/crystal09format.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/crystal09format.dir/crystal09format.i"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/crystal09format.cpp > CMakeFiles/crystal09format.dir/crystal09format.i

src/formats/CMakeFiles/crystal09format.dir/crystal09format.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/crystal09format.dir/crystal09format.s"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/crystal09format.cpp -o CMakeFiles/crystal09format.dir/crystal09format.s

src/formats/CMakeFiles/crystal09format.dir/crystal09format.o.requires:
.PHONY : src/formats/CMakeFiles/crystal09format.dir/crystal09format.o.requires

src/formats/CMakeFiles/crystal09format.dir/crystal09format.o.provides: src/formats/CMakeFiles/crystal09format.dir/crystal09format.o.requires
	$(MAKE) -f src/formats/CMakeFiles/crystal09format.dir/build.make src/formats/CMakeFiles/crystal09format.dir/crystal09format.o.provides.build
.PHONY : src/formats/CMakeFiles/crystal09format.dir/crystal09format.o.provides

src/formats/CMakeFiles/crystal09format.dir/crystal09format.o.provides.build: src/formats/CMakeFiles/crystal09format.dir/crystal09format.o

# Object files for target crystal09format
crystal09format_OBJECTS = \
"CMakeFiles/crystal09format.dir/crystal09format.o"

# External object files for target crystal09format
crystal09format_EXTERNAL_OBJECTS =

lib/crystal09format.so: src/formats/CMakeFiles/crystal09format.dir/crystal09format.o
lib/crystal09format.so: src/formats/CMakeFiles/crystal09format.dir/build.make
lib/crystal09format.so: /usr/lib64/libm.so
lib/crystal09format.so: /usr/lib64/libz.so
lib/crystal09format.so: /usr/lib64/libcairo.so
lib/crystal09format.so: lib/libinchi.so.0.4.1
lib/crystal09format.so: lib/libopenbabel.so.5.0.0
lib/crystal09format.so: /usr/lib64/libcairo.so
lib/crystal09format.so: /usr/lib64/libm.so
lib/crystal09format.so: /usr/lib64/libz.so
lib/crystal09format.so: src/formats/CMakeFiles/crystal09format.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module ../../lib/crystal09format.so"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/crystal09format.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/formats/CMakeFiles/crystal09format.dir/build: lib/crystal09format.so
.PHONY : src/formats/CMakeFiles/crystal09format.dir/build

src/formats/CMakeFiles/crystal09format.dir/requires: src/formats/CMakeFiles/crystal09format.dir/crystal09format.o.requires
.PHONY : src/formats/CMakeFiles/crystal09format.dir/requires

src/formats/CMakeFiles/crystal09format.dir/clean:
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && $(CMAKE_COMMAND) -P CMakeFiles/crystal09format.dir/cmake_clean.cmake
.PHONY : src/formats/CMakeFiles/crystal09format.dir/clean

src/formats/CMakeFiles/crystal09format.dir/depend:
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /export/zimmerman/paulzim/bcat/openbabel-2.4.1 /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats/CMakeFiles/crystal09format.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/formats/CMakeFiles/crystal09format.dir/depend

