PROJECT(orc_module)
cmake_minimum_required(VERSION 2.6)

SET (CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/.orogen/config")
INCLUDE(orc_moduleBase)

add_definitions(-Wall)
add_definitions(-DBASE_LOG_NAMESPACE=${PROJECT_NAME})
add_definitions(-DBASE_LOG_DEBUG)
