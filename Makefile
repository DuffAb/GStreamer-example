# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ldf/workspace/mygstreamer/GStreamer-example/CMakeFiles /home/ldf/workspace/mygstreamer/GStreamer-example/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ldf/workspace/mygstreamer/GStreamer-example/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named gst-vr-plugin-player

# Build rule for target.
gst-vr-plugin-player: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 gst-vr-plugin-player
.PHONY : gst-vr-plugin-player

# fast build rule for target.
gst-vr-plugin-player/fast:
	$(MAKE) -f src/CMakeFiles/gst-vr-plugin-player.dir/build.make src/CMakeFiles/gst-vr-plugin-player.dir/build
.PHONY : gst-vr-plugin-player/fast

#=============================================================================
# Target rules for targets named basic-tutorial-3

# Build rule for target.
basic-tutorial-3: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 basic-tutorial-3
.PHONY : basic-tutorial-3

# fast build rule for target.
basic-tutorial-3/fast:
	$(MAKE) -f src/CMakeFiles/basic-tutorial-3.dir/build.make src/CMakeFiles/basic-tutorial-3.dir/build
.PHONY : basic-tutorial-3/fast

#=============================================================================
# Target rules for targets named basic-tutorial-1

# Build rule for target.
basic-tutorial-1: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 basic-tutorial-1
.PHONY : basic-tutorial-1

# fast build rule for target.
basic-tutorial-1/fast:
	$(MAKE) -f src/CMakeFiles/basic-tutorial-1.dir/build.make src/CMakeFiles/basic-tutorial-1.dir/build
.PHONY : basic-tutorial-1/fast

#=============================================================================
# Target rules for targets named basic-tutorial-4

# Build rule for target.
basic-tutorial-4: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 basic-tutorial-4
.PHONY : basic-tutorial-4

# fast build rule for target.
basic-tutorial-4/fast:
	$(MAKE) -f src/CMakeFiles/basic-tutorial-4.dir/build.make src/CMakeFiles/basic-tutorial-4.dir/build
.PHONY : basic-tutorial-4/fast

#=============================================================================
# Target rules for targets named basic-tutorial-6

# Build rule for target.
basic-tutorial-6: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 basic-tutorial-6
.PHONY : basic-tutorial-6

# fast build rule for target.
basic-tutorial-6/fast:
	$(MAKE) -f src/CMakeFiles/basic-tutorial-6.dir/build.make src/CMakeFiles/basic-tutorial-6.dir/build
.PHONY : basic-tutorial-6/fast

#=============================================================================
# Target rules for targets named basic-tutorial-7

# Build rule for target.
basic-tutorial-7: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 basic-tutorial-7
.PHONY : basic-tutorial-7

# fast build rule for target.
basic-tutorial-7/fast:
	$(MAKE) -f src/CMakeFiles/basic-tutorial-7.dir/build.make src/CMakeFiles/basic-tutorial-7.dir/build
.PHONY : basic-tutorial-7/fast

#=============================================================================
# Target rules for targets named basic-tutorial-2

# Build rule for target.
basic-tutorial-2: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 basic-tutorial-2
.PHONY : basic-tutorial-2

# fast build rule for target.
basic-tutorial-2/fast:
	$(MAKE) -f src/CMakeFiles/basic-tutorial-2.dir/build.make src/CMakeFiles/basic-tutorial-2.dir/build
.PHONY : basic-tutorial-2/fast

#=============================================================================
# Target rules for targets named basic-tutorial-8

# Build rule for target.
basic-tutorial-8: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 basic-tutorial-8
.PHONY : basic-tutorial-8

# fast build rule for target.
basic-tutorial-8/fast:
	$(MAKE) -f src/CMakeFiles/basic-tutorial-8.dir/build.make src/CMakeFiles/basic-tutorial-8.dir/build
.PHONY : basic-tutorial-8/fast

#=============================================================================
# Target rules for targets named basic-tutorial-9

# Build rule for target.
basic-tutorial-9: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 basic-tutorial-9
.PHONY : basic-tutorial-9

# fast build rule for target.
basic-tutorial-9/fast:
	$(MAKE) -f src/CMakeFiles/basic-tutorial-9.dir/build.make src/CMakeFiles/basic-tutorial-9.dir/build
.PHONY : basic-tutorial-9/fast

#=============================================================================
# Target rules for targets named example01

# Build rule for target.
example01: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 example01
.PHONY : example01

# fast build rule for target.
example01/fast:
	$(MAKE) -f src/CMakeFiles/example01.dir/build.make src/CMakeFiles/example01.dir/build
.PHONY : example01/fast

#=============================================================================
# Target rules for targets named example02

# Build rule for target.
example02: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 example02
.PHONY : example02

# fast build rule for target.
example02/fast:
	$(MAKE) -f src/CMakeFiles/example02.dir/build.make src/CMakeFiles/example02.dir/build
.PHONY : example02/fast

#=============================================================================
# Target rules for targets named example0301

# Build rule for target.
example0301: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 example0301
.PHONY : example0301

# fast build rule for target.
example0301/fast:
	$(MAKE) -f src/CMakeFiles/example0301.dir/build.make src/CMakeFiles/example0301.dir/build
.PHONY : example0301/fast

#=============================================================================
# Target rules for targets named basic-tutorial-5

# Build rule for target.
basic-tutorial-5: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 basic-tutorial-5
.PHONY : basic-tutorial-5

# fast build rule for target.
basic-tutorial-5/fast:
	$(MAKE) -f src/CMakeFiles/basic-tutorial-5.dir/build.make src/CMakeFiles/basic-tutorial-5.dir/build
.PHONY : basic-tutorial-5/fast

#=============================================================================
# Target rules for targets named example0302

# Build rule for target.
example0302: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 example0302
.PHONY : example0302

# fast build rule for target.
example0302/fast:
	$(MAKE) -f src/CMakeFiles/example0302.dir/build.make src/CMakeFiles/example0302.dir/build
.PHONY : example0302/fast

#=============================================================================
# Target rules for targets named example04

# Build rule for target.
example04: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 example04
.PHONY : example04

# fast build rule for target.
example04/fast:
	$(MAKE) -f src/CMakeFiles/example04.dir/build.make src/CMakeFiles/example04.dir/build
.PHONY : example04/fast

#=============================================================================
# Target rules for targets named example05

# Build rule for target.
example05: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 example05
.PHONY : example05

# fast build rule for target.
example05/fast:
	$(MAKE) -f src/CMakeFiles/example05.dir/build.make src/CMakeFiles/example05.dir/build
.PHONY : example05/fast

#=============================================================================
# Target rules for targets named first-application

# Build rule for target.
first-application: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 first-application
.PHONY : first-application

# fast build rule for target.
first-application/fast:
	$(MAKE) -f src/CMakeFiles/first-application.dir/build.make src/CMakeFiles/first-application.dir/build
.PHONY : first-application/fast

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... gst-vr-plugin-player"
	@echo "... basic-tutorial-3"
	@echo "... basic-tutorial-1"
	@echo "... basic-tutorial-4"
	@echo "... basic-tutorial-6"
	@echo "... basic-tutorial-7"
	@echo "... basic-tutorial-2"
	@echo "... basic-tutorial-8"
	@echo "... basic-tutorial-9"
	@echo "... example01"
	@echo "... example02"
	@echo "... example0301"
	@echo "... basic-tutorial-5"
	@echo "... example0302"
	@echo "... example04"
	@echo "... example05"
	@echo "... first-application"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

