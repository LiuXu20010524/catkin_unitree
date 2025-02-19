# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rl_l2gar: 2 messages, 0 services")

set(MSG_I_FLAGS "-Irl_l2gar:/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iunitree_legged_msgs:/home/liu_xu/liuxu_Documents/catkin_unitree/src/unitree_ros/unitree_ros_to_real/unitree_legged_msgs/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rl_l2gar_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/userValue_msg.msg" NAME_WE)
add_custom_target(_rl_l2gar_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rl_l2gar" "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/userValue_msg.msg" ""
)

get_filename_component(_filename "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/LowState_rl.msg" NAME_WE)
add_custom_target(_rl_l2gar_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rl_l2gar" "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/LowState_rl.msg" "rl_l2gar/userValue_msg:unitree_legged_msgs/IMU:unitree_legged_msgs/MotorState"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rl_l2gar
  "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/userValue_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rl_l2gar
)
_generate_msg_cpp(rl_l2gar
  "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/LowState_rl.msg"
  "${MSG_I_FLAGS}"
  "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/userValue_msg.msg;/home/liu_xu/liuxu_Documents/catkin_unitree/src/unitree_ros/unitree_ros_to_real/unitree_legged_msgs/msg/IMU.msg;/home/liu_xu/liuxu_Documents/catkin_unitree/src/unitree_ros/unitree_ros_to_real/unitree_legged_msgs/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rl_l2gar
)

### Generating Services

### Generating Module File
_generate_module_cpp(rl_l2gar
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rl_l2gar
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rl_l2gar_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rl_l2gar_generate_messages rl_l2gar_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/userValue_msg.msg" NAME_WE)
add_dependencies(rl_l2gar_generate_messages_cpp _rl_l2gar_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/LowState_rl.msg" NAME_WE)
add_dependencies(rl_l2gar_generate_messages_cpp _rl_l2gar_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rl_l2gar_gencpp)
add_dependencies(rl_l2gar_gencpp rl_l2gar_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rl_l2gar_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rl_l2gar
  "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/userValue_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rl_l2gar
)
_generate_msg_eus(rl_l2gar
  "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/LowState_rl.msg"
  "${MSG_I_FLAGS}"
  "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/userValue_msg.msg;/home/liu_xu/liuxu_Documents/catkin_unitree/src/unitree_ros/unitree_ros_to_real/unitree_legged_msgs/msg/IMU.msg;/home/liu_xu/liuxu_Documents/catkin_unitree/src/unitree_ros/unitree_ros_to_real/unitree_legged_msgs/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rl_l2gar
)

### Generating Services

### Generating Module File
_generate_module_eus(rl_l2gar
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rl_l2gar
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rl_l2gar_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rl_l2gar_generate_messages rl_l2gar_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/userValue_msg.msg" NAME_WE)
add_dependencies(rl_l2gar_generate_messages_eus _rl_l2gar_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/LowState_rl.msg" NAME_WE)
add_dependencies(rl_l2gar_generate_messages_eus _rl_l2gar_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rl_l2gar_geneus)
add_dependencies(rl_l2gar_geneus rl_l2gar_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rl_l2gar_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rl_l2gar
  "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/userValue_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rl_l2gar
)
_generate_msg_lisp(rl_l2gar
  "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/LowState_rl.msg"
  "${MSG_I_FLAGS}"
  "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/userValue_msg.msg;/home/liu_xu/liuxu_Documents/catkin_unitree/src/unitree_ros/unitree_ros_to_real/unitree_legged_msgs/msg/IMU.msg;/home/liu_xu/liuxu_Documents/catkin_unitree/src/unitree_ros/unitree_ros_to_real/unitree_legged_msgs/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rl_l2gar
)

### Generating Services

### Generating Module File
_generate_module_lisp(rl_l2gar
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rl_l2gar
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rl_l2gar_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rl_l2gar_generate_messages rl_l2gar_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/userValue_msg.msg" NAME_WE)
add_dependencies(rl_l2gar_generate_messages_lisp _rl_l2gar_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/LowState_rl.msg" NAME_WE)
add_dependencies(rl_l2gar_generate_messages_lisp _rl_l2gar_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rl_l2gar_genlisp)
add_dependencies(rl_l2gar_genlisp rl_l2gar_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rl_l2gar_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rl_l2gar
  "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/userValue_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rl_l2gar
)
_generate_msg_nodejs(rl_l2gar
  "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/LowState_rl.msg"
  "${MSG_I_FLAGS}"
  "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/userValue_msg.msg;/home/liu_xu/liuxu_Documents/catkin_unitree/src/unitree_ros/unitree_ros_to_real/unitree_legged_msgs/msg/IMU.msg;/home/liu_xu/liuxu_Documents/catkin_unitree/src/unitree_ros/unitree_ros_to_real/unitree_legged_msgs/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rl_l2gar
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rl_l2gar
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rl_l2gar
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rl_l2gar_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rl_l2gar_generate_messages rl_l2gar_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/userValue_msg.msg" NAME_WE)
add_dependencies(rl_l2gar_generate_messages_nodejs _rl_l2gar_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/LowState_rl.msg" NAME_WE)
add_dependencies(rl_l2gar_generate_messages_nodejs _rl_l2gar_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rl_l2gar_gennodejs)
add_dependencies(rl_l2gar_gennodejs rl_l2gar_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rl_l2gar_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rl_l2gar
  "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/userValue_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_l2gar
)
_generate_msg_py(rl_l2gar
  "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/LowState_rl.msg"
  "${MSG_I_FLAGS}"
  "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/userValue_msg.msg;/home/liu_xu/liuxu_Documents/catkin_unitree/src/unitree_ros/unitree_ros_to_real/unitree_legged_msgs/msg/IMU.msg;/home/liu_xu/liuxu_Documents/catkin_unitree/src/unitree_ros/unitree_ros_to_real/unitree_legged_msgs/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_l2gar
)

### Generating Services

### Generating Module File
_generate_module_py(rl_l2gar
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_l2gar
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rl_l2gar_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rl_l2gar_generate_messages rl_l2gar_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/userValue_msg.msg" NAME_WE)
add_dependencies(rl_l2gar_generate_messages_py _rl_l2gar_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/msg/LowState_rl.msg" NAME_WE)
add_dependencies(rl_l2gar_generate_messages_py _rl_l2gar_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rl_l2gar_genpy)
add_dependencies(rl_l2gar_genpy rl_l2gar_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rl_l2gar_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rl_l2gar)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rl_l2gar
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rl_l2gar_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET unitree_legged_msgs_generate_messages_cpp)
  add_dependencies(rl_l2gar_generate_messages_cpp unitree_legged_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rl_l2gar)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rl_l2gar
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rl_l2gar_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET unitree_legged_msgs_generate_messages_eus)
  add_dependencies(rl_l2gar_generate_messages_eus unitree_legged_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rl_l2gar)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rl_l2gar
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rl_l2gar_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET unitree_legged_msgs_generate_messages_lisp)
  add_dependencies(rl_l2gar_generate_messages_lisp unitree_legged_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rl_l2gar)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rl_l2gar
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rl_l2gar_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET unitree_legged_msgs_generate_messages_nodejs)
  add_dependencies(rl_l2gar_generate_messages_nodejs unitree_legged_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_l2gar)
  install(CODE "execute_process(COMMAND \"/home/liu_xu/anaconda3/envs/main_use/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_l2gar\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_l2gar
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rl_l2gar_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET unitree_legged_msgs_generate_messages_py)
  add_dependencies(rl_l2gar_generate_messages_py unitree_legged_msgs_generate_messages_py)
endif()
