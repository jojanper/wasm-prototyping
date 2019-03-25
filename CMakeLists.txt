cmake_minimum_required(VERSION 3.5)
project(webassembly)

set(LIBWASM library)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src)

set(CMAKE_C_FLAGS_RELEASE "-Os")
SET(CMAKE_EXECUTABLE_SUFFIX ".wasm")

set(HDRS src/hello.h)
set(SRCS src/hello.c)

add_executable(${LIBWASM} ${SRCS} ${HDRS})
set_target_properties(${LIBWASM} PROPERTIES
  ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib
  LIBRARY_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib
  RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/bin
)
