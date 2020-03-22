cmake_minimum_required (VERSION 2.6)
project (Test)

set(
    NEW_MODULE_PATHS
    "${CMAKE_CURRENT_SOURCE_DIR}/packages/package1/package1_export"
)

set(
    CMAKE_MODULE_PATH
    ${CMAKE_MODULE_PATH} 
    ${NEW_MODULE_PATHS}
)

set(
    CMAKE_PREFIX_PATH 
    ${CMAKE_PREFIX_PATH} 
    ${NEW_MODULE_PATHS}
)


message(STATUS "CMake module path: ${CMAKE_MODULE_PATH}")
message(STATUS "Cmake prefix path: ${CMAKE_PREFIX_PATH}")


find_package(package1 REQUIRED)

# Package2 added as subdirectory to highlight the difference 
# between find_package and add_subdirectory

add_subdirectory(packages/package2)

add_executable(Test main.c)
target_link_libraries(Test PACKAGE1 PACKAGE2)
