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
include src/CMakeFiles/example0301.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/example0301.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/example0301.dir/flags.make

src/CMakeFiles/example0301.dir/example03-create_gstelement01.o: src/CMakeFiles/example0301.dir/flags.make
src/CMakeFiles/example0301.dir/example03-create_gstelement01.o: src/example03-create_gstelement01.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldf/workspace/mygstreamer/GStreamer-example/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/example0301.dir/example03-create_gstelement01.o"
	cd /home/ldf/workspace/mygstreamer/GStreamer-example/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/example0301.dir/example03-create_gstelement01.o   -c /home/ldf/workspace/mygstreamer/GStreamer-example/src/example03-create_gstelement01.c

src/CMakeFiles/example0301.dir/example03-create_gstelement01.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/example0301.dir/example03-create_gstelement01.i"
	cd /home/ldf/workspace/mygstreamer/GStreamer-example/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldf/workspace/mygstreamer/GStreamer-example/src/example03-create_gstelement01.c > CMakeFiles/example0301.dir/example03-create_gstelement01.i

src/CMakeFiles/example0301.dir/example03-create_gstelement01.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/example0301.dir/example03-create_gstelement01.s"
	cd /home/ldf/workspace/mygstreamer/GStreamer-example/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldf/workspace/mygstreamer/GStreamer-example/src/example03-create_gstelement01.c -o CMakeFiles/example0301.dir/example03-create_gstelement01.s

src/CMakeFiles/example0301.dir/example03-create_gstelement01.o.requires:

.PHONY : src/CMakeFiles/example0301.dir/example03-create_gstelement01.o.requires

src/CMakeFiles/example0301.dir/example03-create_gstelement01.o.provides: src/CMakeFiles/example0301.dir/example03-create_gstelement01.o.requires
	$(MAKE) -f src/CMakeFiles/example0301.dir/build.make src/CMakeFiles/example0301.dir/example03-create_gstelement01.o.provides.build
.PHONY : src/CMakeFiles/example0301.dir/example03-create_gstelement01.o.provides

src/CMakeFiles/example0301.dir/example03-create_gstelement01.o.provides.build: src/CMakeFiles/example0301.dir/example03-create_gstelement01.o


# Object files for target example0301
example0301_OBJECTS = \
"CMakeFiles/example0301.dir/example03-create_gstelement01.o"

# External object files for target example0301
example0301_EXTERNAL_OBJECTS =

.build/bin/example0301: src/CMakeFiles/example0301.dir/example03-create_gstelement01.o
.build/bin/example0301: src/CMakeFiles/example0301.dir/build.make
.build/bin/example0301: src/CMakeFiles/example0301.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldf/workspace/mygstreamer/GStreamer-example/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../.build/bin/example0301"
	cd /home/ldf/workspace/mygstreamer/GStreamer-example/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example0301.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/example0301.dir/build: .build/bin/example0301

.PHONY : src/CMakeFiles/example0301.dir/build

src/CMakeFiles/example0301.dir/requires: src/CMakeFiles/example0301.dir/example03-create_gstelement01.o.requires

.PHONY : src/CMakeFiles/example0301.dir/requires

src/CMakeFiles/example0301.dir/clean:
	cd /home/ldf/workspace/mygstreamer/GStreamer-example/src && $(CMAKE_COMMAND) -P CMakeFiles/example0301.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/example0301.dir/clean

src/CMakeFiles/example0301.dir/depend:
	cd /home/ldf/workspace/mygstreamer/GStreamer-example && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldf/workspace/mygstreamer/GStreamer-example /home/ldf/workspace/mygstreamer/GStreamer-example/src /home/ldf/workspace/mygstreamer/GStreamer-example /home/ldf/workspace/mygstreamer/GStreamer-example/src /home/ldf/workspace/mygstreamer/GStreamer-example/src/CMakeFiles/example0301.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/example0301.dir/depend

