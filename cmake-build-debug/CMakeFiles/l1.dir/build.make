# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.3.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.3.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\labs\l1\l1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\labs\l1\l1\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\l1.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\l1.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\l1.dir\flags.make

CMakeFiles\l1.dir\Algorithm\algorithm.cpp.obj: CMakeFiles\l1.dir\flags.make
CMakeFiles\l1.dir\Algorithm\algorithm.cpp.obj: ..\Algorithm\algorithm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\labs\l1\l1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/l1.dir/Algorithm/algorithm.cpp.obj"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\l1.dir\Algorithm\algorithm.cpp.obj /FdCMakeFiles\l1.dir\ /FS -c D:\labs\l1\l1\Algorithm\algorithm.cpp
<<

CMakeFiles\l1.dir\Algorithm\algorithm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/l1.dir/Algorithm/algorithm.cpp.i"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\l1.dir\Algorithm\algorithm.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\labs\l1\l1\Algorithm\algorithm.cpp
<<

CMakeFiles\l1.dir\Algorithm\algorithm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/l1.dir/Algorithm/algorithm.cpp.s"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\l1.dir\Algorithm\algorithm.cpp.s /c D:\labs\l1\l1\Algorithm\algorithm.cpp
<<

CMakeFiles\l1.dir\main.cpp.obj: CMakeFiles\l1.dir\flags.make
CMakeFiles\l1.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\labs\l1\l1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/l1.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\l1.dir\main.cpp.obj /FdCMakeFiles\l1.dir\ /FS -c D:\labs\l1\l1\main.cpp
<<

CMakeFiles\l1.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/l1.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\l1.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\labs\l1\l1\main.cpp
<<

CMakeFiles\l1.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/l1.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\l1.dir\main.cpp.s /c D:\labs\l1\l1\main.cpp
<<

CMakeFiles\l1.dir\ConsoleUI\Menu.cpp.obj: CMakeFiles\l1.dir\flags.make
CMakeFiles\l1.dir\ConsoleUI\Menu.cpp.obj: ..\ConsoleUI\Menu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\labs\l1\l1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/l1.dir/ConsoleUI/Menu.cpp.obj"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\l1.dir\ConsoleUI\Menu.cpp.obj /FdCMakeFiles\l1.dir\ /FS -c D:\labs\l1\l1\ConsoleUI\Menu.cpp
<<

CMakeFiles\l1.dir\ConsoleUI\Menu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/l1.dir/ConsoleUI/Menu.cpp.i"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\l1.dir\ConsoleUI\Menu.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\labs\l1\l1\ConsoleUI\Menu.cpp
<<

CMakeFiles\l1.dir\ConsoleUI\Menu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/l1.dir/ConsoleUI/Menu.cpp.s"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\l1.dir\ConsoleUI\Menu.cpp.s /c D:\labs\l1\l1\ConsoleUI\Menu.cpp
<<

CMakeFiles\l1.dir\ConsoleUI\Navigation.cpp.obj: CMakeFiles\l1.dir\flags.make
CMakeFiles\l1.dir\ConsoleUI\Navigation.cpp.obj: ..\ConsoleUI\Navigation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\labs\l1\l1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/l1.dir/ConsoleUI/Navigation.cpp.obj"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\l1.dir\ConsoleUI\Navigation.cpp.obj /FdCMakeFiles\l1.dir\ /FS -c D:\labs\l1\l1\ConsoleUI\Navigation.cpp
<<

CMakeFiles\l1.dir\ConsoleUI\Navigation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/l1.dir/ConsoleUI/Navigation.cpp.i"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\l1.dir\ConsoleUI\Navigation.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\labs\l1\l1\ConsoleUI\Navigation.cpp
<<

CMakeFiles\l1.dir\ConsoleUI\Navigation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/l1.dir/ConsoleUI/Navigation.cpp.s"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\l1.dir\ConsoleUI\Navigation.cpp.s /c D:\labs\l1\l1\ConsoleUI\Navigation.cpp
<<

CMakeFiles\l1.dir\ConsoleUI\Options.cpp.obj: CMakeFiles\l1.dir\flags.make
CMakeFiles\l1.dir\ConsoleUI\Options.cpp.obj: ..\ConsoleUI\Options.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\labs\l1\l1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/l1.dir/ConsoleUI/Options.cpp.obj"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\l1.dir\ConsoleUI\Options.cpp.obj /FdCMakeFiles\l1.dir\ /FS -c D:\labs\l1\l1\ConsoleUI\Options.cpp
<<

CMakeFiles\l1.dir\ConsoleUI\Options.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/l1.dir/ConsoleUI/Options.cpp.i"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\l1.dir\ConsoleUI\Options.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\labs\l1\l1\ConsoleUI\Options.cpp
<<

CMakeFiles\l1.dir\ConsoleUI\Options.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/l1.dir/ConsoleUI/Options.cpp.s"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\l1.dir\ConsoleUI\Options.cpp.s /c D:\labs\l1\l1\ConsoleUI\Options.cpp
<<

# Object files for target l1
l1_OBJECTS = \
"CMakeFiles\l1.dir\Algorithm\algorithm.cpp.obj" \
"CMakeFiles\l1.dir\main.cpp.obj" \
"CMakeFiles\l1.dir\ConsoleUI\Menu.cpp.obj" \
"CMakeFiles\l1.dir\ConsoleUI\Navigation.cpp.obj" \
"CMakeFiles\l1.dir\ConsoleUI\Options.cpp.obj"

# External object files for target l1
l1_EXTERNAL_OBJECTS =

l1.exe: CMakeFiles\l1.dir\Algorithm\algorithm.cpp.obj
l1.exe: CMakeFiles\l1.dir\main.cpp.obj
l1.exe: CMakeFiles\l1.dir\ConsoleUI\Menu.cpp.obj
l1.exe: CMakeFiles\l1.dir\ConsoleUI\Navigation.cpp.obj
l1.exe: CMakeFiles\l1.dir\ConsoleUI\Options.cpp.obj
l1.exe: CMakeFiles\l1.dir\build.make
l1.exe: CMakeFiles\l1.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\labs\l1\l1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable l1.exe"
	"C:\Program Files\JetBrains\CLion 2020.3.3\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\l1.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\mt.exe --manifests  -- C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\l1.dir\objects1.rsp @<<
 /out:l1.exe /implib:l1.lib /pdb:D:\labs\l1\l1\cmake-build-debug\l1.pdb /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\l1.dir\build: l1.exe

.PHONY : CMakeFiles\l1.dir\build

CMakeFiles\l1.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\l1.dir\cmake_clean.cmake
.PHONY : CMakeFiles\l1.dir\clean

CMakeFiles\l1.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\labs\l1\l1 D:\labs\l1\l1 D:\labs\l1\l1\cmake-build-debug D:\labs\l1\l1\cmake-build-debug D:\labs\l1\l1\cmake-build-debug\CMakeFiles\l1.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\l1.dir\depend

