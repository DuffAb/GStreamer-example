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
CMAKE_SOURCE_DIR = /home/ldf/workspace/gstreamer/gst-example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ldf/workspace/gstreamer/gst-example

# Include any dependencies generated for this target.
include src/CMakeFiles/example05.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/example05.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/example05.dir/flags.make

src/CMakeFiles/example05.dir/example05-get_element_info_by_factory.o: src/CMakeFiles/example05.dir/flags.make
src/CMakeFiles/example05.dir/example05-get_element_info_by_factory.o: src/example05-get_element_info_by_factory.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldf/workspace/gstreamer/gst-example/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/example05.dir/example05-get_element_info_by_factory.o"
	cd /home/ldf/workspace/gstreamer/gst-example/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/example05.dir/example05-get_element_info_by_factory.o   -c /home/ldf/workspace/gstreamer/gst-example/src/example05-get_element_info_by_factory.c

src/CMakeFiles/example05.dir/example05-get_element_info_by_factory.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/example05.dir/example05-get_element_info_by_factory.i"
	cd /home/ldf/workspace/gstreamer/gst-example/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldf/workspace/gstreamer/gst-example/src/example05-get_element_info_by_factory.c > CMakeFiles/example05.dir/example05-get_element_info_by_factory.i

src/CMakeFiles/example05.dir/example05-get_element_info_by_factory.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/example05.dir/example05-get_element_info_by_factory.s"
	cd /home/ldf/workspace/gstreamer/gst-example/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldf/workspace/gstreamer/gst-example/src/example05-get_element_info_by_factory.c -o CMakeFiles/example05.dir/example05-get_element_info_by_factory.s

src/CMakeFiles/example05.dir/example05-get_element_info_by_factory.o.requires:

.PHONY : src/CMakeFiles/example05.dir/example05-get_element_info_by_factory.o.requires

src/CMakeFiles/example05.dir/example05-get_element_info_by_factory.o.provides: src/CMakeFiles/example05.dir/example05-get_element_info_by_factory.o.requires
	$(MAKE) -f src/CMakeFiles/example05.dir/build.make src/CMakeFiles/example05.dir/example05-get_element_info_by_factory.o.provides.build
.PHONY : src/CMakeFiles/example05.dir/example05-get_element_info_by_factory.o.provides

src/CMakeFiles/example05.dir/example05-get_element_info_by_factory.o.provides.build: src/CMakeFiles/example05.dir/example05-get_element_info_by_factory.o


# Object files for target example05
example05_OBJECTS = \
"CMakeFiles/example05.dir/example05-get_element_info_by_factory.o"

# External object files for target example05
example05_EXTERNAL_OBJECTS =

.build/bin/example05: src/CMakeFiles/example05.dir/example05-get_element_info_by_factory.o
.build/bin/example05: src/CMakeFiles/example05.dir/build.make
.build/bin/example05: src/CMakeFiles/example05.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldf/workspace/gstreamer/gst-example/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../.build/bin/example05"
	cd /home/ldf/workspace/gstreamer/gst-example/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example05.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/example05.dir/build: .build/bin/example05

.PHONY : src/CMakeFiles/example05.dir/build

src/CMakeFiles/example05.dir/requires: src/CMakeFiles/example05.dir/example05-get_element_info_by_factory.o.requires

.PHONY : src/CMakeFiles/example05.dir/requires

src/CMakeFiles/example05.dir/clean:
	cd /home/ldf/workspace/gstreamer/gst-example/src && $(CMAKE_COMMAND) -P CMakeFiles/example05.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/example05.dir/clean

src/CMakeFiles/example05.dir/depend:
	cd /home/ldf/workspace/gstreamer/gst-example && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldf/workspace/gstreamer/gst-example /home/ldf/workspace/gstreamer/gst-example/src /home/ldf/workspace/gstreamer/gst-example /home/ldf/workspace/gstreamer/gst-example/src /home/ldf/workspace/gstreamer/gst-example/src/CMakeFiles/example05.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/example05.dir/depend

