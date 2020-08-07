cmake_minimum_required(VERSION 2.6)
project(GAB)
set(CMAKE_CXX_STANDARD 14)

include_directories("${PROJECT_BINARY_DIR}")

include_directories("${PROJECT_SOURCE_DIR}/section1")

add_subdirectory(section1)

set(EXTRA_LIBS ${EXTRA_LIBS} section1)
