# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ldf/workspace/mygstreamer/GStreamer-example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ldf/workspace/mygstreamer/GStreamer-example

# Include any dependencies generated for this target.
include src/CMakeFiles/basic-tutorial-6.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/basic-tutorial-6.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/basic-tutorial-6.dir/flags.make

src/CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.o: src/CMakeFiles/basic-tutorial-6.dir/flags.make
src/CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.o: src/basic-tutorial-6.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldf/workspace/mygstreamer/GStreamer-example/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.o"
	cd /home/ldf/workspace/mygstreamer/GStreamer-example/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.o   -c /home/ldf/workspace/mygstreamer/GStreamer-example/src/basic-tutorial-6.c

src/CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.i"
	cd /home/ldf/workspace/mygstreamer/GStreamer-example/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldf/workspace/mygstreamer/GStreamer-example/src/basic-tutorial-6.c > CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.i

src/CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.s"
	cd /home/ldf/workspace/mygstreamer/GStreamer-example/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldf/workspace/mygstreamer/GStreamer-example/src/basic-tutorial-6.c -o CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.s

src/CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.o.requires:

.PHONY : src/CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.o.requires

src/CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.o.provides: src/CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.o.requires
	$(MAKE) -f src/CMakeFiles/basic-tutorial-6.dir/build.make src/CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.o.provides.build
.PHONY : src/CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.o.provides

src/CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.o.provides.build: src/CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.o


# Object files for target basic-tutorial-6
basic__tutorial__6_OBJECTS = \
"CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.o"

# External object files for target basic-tutorial-6
basic__tutorial__6_EXTERNAL_OBJECTS =

.build/bin/basic-tutorial-6: src/CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.o
.build/bin/basic-tutorial-6: src/CMakeFiles/basic-tutorial-6.dir/build.make
.build/bin/basic-tutorial-6: src/CMakeFiles/basic-tutorial-6.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldf/workspace/mygstreamer/GStreamer-example/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../.build/bin/basic-tutorial-6"
	cd /home/ldf/workspace/mygstreamer/GStreamer-example/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/basic-tutorial-6.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/basic-tutorial-6.dir/build: .build/bin/basic-tutorial-6

.PHONY : src/CMakeFiles/basic-tutorial-6.dir/build

src/CMakeFiles/basic-tutorial-6.dir/requires: src/CMakeFiles/basic-tutorial-6.dir/basic-tutorial-6.o.requires

.PHONY : src/CMakeFiles/basic-tutorial-6.dir/requires

src/CMakeFiles/basic-tutorial-6.dir/clean:
	cd /home/ldf/workspace/mygstreamer/GStreamer-example/src && $(CMAKE_COMMAND) -P CMakeFiles/basic-tutorial-6.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/basic-tutorial-6.dir/clean

src/CMakeFiles/basic-tutorial-6.dir/depend:
	cd /home/ldf/workspace/mygstreamer/GStreamer-example && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldf/workspace/mygstreamer/GStreamer-example /home/ldf/workspace/mygstreamer/GStreamer-example/src /home/ldf/workspace/mygstreamer/GStreamer-example /home/ldf/workspace/mygstreamer/GStreamer-example/src /home/ldf/workspace/mygstreamer/GStreamer-example/src/CMakeFiles/basic-tutorial-6.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/basic-tutorial-6.dir/depend

