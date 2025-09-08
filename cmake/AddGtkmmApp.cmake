#
function(AddGtkmmApp target)

  message(STATUS "\n--------------------------------------------------------------------------------")
  message(STATUS "Building the app: ${target}")
    
  add_executable(${target} ${ARGN})

  target_include_directories(${target} PRIVATE ${GTKMM_INCLUDE_DIRS})
  target_link_directories(${target} PRIVATE ${GTKMM_LIBRARY_DIRS})
  target_link_libraries(${target} PRIVATE ${GTKMM_LIBRARIES})

  # Optional: strict warnings
  target_compile_options(${target} PRIVATE ${GTKMM_CFLAGS_OTHER})

  message(STATUS "The end of building the app: ${target}\n")

endfunction()