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
include tools/CMakeFiles/obprobe.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/obprobe.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/obprobe.dir/flags.make

tools/CMakeFiles/obprobe.dir/obprobe.o: tools/CMakeFiles/obprobe.dir/flags.make
tools/CMakeFiles/obprobe.dir/obprobe.o: ../tools/obprobe.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/CMakeFiles/obprobe.dir/obprobe.o"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/obprobe.dir/obprobe.o -c /export/zimmerman/paulzim/bcat/openbabel-2.4.1/tools/obprobe.cpp

tools/CMakeFiles/obprobe.dir/obprobe.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/obprobe.dir/obprobe.i"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /export/zimmerman/paulzim/bcat/openbabel-2.4.1/tools/obprobe.cpp > CMakeFiles/obprobe.dir/obprobe.i

tools/CMakeFiles/obprobe.dir/obprobe.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/obprobe.dir/obprobe.s"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /export/zimmerman/paulzim/bcat/openbabel-2.4.1/tools/obprobe.cpp -o CMakeFiles/obprobe.dir/obprobe.s

tools/CMakeFiles/obprobe.dir/obprobe.o.requires:
.PHONY : tools/CMakeFiles/obprobe.dir/obprobe.o.requires

tools/CMakeFiles/obprobe.dir/obprobe.o.provides: tools/CMakeFiles/obprobe.dir/obprobe.o.requires
	$(MAKE) -f tools/CMakeFiles/obprobe.dir/build.make tools/CMakeFiles/obprobe.dir/obprobe.o.provides.build
.PHONY : tools/CMakeFiles/obprobe.dir/obprobe.o.provides

tools/CMakeFiles/obprobe.dir/obprobe.o.provides.build: tools/CMakeFiles/obprobe.dir/obprobe.o

# Object files for target obprobe
obprobe_OBJECTS = \
"CMakeFiles/obprobe.dir/obprobe.o"

# External object files for target obprobe
obprobe_EXTERNAL_OBJECTS =

bin/obprobe: tools/CMakeFiles/obprobe.dir/obprobe.o
bin/obprobe: tools/CMakeFiles/obprobe.dir/build.make
bin/obprobe: lib/libopenbabel.so.5.0.0
bin/obprobe: /usr/lib64/libm.so
bin/obprobe: /usr/lib64/libz.so
bin/obprobe: tools/CMakeFiles/obprobe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/obprobe"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/obprobe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/obprobe.dir/build: bin/obprobe
.PHONY : tools/CMakeFiles/obprobe.dir/build

tools/CMakeFiles/obprobe.dir/requires: tools/CMakeFiles/obprobe.dir/obprobe.o.requires
.PHONY : tools/CMakeFiles/obprobe.dir/requires

tools/CMakeFiles/obprobe.dir/clean:
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools && $(CMAKE_COMMAND) -P CMakeFiles/obprobe.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/obprobe.dir/clean

tools/CMakeFiles/obprobe.dir/depend:
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /export/zimmerman/paulzim/bcat/openbabel-2.4.1 /export/zimmerman/paulzim/bcat/openbabel-2.4.1/tools /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/tools/CMakeFiles/obprobe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/obprobe.dir/depend

