cmake_minimum_required(VERSION 2.8.3)
project(unitree_legged_real)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
    roscpp
    geometry_msgs
    unitree_legged_msgs
)

catkin_package()

include_directories(
    include
    ${Boost_INCLUDE_DIR}
    ${catkin_INCLUDE_DIRS}
)

# 以下相比于github上的CMakeLists.txt文件做了修改，将一些需要在bashrc中定义的变量直接在这里定义

set(UNITREE_SDK_VERSION "3_2") # 直接在这里定义SDK版本，不要在bashrc中定义
set(UNITREE_PLATFORM "amd64") # 直接在这里定义平台，不要在bashrc中定义
set(UNITREE_LEGGED_SDK_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../unitree_legged_sdk) # 直接在这里定义SDK路径，不要在bashrc中定义

set(CMAKE_CXX_FLAGS "-O3")

if( ${UNITREE_SDK_VERSION} STREQUAL "3_1")
    include_directories($ENV{ALIENGO_SDK_PATH}/include)
    link_directories($ENV{ALIENGO_SDK_PATH}/lib)
    string(CONCAT LEGGED_SDK_NAME libaliengo_comm.so)
    set(EXTRA_LIBS ${LEGGED_SDK_NAME} lcm)

    add_definitions(-DSDK3_1)

    add_executable(lcm_server_3_1 $ENV{ALIENGO_SDK_PATH}/examples/lcm_server.cpp)
    target_link_libraries(lcm_server_3_1 ${EXTRA_LIBS} ${catkin_LIBRARIES})
    add_dependencies(lcm_server_3_1 ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

elseif( ${UNITREE_SDK_VERSION} STREQUAL "3_2")
    include_directories(${UNITREE_LEGGED_SDK_PATH}/include)
    link_directories(${UNITREE_LEGGED_SDK_PATH}/lib)
    string(CONCAT LEGGED_SDK_NAME libunitree_legged_sdk_${UNITREE_PLATFORM}.so)
    set(EXTRA_LIBS ${LEGGED_SDK_NAME} lcm)

    add_definitions(-DSDK3_2)

    add_executable(lcm_server_3_2 ${UNITREE_LEGGED_SDK_PATH}/examples/lcm_server.cpp)
    target_link_libraries(lcm_server_3_2 ${EXTRA_LIBS} ${catkin_LIBRARIES})
    add_dependencies(lcm_server_3_2 ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
endif()

add_executable(position_lcm src/exe/position_mode.cpp)
target_link_libraries(position_lcm ${EXTRA_LIBS} ${catkin_LIBRARIES})
add_dependencies(position_lcm ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

add_executable(velocity_lcm src/exe/velocity_mode.cpp)
target_link_libraries(velocity_lcm ${EXTRA_LIBS} ${catkin_LIBRARIES})
add_dependencies(velocity_lcm ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

add_executable(torque_lcm src/exe/torque_mode.cpp)
target_link_libraries(torque_lcm ${EXTRA_LIBS} ${catkin_LIBRARIES})
add_dependencies(torque_lcm ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

add_executable(walk_lcm src/exe/walk_mode.cpp)
target_link_libraries(walk_lcm ${EXTRA_LIBS} ${catkin_LIBRARIES})
add_dependencies(walk_lcm ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})