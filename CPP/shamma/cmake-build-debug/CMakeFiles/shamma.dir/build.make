# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.13

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "E:\Study Material\Graph\CPP\shamma"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "E:\Study Material\Graph\CPP\shamma\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/shamma.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/shamma.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/shamma.dir/flags.make

CMakeFiles/shamma.dir/main.cpp.obj: CMakeFiles/shamma.dir/flags.make
CMakeFiles/shamma.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="E:\Study Material\Graph\CPP\shamma\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/shamma.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\shamma.dir\main.cpp.obj -c "E:\Study Material\Graph\CPP\shamma\main.cpp"

CMakeFiles/shamma.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shamma.dir/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "E:\Study Material\Graph\CPP\shamma\main.cpp" > CMakeFiles\shamma.dir\main.cpp.i

CMakeFiles/shamma.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shamma.dir/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "E:\Study Material\Graph\CPP\shamma\main.cpp" -o CMakeFiles\shamma.dir\main.cpp.s

# Object files for target shamma
shamma_OBJECTS = \
"CMakeFiles/shamma.dir/main.cpp.obj"

# External object files for target shamma
shamma_EXTERNAL_OBJECTS =

shamma.exe: CMakeFiles/shamma.dir/main.cpp.obj
shamma.exe: CMakeFiles/shamma.dir/build.make
shamma.exe: CMakeFiles/shamma.dir/linklibs.rsp
shamma.exe: CMakeFiles/shamma.dir/objects1.rsp
shamma.exe: CMakeFiles/shamma.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="E:\Study Material\Graph\CPP\shamma\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable shamma.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\shamma.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/shamma.dir/build: shamma.exe

.PHONY : CMakeFiles/shamma.dir/build

CMakeFiles/shamma.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\shamma.dir\cmake_clean.cmake
.PHONY : CMakeFiles/shamma.dir/clean

CMakeFiles/shamma.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "E:\Study Material\Graph\CPP\shamma" "E:\Study Material\Graph\CPP\shamma" "E:\Study Material\Graph\CPP\shamma\cmake-build-debug" "E:\Study Material\Graph\CPP\shamma\cmake-build-debug" "E:\Study Material\Graph\CPP\shamma\cmake-build-debug\CMakeFiles\shamma.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/shamma.dir/depend

