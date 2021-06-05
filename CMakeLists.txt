cmake_minimum_required(VERSION 3.12)
project(l1)

set(CMAKE_CXX_STANDARD 17)

include_directories(.)

add_executable(l1
        Algorithm/algorithm.cpp
        Algorithm/algorithm.h
        Options/allOptions.h
        Test/cases.h
        
        
        main.cpp
        Options/Main/mainCBs.h
        Options/Main/mainItems.h
        Options/Main/mainOptions.h
        ConsoleUI/Menu.cpp
        ConsoleUI/Menu.h
        Options/menuSectionCodes.h
        ConsoleUI/Navigation.cpp
        ConsoleUI/Navigation.h
        ConsoleUI/Options.cpp
        ConsoleUI/Options.h
        Options/Settings/settingsCBs.h
        Options/Settings/settingsItems.h
        Options/Settings/settingsOptions.h
        ConsoleUI/State.h
        Test/Test.h
        Geometry/Triangle.h
        Geometry/Vector.h "Util/Input.h" "Util/UserFile.h" "Util/ConsoleState.h")
