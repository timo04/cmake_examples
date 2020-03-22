cmake_minimum_required(VERSION 3.10)
SET(
	PACKAGE_FOLDER
	"${CMAKE_CURRENT_SOURCE_DIR}/package1_export"
)
set(CMAKE_INSTALL_PREFIX ${PACKAGE_FOLDER})
message(STATUS "Installing in ${PACKAGE_FOLDER}")
message(STATUS "Cmake install prefix: ${CMAKE_INSTALL_PREFIX}")
project(PACKAGE1)


add_library(PACKAGE1 a.c)


set(
	HEADERS_PATH
	"${PACKAGE1_SOURCE_DIR}/headers"
)

SET(
	HEADERS
	"${HEADERS_PATH}/header1.h"
)

target_include_directories(PACKAGE1
	PRIVATE
		$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/headers>
		$<INSTALL_INTERFACE:${PACKAGE_FOLDER}/headers>
	)


install(TARGETS PACKAGE1 EXPORT PACKAGE1 DESTINATION "${PACKAGE_FOLDER}/lib")
install(EXPORT PACKAGE1 DESTINATION "${PACKAGE_FOLDER}/lib")

install(FILES ${HEADERS} DESTINATION "${PACKAGE_FOLDER}/includes")
install(FILES package1Config.cmake DESTINATION "${PACKAGE_FOLDER}")