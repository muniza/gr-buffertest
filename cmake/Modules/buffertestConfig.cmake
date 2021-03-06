INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_BUFFERTEST buffertest)

FIND_PATH(
    BUFFERTEST_INCLUDE_DIRS
    NAMES buffertest/api.h
    HINTS $ENV{BUFFERTEST_DIR}/include
        ${PC_BUFFERTEST_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    BUFFERTEST_LIBRARIES
    NAMES gnuradio-buffertest
    HINTS $ENV{BUFFERTEST_DIR}/lib
        ${PC_BUFFERTEST_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(BUFFERTEST DEFAULT_MSG BUFFERTEST_LIBRARIES BUFFERTEST_INCLUDE_DIRS)
MARK_AS_ADVANCED(BUFFERTEST_LIBRARIES BUFFERTEST_INCLUDE_DIRS)

