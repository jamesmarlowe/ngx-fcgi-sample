cmake_minimum_required (VERSION 2.8)
project(fcgiexample)

add_definitions("-Wno-deprecated-declarations")

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/modules/")

#enable c++ 11
SET(CMAKE_CXX_FLAGS "-std=c++11 -O3 ${CMAKE_CXX_FLAGS}")

include_directories(${CMAKE_CURRENT_BINARY_DIR})
include_directories(${CMAKE_SOURCE_DIR})

set(fcgi_example_sources
    fcgi-example.cpp
)

add_executable(fcgi_example ${fcgi_example_sources})

target_link_libraries(fcgi_example fcgi)
