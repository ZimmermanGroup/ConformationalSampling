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
include src/formats/CMakeFiles/asciiformat.dir/depend.make

# Include the progress variables for this target.
include src/formats/CMakeFiles/asciiformat.dir/progress.make

# Include the compile flags for this target's objects.
include src/formats/CMakeFiles/asciiformat.dir/flags.make

src/formats/CMakeFiles/asciiformat.dir/asciiformat.o: src/formats/CMakeFiles/asciiformat.dir/flags.make
src/formats/CMakeFiles/asciiformat.dir/asciiformat.o: ../src/formats/asciiformat.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/formats/CMakeFiles/asciiformat.dir/asciiformat.o"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/asciiformat.dir/asciiformat.o -c /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/asciiformat.cpp

src/formats/CMakeFiles/asciiformat.dir/asciiformat.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/asciiformat.dir/asciiformat.i"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/asciiformat.cpp > CMakeFiles/asciiformat.dir/asciiformat.i

src/formats/CMakeFiles/asciiformat.dir/asciiformat.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/asciiformat.dir/asciiformat.s"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/asciiformat.cpp -o CMakeFiles/asciiformat.dir/asciiformat.s

src/formats/CMakeFiles/asciiformat.dir/asciiformat.o.requires:
.PHONY : src/formats/CMakeFiles/asciiformat.dir/asciiformat.o.requires

src/formats/CMakeFiles/asciiformat.dir/asciiformat.o.provides: src/formats/CMakeFiles/asciiformat.dir/asciiformat.o.requires
	$(MAKE) -f src/formats/CMakeFiles/asciiformat.dir/build.make src/formats/CMakeFiles/asciiformat.dir/asciiformat.o.provides.build
.PHONY : src/formats/CMakeFiles/asciiformat.dir/asciiformat.o.provides

src/formats/CMakeFiles/asciiformat.dir/asciiformat.o.provides.build: src/formats/CMakeFiles/asciiformat.dir/asciiformat.o

src/formats/CMakeFiles/asciiformat.dir/__/depict/asciipainter.o: src/formats/CMakeFiles/asciiformat.dir/flags.make
src/formats/CMakeFiles/asciiformat.dir/__/depict/asciipainter.o: ../src/depict/asciipainter.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/formats/CMakeFiles/asciiformat.dir/__/depict/asciipainter.o"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/asciiformat.dir/__/depict/asciipainter.o -c /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/depict/asciipainter.cpp

src/formats/CMakeFiles/asciiformat.dir/__/depict/asciipainter.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/asciiformat.dir/__/depict/asciipainter.i"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/depict/asciipainter.cpp > CMakeFiles/asciiformat.dir/__/depict/asciipainter.i

src/formats/CMakeFiles/asciiformat.dir/__/depict/asciipainter.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/asciiformat.dir/__/depict/asciipainter.s"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/depict/asciipainter.cpp -o CMakeFiles/asciiformat.dir/__/depict/asciipainter.s

src/formats/CMakeFiles/asciiformat.dir/__/depict/asciipainter.o.requires:
.PHONY : src/formats/CMakeFiles/asciiformat.dir/__/depict/asciipainter.o.requires

src/formats/CMakeFiles/asciiformat.dir/__/depict/asciipainter.o.provides: src/formats/CMakeFiles/asciiformat.dir/__/depict/asciipainter.o.requires
	$(MAKE) -f src/formats/CMakeFiles/asciiformat.dir/build.make src/formats/CMakeFiles/asciiformat.dir/__/depict/asciipainter.o.provides.build
.PHONY : src/formats/CMakeFiles/asciiformat.dir/__/depict/asciipainter.o.provides

src/formats/CMakeFiles/asciiformat.dir/__/depict/asciipainter.o.provides.build: src/formats/CMakeFiles/asciiformat.dir/__/depict/asciipainter.o

# Object files for target asciiformat
asciiformat_OBJECTS = \
"CMakeFiles/asciiformat.dir/asciiformat.o" \
"CMakeFiles/asciiformat.dir/__/depict/asciipainter.o"

# External object files for target asciiformat
asciiformat_EXTERNAL_OBJECTS =

lib/asciiformat.so: src/formats/CMakeFiles/asciiformat.dir/asciiformat.o
lib/asciiformat.so: src/formats/CMakeFiles/asciiformat.dir/__/depict/asciipainter.o
lib/asciiformat.so: src/formats/CMakeFiles/asciiformat.dir/build.make
lib/asciiformat.so: /usr/lib64/libm.so
lib/asciiformat.so: /usr/lib64/libz.so
lib/asciiformat.so: /usr/lib64/libcairo.so
lib/asciiformat.so: lib/libinchi.so.0.4.1
lib/asciiformat.so: lib/libopenbabel.so.5.0.0
lib/asciiformat.so: /usr/lib64/libcairo.so
lib/asciiformat.so: /usr/lib64/libm.so
lib/asciiformat.so: /usr/lib64/libz.so
lib/asciiformat.so: src/formats/CMakeFiles/asciiformat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module ../../lib/asciiformat.so"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/asciiformat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/formats/CMakeFiles/asciiformat.dir/build: lib/asciiformat.so
.PHONY : src/formats/CMakeFiles/asciiformat.dir/build

src/formats/CMakeFiles/asciiformat.dir/requires: src/formats/CMakeFiles/asciiformat.dir/asciiformat.o.requires
src/formats/CMakeFiles/asciiformat.dir/requires: src/formats/CMakeFiles/asciiformat.dir/__/depict/asciipainter.o.requires
.PHONY : src/formats/CMakeFiles/asciiformat.dir/requires

src/formats/CMakeFiles/asciiformat.dir/clean:
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && $(CMAKE_COMMAND) -P CMakeFiles/asciiformat.dir/cmake_clean.cmake
.PHONY : src/formats/CMakeFiles/asciiformat.dir/clean

src/formats/CMakeFiles/asciiformat.dir/depend:
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /export/zimmerman/paulzim/bcat/openbabel-2.4.1 /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats/CMakeFiles/asciiformat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/formats/CMakeFiles/asciiformat.dir/depend

