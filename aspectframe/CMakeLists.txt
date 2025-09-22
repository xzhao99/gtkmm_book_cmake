project(AspectFrame)

# project src
FILE(GLOB MY_SRC 
    "${CMAKE_CURRENT_SOURCE_DIR}/*.cc"
    "${CMAKE_CURRENT_SOURCE_DIR}/*.h")
    
include(AddGtkmmApp)
AddGtkmmApp(${PROJECT_NAME} "${MY_SRC}")

include(ClangTools)
AddClangFormat(${PROJECT_NAME} "${CMAKE_CURRENT_SOURCE_DIR}")

message(STATUS "The end of building the app: ${PROJECT_NAME}\n")
