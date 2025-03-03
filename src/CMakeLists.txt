if(NOT DEFINED MONTBLANC_LANG)
  message(FATAL_ERROR "Expecting variable to be set: MONTBLANC_LANG")
endif()

if( NOT
  (${MONTBLANC_LANG} STREQUAL ANSI_C)
)
  message(FATAL_ERROR "Valid values, one of: MONTBLANC_LANG=[ANSI_C]")
endif()

add_library(${CMAKE_PROJECT_NAME} STATIC
  montblanc.cpp montblanc.hpp
)

target_include_directories(${CMAKE_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_SOURCE_DIR}
)

add_subdirectory(${MONTBLANC_LANG})


