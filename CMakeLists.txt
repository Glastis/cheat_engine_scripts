cmake_minimum_required(VERSION 3.8)
project(lua)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
        common/file.lua
        common/utilities.lua
        pulsar.lua
        )

add_executable(lua ${SOURCE_FILES})