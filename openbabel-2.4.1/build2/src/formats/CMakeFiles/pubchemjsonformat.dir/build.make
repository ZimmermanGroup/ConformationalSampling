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
include src/formats/CMakeFiles/pubchemjsonformat.dir/depend.make

# Include the progress variables for this target.
include src/formats/CMakeFiles/pubchemjsonformat.dir/progress.make

# Include the compile flags for this target's objects.
include src/formats/CMakeFiles/pubchemjsonformat.dir/flags.make

src/formats/CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.o: src/formats/CMakeFiles/pubchemjsonformat.dir/flags.make
src/formats/CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.o: ../src/formats/json/pubchemjsonformat.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/formats/CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.o"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.o -c /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/json/pubchemjsonformat.cpp

src/formats/CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.i"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/json/pubchemjsonformat.cpp > CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.i

src/formats/CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.s"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/json/pubchemjsonformat.cpp -o CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.s

src/formats/CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.o.requires:
.PHONY : src/formats/CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.o.requires

src/formats/CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.o.provides: src/formats/CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.o.requires
	$(MAKE) -f src/formats/CMakeFiles/pubchemjsonformat.dir/build.make src/formats/CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.o.provides.build
.PHONY : src/formats/CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.o.provides

src/formats/CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.o.provides.build: src/formats/CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.o

src/formats/CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.o: src/formats/CMakeFiles/pubchemjsonformat.dir/flags.make
src/formats/CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.o: ../src/formats/json/jsoncpp.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/formats/CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.o"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.o -c /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/json/jsoncpp.cpp

src/formats/CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.i"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/json/jsoncpp.cpp > CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.i

src/formats/CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.s"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/json/jsoncpp.cpp -o CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.s

src/formats/CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.o.requires:
.PHONY : src/formats/CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.o.requires

src/formats/CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.o.provides: src/formats/CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.o.requires
	$(MAKE) -f src/formats/CMakeFiles/pubchemjsonformat.dir/build.make src/formats/CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.o.provides.build
.PHONY : src/formats/CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.o.provides

src/formats/CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.o.provides.build: src/formats/CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.o

src/formats/CMakeFiles/pubchemjsonformat.dir/json/customwriter.o: src/formats/CMakeFiles/pubchemjsonformat.dir/flags.make
src/formats/CMakeFiles/pubchemjsonformat.dir/json/customwriter.o: ../src/formats/json/customwriter.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/formats/CMakeFiles/pubchemjsonformat.dir/json/customwriter.o"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/pubchemjsonformat.dir/json/customwriter.o -c /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/json/customwriter.cpp

src/formats/CMakeFiles/pubchemjsonformat.dir/json/customwriter.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pubchemjsonformat.dir/json/customwriter.i"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/json/customwriter.cpp > CMakeFiles/pubchemjsonformat.dir/json/customwriter.i

src/formats/CMakeFiles/pubchemjsonformat.dir/json/customwriter.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pubchemjsonformat.dir/json/customwriter.s"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats/json/customwriter.cpp -o CMakeFiles/pubchemjsonformat.dir/json/customwriter.s

src/formats/CMakeFiles/pubchemjsonformat.dir/json/customwriter.o.requires:
.PHONY : src/formats/CMakeFiles/pubchemjsonformat.dir/json/customwriter.o.requires

src/formats/CMakeFiles/pubchemjsonformat.dir/json/customwriter.o.provides: src/formats/CMakeFiles/pubchemjsonformat.dir/json/customwriter.o.requires
	$(MAKE) -f src/formats/CMakeFiles/pubchemjsonformat.dir/build.make src/formats/CMakeFiles/pubchemjsonformat.dir/json/customwriter.o.provides.build
.PHONY : src/formats/CMakeFiles/pubchemjsonformat.dir/json/customwriter.o.provides

src/formats/CMakeFiles/pubchemjsonformat.dir/json/customwriter.o.provides.build: src/formats/CMakeFiles/pubchemjsonformat.dir/json/customwriter.o

# Object files for target pubchemjsonformat
pubchemjsonformat_OBJECTS = \
"CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.o" \
"CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.o" \
"CMakeFiles/pubchemjsonformat.dir/json/customwriter.o"

# External object files for target pubchemjsonformat
pubchemjsonformat_EXTERNAL_OBJECTS =

lib/pubchemjsonformat.so: src/formats/CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.o
lib/pubchemjsonformat.so: src/formats/CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.o
lib/pubchemjsonformat.so: src/formats/CMakeFiles/pubchemjsonformat.dir/json/customwriter.o
lib/pubchemjsonformat.so: src/formats/CMakeFiles/pubchemjsonformat.dir/build.make
lib/pubchemjsonformat.so: /usr/lib64/libm.so
lib/pubchemjsonformat.so: /usr/lib64/libz.so
lib/pubchemjsonformat.so: /usr/lib64/libcairo.so
lib/pubchemjsonformat.so: lib/libinchi.so.0.4.1
lib/pubchemjsonformat.so: lib/libopenbabel.so.5.0.0
lib/pubchemjsonformat.so: /usr/lib64/libcairo.so
lib/pubchemjsonformat.so: /usr/lib64/libm.so
lib/pubchemjsonformat.so: /usr/lib64/libz.so
lib/pubchemjsonformat.so: src/formats/CMakeFiles/pubchemjsonformat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module ../../lib/pubchemjsonformat.so"
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pubchemjsonformat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/formats/CMakeFiles/pubchemjsonformat.dir/build: lib/pubchemjsonformat.so
.PHONY : src/formats/CMakeFiles/pubchemjsonformat.dir/build

src/formats/CMakeFiles/pubchemjsonformat.dir/requires: src/formats/CMakeFiles/pubchemjsonformat.dir/json/pubchemjsonformat.o.requires
src/formats/CMakeFiles/pubchemjsonformat.dir/requires: src/formats/CMakeFiles/pubchemjsonformat.dir/json/jsoncpp.o.requires
src/formats/CMakeFiles/pubchemjsonformat.dir/requires: src/formats/CMakeFiles/pubchemjsonformat.dir/json/customwriter.o.requires
.PHONY : src/formats/CMakeFiles/pubchemjsonformat.dir/requires

src/formats/CMakeFiles/pubchemjsonformat.dir/clean:
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats && $(CMAKE_COMMAND) -P CMakeFiles/pubchemjsonformat.dir/cmake_clean.cmake
.PHONY : src/formats/CMakeFiles/pubchemjsonformat.dir/clean

src/formats/CMakeFiles/pubchemjsonformat.dir/depend:
	cd /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /export/zimmerman/paulzim/bcat/openbabel-2.4.1 /export/zimmerman/paulzim/bcat/openbabel-2.4.1/src/formats /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/src/formats/CMakeFiles/pubchemjsonformat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/formats/CMakeFiles/pubchemjsonformat.dir/depend
