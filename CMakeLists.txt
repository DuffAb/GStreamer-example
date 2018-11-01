# CMake 最低版本号要求
cmake_minimum_required(VERSION 2.4.0 FATAL_ERROR)

################### Variables. ####################
# Change if you want modify path or other values. #
###################################################

set(PROJECT_NAME gstreamer-example)
set(VERSION_MAJOR 0)
set(VERSION_MINOR 1)

# Output Variables
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/.build/archive")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/.build/lib")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/.build/bin")
set(CMAKE_BUILD_TYPE "Release")

# Project setting 项目信息
project(${PROJECT_NAME} C CXX)

# extend cmake setting
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_SOURCE_DIR}/cmake)

include(generate_product_version)
generate_product_version(
    VERSION_FILES_OUTPUT
    NAME "NULL"
    # ICON ${PATH_TO_APPLICATION_ICON}
    VERSION_MAJOR ${VERSION_MAJOR}
    VERSION_MINOR ${VERSION_MINOR}
    VERSION_PATH ${BUILD_COUNTER}
    VERSION_REVISION ${BUILD_REVISION}
    ORIGINAL_FILENAME ${PROJECT_NAME}
)

# add_subdirectory(3rd_party)
add_subdirectory(src)

# add_dependencies(src 3rd_party)

message(STATUS "CMAKE_ARCHIVE_OUTPUT_DIRECTORY: " ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})
message(STATUS "CMAKE_LIBRARY_OUTPUT_DIRECTORY: " ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
message(STATUS "CMAKE_RUNTIME_OUTPUT_DIRECTORY: " ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})