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
include src/formats/CMakeFiles/confabreport.dir/depend.make

# Include the progress variables for this target.
include src/formats/CMakeFiles/confabreport.dir/progress.make

# Include the compile flags for this target's objects.
include src/formats/CMakeFiles/confabreport.dir/flags.make

src/formats/CMakeFiles/confabreport.dir/confabreport.o: src/formats/CMakeFiles/confabreport.dir/flags.make
src/formats/CMakeFiles/confabreport.dir/confabreport.o: ../src/formats/confabreport.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/formats/CMakeFiles/confabreport.dir/confabreport.o"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/confabreport.dir/confabreport.o -c /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/confabreport.cpp

src/formats/CMakeFiles/confabreport.dir/confabreport.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/confabreport.dir/confabreport.i"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/confabreport.cpp > CMakeFiles/confabreport.dir/confabreport.i

src/formats/CMakeFiles/confabreport.dir/confabreport.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/confabreport.dir/confabreport.s"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/confabreport.cpp -o CMakeFiles/confabreport.dir/confabreport.s

src/formats/CMakeFiles/confabreport.dir/confabreport.o.requires:
.PHONY : src/formats/CMakeFiles/confabreport.dir/confabreport.o.requires

src/formats/CMakeFiles/confabreport.dir/confabreport.o.provides: src/formats/CMakeFiles/confabreport.dir/confabreport.o.requires
	$(MAKE) -f src/formats/CMakeFiles/confabreport.dir/build.make src/formats/CMakeFiles/confabreport.dir/confabreport.o.provides.build
.PHONY : src/formats/CMakeFiles/confabreport.dir/confabreport.o.provides

src/formats/CMakeFiles/confabreport.dir/confabreport.o.provides.build: src/formats/CMakeFiles/confabreport.dir/confabreport.o

# Object files for target confabreport
confabreport_OBJECTS = \
"CMakeFiles/confabreport.dir/confabreport.o"

# External object files for target confabreport
confabreport_EXTERNAL_OBJECTS =

lib/confabreport.so: src/formats/CMakeFiles/confabreport.dir/confabreport.o
lib/confabreport.so: src/formats/CMakeFiles/confabreport.dir/build.make
lib/confabreport.so: /usr/lib64/libm.so
lib/confabreport.so: /usr/lib64/libz.so
lib/confabreport.so: /usr/lib64/libcairo.so
lib/confabreport.so: lib/libinchi.so.0.4.1
lib/confabreport.so: lib/libopenbabel.so.5.0.0
lib/confabreport.so: /usr/lib64/libcairo.so
lib/confabreport.so: /usr/lib64/libm.so
lib/confabreport.so: /usr/lib64/libz.so
lib/confabreport.so: src/formats/CMakeFiles/confabreport.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module ../../lib/confabreport.so"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/confabreport.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/formats/CMakeFiles/confabreport.dir/build: lib/confabreport.so
.PHONY : src/formats/CMakeFiles/confabreport.dir/build

src/formats/CMakeFiles/confabreport.dir/requires: src/formats/CMakeFiles/confabreport.dir/confabreport.o.requires
.PHONY : src/formats/CMakeFiles/confabreport.dir/requires

src/formats/CMakeFiles/confabreport.dir/clean:
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && $(CMAKE_COMMAND) -P CMakeFiles/confabreport.dir/cmake_clean.cmake
.PHONY : src/formats/CMakeFiles/confabreport.dir/clean

src/formats/CMakeFiles/confabreport.dir/depend:
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /export/zimmerman/paulzim/bcat/openbabel-2.4.1 /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats/CMakeFiles/confabreport.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/formats/CMakeFiles/confabreport.dir/depend

