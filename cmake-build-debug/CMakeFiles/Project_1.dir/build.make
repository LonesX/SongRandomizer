# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\Desktop\COMP10050_SoftwareEngineering\Project 1"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\Desktop\COMP10050_SoftwareEngineering\Project 1\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Project_1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Project_1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Project_1.dir/flags.make

CMakeFiles/Project_1.dir/src/main.c.obj: CMakeFiles/Project_1.dir/flags.make
CMakeFiles/Project_1.dir/src/main.c.obj: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Desktop\COMP10050_SoftwareEngineering\Project 1\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Project_1.dir/src/main.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Project_1.dir\src\main.c.obj   -c "D:\Desktop\COMP10050_SoftwareEngineering\Project 1\src\main.c"

CMakeFiles/Project_1.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Project_1.dir/src/main.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Desktop\COMP10050_SoftwareEngineering\Project 1\src\main.c" > CMakeFiles\Project_1.dir\src\main.c.i

CMakeFiles/Project_1.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Project_1.dir/src/main.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Desktop\COMP10050_SoftwareEngineering\Project 1\src\main.c" -o CMakeFiles\Project_1.dir\src\main.c.s

CMakeFiles/Project_1.dir/src/FileIO.c.obj: CMakeFiles/Project_1.dir/flags.make
CMakeFiles/Project_1.dir/src/FileIO.c.obj: ../src/FileIO.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Desktop\COMP10050_SoftwareEngineering\Project 1\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Project_1.dir/src/FileIO.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Project_1.dir\src\FileIO.c.obj   -c "D:\Desktop\COMP10050_SoftwareEngineering\Project 1\src\FileIO.c"

CMakeFiles/Project_1.dir/src/FileIO.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Project_1.dir/src/FileIO.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Desktop\COMP10050_SoftwareEngineering\Project 1\src\FileIO.c" > CMakeFiles\Project_1.dir\src\FileIO.c.i

CMakeFiles/Project_1.dir/src/FileIO.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Project_1.dir/src/FileIO.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Desktop\COMP10050_SoftwareEngineering\Project 1\src\FileIO.c" -o CMakeFiles\Project_1.dir\src\FileIO.c.s

CMakeFiles/Project_1.dir/src/sort.c.obj: CMakeFiles/Project_1.dir/flags.make
CMakeFiles/Project_1.dir/src/sort.c.obj: ../src/sort.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Desktop\COMP10050_SoftwareEngineering\Project 1\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Project_1.dir/src/sort.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Project_1.dir\src\sort.c.obj   -c "D:\Desktop\COMP10050_SoftwareEngineering\Project 1\src\sort.c"

CMakeFiles/Project_1.dir/src/sort.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Project_1.dir/src/sort.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Desktop\COMP10050_SoftwareEngineering\Project 1\src\sort.c" > CMakeFiles\Project_1.dir\src\sort.c.i

CMakeFiles/Project_1.dir/src/sort.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Project_1.dir/src/sort.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Desktop\COMP10050_SoftwareEngineering\Project 1\src\sort.c" -o CMakeFiles\Project_1.dir\src\sort.c.s

CMakeFiles/Project_1.dir/src/randomiser.c.obj: CMakeFiles/Project_1.dir/flags.make
CMakeFiles/Project_1.dir/src/randomiser.c.obj: ../src/randomiser.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Desktop\COMP10050_SoftwareEngineering\Project 1\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/Project_1.dir/src/randomiser.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Project_1.dir\src\randomiser.c.obj   -c "D:\Desktop\COMP10050_SoftwareEngineering\Project 1\src\randomiser.c"

CMakeFiles/Project_1.dir/src/randomiser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Project_1.dir/src/randomiser.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Desktop\COMP10050_SoftwareEngineering\Project 1\src\randomiser.c" > CMakeFiles\Project_1.dir\src\randomiser.c.i

CMakeFiles/Project_1.dir/src/randomiser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Project_1.dir/src/randomiser.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Desktop\COMP10050_SoftwareEngineering\Project 1\src\randomiser.c" -o CMakeFiles\Project_1.dir\src\randomiser.c.s

# Object files for target Project_1
Project_1_OBJECTS = \
"CMakeFiles/Project_1.dir/src/main.c.obj" \
"CMakeFiles/Project_1.dir/src/FileIO.c.obj" \
"CMakeFiles/Project_1.dir/src/sort.c.obj" \
"CMakeFiles/Project_1.dir/src/randomiser.c.obj"

# External object files for target Project_1
Project_1_EXTERNAL_OBJECTS =

Project_1.exe: CMakeFiles/Project_1.dir/src/main.c.obj
Project_1.exe: CMakeFiles/Project_1.dir/src/FileIO.c.obj
Project_1.exe: CMakeFiles/Project_1.dir/src/sort.c.obj
Project_1.exe: CMakeFiles/Project_1.dir/src/randomiser.c.obj
Project_1.exe: CMakeFiles/Project_1.dir/build.make
Project_1.exe: CMakeFiles/Project_1.dir/linklibs.rsp
Project_1.exe: CMakeFiles/Project_1.dir/objects1.rsp
Project_1.exe: CMakeFiles/Project_1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\Desktop\COMP10050_SoftwareEngineering\Project 1\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable Project_1.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Project_1.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Project_1.dir/build: Project_1.exe

.PHONY : CMakeFiles/Project_1.dir/build

CMakeFiles/Project_1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Project_1.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Project_1.dir/clean

CMakeFiles/Project_1.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\Desktop\COMP10050_SoftwareEngineering\Project 1" "D:\Desktop\COMP10050_SoftwareEngineering\Project 1" "D:\Desktop\COMP10050_SoftwareEngineering\Project 1\cmake-build-debug" "D:\Desktop\COMP10050_SoftwareEngineering\Project 1\cmake-build-debug" "D:\Desktop\COMP10050_SoftwareEngineering\Project 1\cmake-build-debug\CMakeFiles\Project_1.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Project_1.dir/depend
