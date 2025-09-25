project(Menu_main_menu)

# project name
message(STATUS "\n--------------------------------------------------------------------------------")
message(STATUS "Building the app: ${PROJECT_NAME}")

FILE(GLOB MY_SRC 
  "${CMAKE_CURRENT_SOURCE_DIR}/*.cc")
FILE(GLOB MY_HEADERS 
	"${CMAKE_CURRENT_SOURCE_DIR}/*.h")

add_executable(${PROJECT_NAME} ${MY_SRC})

target_include_directories(${PROJECT_NAME} PUBLIC ${GTKMM_INCLUDE_DIRS})
target_link_directories(${PROJECT_NAME} PUBLIC ${GTKMM_LIBRARY_DIRS})
target_link_libraries(${PROJECT_NAME} PUBLIC ${GTKMM_LIBRARIES})

include(ClangTools)
AddClangFormat(${PROJECT_NAME} "${CMAKE_CURRENT_SOURCE_DIR}")

message(STATUS "The end of building the app: ${PROJECT_NAME}\n")
