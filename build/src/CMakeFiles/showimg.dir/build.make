# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/yaoguang/Dev/CppDev/OpenCV_Basics

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yaoguang/Dev/CppDev/OpenCV_Basics/build

# Include any dependencies generated for this target.
include src/CMakeFiles/showimg.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/showimg.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/showimg.dir/flags.make

src/CMakeFiles/showimg.dir/showimg.cpp.o: src/CMakeFiles/showimg.dir/flags.make
src/CMakeFiles/showimg.dir/showimg.cpp.o: ../src/showimg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yaoguang/Dev/CppDev/OpenCV_Basics/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/showimg.dir/showimg.cpp.o"
	cd /home/yaoguang/Dev/CppDev/OpenCV_Basics/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/showimg.dir/showimg.cpp.o -c /home/yaoguang/Dev/CppDev/OpenCV_Basics/src/showimg.cpp

src/CMakeFiles/showimg.dir/showimg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/showimg.dir/showimg.cpp.i"
	cd /home/yaoguang/Dev/CppDev/OpenCV_Basics/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yaoguang/Dev/CppDev/OpenCV_Basics/src/showimg.cpp > CMakeFiles/showimg.dir/showimg.cpp.i

src/CMakeFiles/showimg.dir/showimg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/showimg.dir/showimg.cpp.s"
	cd /home/yaoguang/Dev/CppDev/OpenCV_Basics/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yaoguang/Dev/CppDev/OpenCV_Basics/src/showimg.cpp -o CMakeFiles/showimg.dir/showimg.cpp.s

# Object files for target showimg
showimg_OBJECTS = \
"CMakeFiles/showimg.dir/showimg.cpp.o"

# External object files for target showimg
showimg_EXTERNAL_OBJECTS =

src/libshowimg.a: src/CMakeFiles/showimg.dir/showimg.cpp.o
src/libshowimg.a: src/CMakeFiles/showimg.dir/build.make
src/libshowimg.a: src/CMakeFiles/showimg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yaoguang/Dev/CppDev/OpenCV_Basics/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libshowimg.a"
	cd /home/yaoguang/Dev/CppDev/OpenCV_Basics/build/src && $(CMAKE_COMMAND) -P CMakeFiles/showimg.dir/cmake_clean_target.cmake
	cd /home/yaoguang/Dev/CppDev/OpenCV_Basics/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/showimg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/showimg.dir/build: src/libshowimg.a

.PHONY : src/CMakeFiles/showimg.dir/build

src/CMakeFiles/showimg.dir/clean:
	cd /home/yaoguang/Dev/CppDev/OpenCV_Basics/build/src && $(CMAKE_COMMAND) -P CMakeFiles/showimg.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/showimg.dir/clean

src/CMakeFiles/showimg.dir/depend:
	cd /home/yaoguang/Dev/CppDev/OpenCV_Basics/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yaoguang/Dev/CppDev/OpenCV_Basics /home/yaoguang/Dev/CppDev/OpenCV_Basics/src /home/yaoguang/Dev/CppDev/OpenCV_Basics/build /home/yaoguang/Dev/CppDev/OpenCV_Basics/build/src /home/yaoguang/Dev/CppDev/OpenCV_Basics/build/src/CMakeFiles/showimg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/showimg.dir/depend
