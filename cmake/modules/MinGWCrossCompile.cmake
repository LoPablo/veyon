# this one is important
SET(CMAKE_SYSTEM_NAME Windows)
#this one not so much
SET(CMAKE_SYSTEM_VERSION 1)

SET(MINGW_PREFIX /usr/${MINGW_TARGET}/)

# where is the target environment 
SET(CMAKE_FIND_ROOT_PATH	${MINGW_PREFIX})
SET(CMAKE_INSTALL_PREFIX	${MINGW_PREFIX})

SET(MINGW_TOOL_PREFIX		/usr/bin/${MINGW_TARGET}-)

# specify the cross compiler
SET(CMAKE_RC_COMPILER		${MINGW_TOOL_PREFIX}gcc)
SET(CMAKE_C_COMPILER		${MINGW_TOOL_PREFIX}gcc)
SET(CMAKE_CXX_COMPILER		${MINGW_TOOL_PREFIX}g++)

# specify location of some tools
SET(STRIP					${MINGW_TOOL_PREFIX}strip)
SET(WINDRES					${MINGW_TOOL_PREFIX}windres)
SET(PKG_CONFIG_EXECUTABLE	${MINGW_TOOL_PREFIX}pkg-config)

SET(QT_BINARY_DIR			${MINGW_PREFIX}/bin)
SET(QT_QMAKE_EXECUTABLE		${QT_BINARY_DIR}/qmake)

# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

SET(CMAKE_INCLUDE_PATH ${MINGW_PREFIX}/include)

INCLUDE_DIRECTORIES(${MINGW_PREFIX}/include)
LINK_DIRECTORIES(${MINGW_PREFIX}/lib ${MINGW_PREFIX}/bin)

