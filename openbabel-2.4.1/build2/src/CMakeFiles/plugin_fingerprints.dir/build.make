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
include src/CMakeFiles/plugin_fingerprints.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/plugin_fingerprints.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/plugin_fingerprints.dir/flags.make

src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.o: src/CMakeFiles/plugin_fingerprints.dir/flags.make
src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.o: ../src/fingerprints/finger2.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.o"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.o -c /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/fingerprints/finger2.cpp

src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.i"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/fingerprints/finger2.cpp > CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.i

src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.s"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/fingerprints/finger2.cpp -o CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.s

src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.o.requires:
.PHONY : src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.o.requires

src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.o.provides: src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.o.requires
	$(MAKE) -f src/CMakeFiles/plugin_fingerprints.dir/build.make src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.o.provides.build
.PHONY : src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.o.provides

src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.o.provides.build: src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.o

src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.o: src/CMakeFiles/plugin_fingerprints.dir/flags.make
src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.o: ../src/fingerprints/finger3.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.o"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.o -c /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/fingerprints/finger3.cpp

src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.i"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/fingerprints/finger3.cpp > CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.i

src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.s"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/fingerprints/finger3.cpp -o CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.s

src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.o.requires:
.PHONY : src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.o.requires

src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.o.provides: src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.o.requires
	$(MAKE) -f src/CMakeFiles/plugin_fingerprints.dir/build.make src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.o.provides.build
.PHONY : src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.o.provides

src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.o.provides.build: src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.o

src/CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.o: src/CMakeFiles/plugin_fingerprints.dir/flags.make
src/CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.o: ../src/fingerprints/fingerecfp.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.o"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.o -c /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/fingerprints/fingerecfp.cpp

src/CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.i"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/fingerprints/fingerecfp.cpp > CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.i

src/CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.s"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/fingerprints/fingerecfp.cpp -o CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.s

src/CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.o.requires:
.PHONY : src/CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.o.requires

src/CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.o.provides: src/CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.o.requires
	$(MAKE) -f src/CMakeFiles/plugin_fingerprints.dir/build.make src/CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.o.provides.build
.PHONY : src/CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.o.provides

src/CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.o.provides.build: src/CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.o

# Object files for target plugin_fingerprints
plugin_fingerprints_OBJECTS = \
"CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.o" \
"CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.o" \
"CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.o"

# External object files for target plugin_fingerprints
plugin_fingerprints_EXTERNAL_OBJECTS =

lib/plugin_fingerprints.so: src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.o
lib/plugin_fingerprints.so: src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.o
lib/plugin_fingerprints.so: src/CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.o
lib/plugin_fingerprints.so: src/CMakeFiles/plugin_fingerprints.dir/build.make
lib/plugin_fingerprints.so: /usr/lib64/libm.so
lib/plugin_fingerprints.so: /usr/lib64/libz.so
lib/plugin_fingerprints.so: lib/libopenbabel.so.5.0.0
lib/plugin_fingerprints.so: /usr/lib64/libm.so
lib/plugin_fingerprints.so: /usr/lib64/libz.so
lib/plugin_fingerprints.so: src/CMakeFiles/plugin_fingerprints.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module ../lib/plugin_fingerprints.so"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/plugin_fingerprints.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/plugin_fingerprints.dir/build: lib/plugin_fingerprints.so
.PHONY : src/CMakeFiles/plugin_fingerprints.dir/build

src/CMakeFiles/plugin_fingerprints.dir/requires: src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger2.o.requires
src/CMakeFiles/plugin_fingerprints.dir/requires: src/CMakeFiles/plugin_fingerprints.dir/fingerprints/finger3.o.requires
src/CMakeFiles/plugin_fingerprints.dir/requires: src/CMakeFiles/plugin_fingerprints.dir/fingerprints/fingerecfp.o.requires
.PHONY : src/CMakeFiles/plugin_fingerprints.dir/requires

src/CMakeFiles/plugin_fingerprints.dir/clean:
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src && $(CMAKE_COMMAND) -P CMakeFiles/plugin_fingerprints.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/plugin_fingerprints.dir/clean

src/CMakeFiles/plugin_fingerprints.dir/depend:
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /export/zimmerman/paulzim/bcat/openbabel-2.4.1 /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/CMakeFiles/plugin_fingerprints.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/plugin_fingerprints.dir/depend
