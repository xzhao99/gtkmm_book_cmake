cmake_minimum_required(VERSION 3.20.0)
project(gtkmm_book)

# add CMAKE_MODULE_PATH
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")
message(STATUS "CMAKE_MODULE_PATH: ${CMAKE_MODULE_PATH}")


# set c++ std
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
set(CMAKE_CXX_EXTENSIONS OFF)

find_package(PkgConfig REQUIRED)
pkg_check_modules(GTKMM REQUIRED gtkmm-4.0>=4.10)

# print the GTKmm variables
message(STATUS "GTKMM_INCLUDE_DIRS: ${GTKMM_INCLUDE_DIRS}")
message(STATUS "GTKMM_LIBRARY_DIRS: ${GTKMM_LIBRARY_DIRS}")
message(STATUS "GTKMM_LIBRARIES: ${GTKMM_LIBRARIES}")


# CMake is gonna read the 'CMakeLists.txt' file located under 'example':
add_subdirectory(entry)
add_subdirectory(spinbutton)
add_subdirectory(scrolledwindow)
add_subdirectory(aspectframe)

# format the source code
#include(ClangTools) # move this to each project!

# diagnostics with color
if("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
    add_compile_options(-fdiagnostics-color=always)
elseif("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
    add_compile_options(-fcolor-diagnostics)
elseif("${CMAKE_CXX_COMPILER_ID}" STREQUAL "MSVC")
    add_compile_options("/diagnostics:color")
endif()