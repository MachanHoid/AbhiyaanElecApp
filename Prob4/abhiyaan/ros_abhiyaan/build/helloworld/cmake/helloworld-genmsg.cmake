# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "helloworld: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ihelloworld:/home/nitin/abhiyaan/ros_abhiyaan/src/helloworld/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Ihelloworld:/home/nitin/abhiyaan/ros_abhiyaan/src/helloworld/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(helloworld_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nitin/abhiyaan/ros_abhiyaan/src/helloworld/msg/CheckedData.msg" NAME_WE)
add_custom_target(_helloworld_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "helloworld" "/home/nitin/abhiyaan/ros_abhiyaan/src/helloworld/msg/CheckedData.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(helloworld
  "/home/nitin/abhiyaan/ros_abhiyaan/src/helloworld/msg/CheckedData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/helloworld
)

### Generating Services

### Generating Module File
_generate_module_cpp(helloworld
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/helloworld
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(helloworld_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(helloworld_generate_messages helloworld_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nitin/abhiyaan/ros_abhiyaan/src/helloworld/msg/CheckedData.msg" NAME_WE)
add_dependencies(helloworld_generate_messages_cpp _helloworld_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(helloworld_gencpp)
add_dependencies(helloworld_gencpp helloworld_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS helloworld_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(helloworld
  "/home/nitin/abhiyaan/ros_abhiyaan/src/helloworld/msg/CheckedData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/helloworld
)

### Generating Services

### Generating Module File
_generate_module_eus(helloworld
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/helloworld
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(helloworld_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(helloworld_generate_messages helloworld_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nitin/abhiyaan/ros_abhiyaan/src/helloworld/msg/CheckedData.msg" NAME_WE)
add_dependencies(helloworld_generate_messages_eus _helloworld_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(helloworld_geneus)
add_dependencies(helloworld_geneus helloworld_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS helloworld_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(helloworld
  "/home/nitin/abhiyaan/ros_abhiyaan/src/helloworld/msg/CheckedData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/helloworld
)

### Generating Services

### Generating Module File
_generate_module_lisp(helloworld
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/helloworld
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(helloworld_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(helloworld_generate_messages helloworld_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nitin/abhiyaan/ros_abhiyaan/src/helloworld/msg/CheckedData.msg" NAME_WE)
add_dependencies(helloworld_generate_messages_lisp _helloworld_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(helloworld_genlisp)
add_dependencies(helloworld_genlisp helloworld_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS helloworld_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(helloworld
  "/home/nitin/abhiyaan/ros_abhiyaan/src/helloworld/msg/CheckedData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/helloworld
)

### Generating Services

### Generating Module File
_generate_module_nodejs(helloworld
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/helloworld
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(helloworld_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(helloworld_generate_messages helloworld_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nitin/abhiyaan/ros_abhiyaan/src/helloworld/msg/CheckedData.msg" NAME_WE)
add_dependencies(helloworld_generate_messages_nodejs _helloworld_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(helloworld_gennodejs)
add_dependencies(helloworld_gennodejs helloworld_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS helloworld_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(helloworld
  "/home/nitin/abhiyaan/ros_abhiyaan/src/helloworld/msg/CheckedData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/helloworld
)

### Generating Services

### Generating Module File
_generate_module_py(helloworld
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/helloworld
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(helloworld_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(helloworld_generate_messages helloworld_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nitin/abhiyaan/ros_abhiyaan/src/helloworld/msg/CheckedData.msg" NAME_WE)
add_dependencies(helloworld_generate_messages_py _helloworld_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(helloworld_genpy)
add_dependencies(helloworld_genpy helloworld_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS helloworld_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/helloworld)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/helloworld
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(helloworld_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET helloworld_generate_messages_cpp)
  add_dependencies(helloworld_generate_messages_cpp helloworld_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/helloworld)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/helloworld
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(helloworld_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET helloworld_generate_messages_eus)
  add_dependencies(helloworld_generate_messages_eus helloworld_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/helloworld)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/helloworld
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(helloworld_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET helloworld_generate_messages_lisp)
  add_dependencies(helloworld_generate_messages_lisp helloworld_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/helloworld)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/helloworld
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(helloworld_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET helloworld_generate_messages_nodejs)
  add_dependencies(helloworld_generate_messages_nodejs helloworld_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/helloworld)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/helloworld\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/helloworld
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(helloworld_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET helloworld_generate_messages_py)
  add_dependencies(helloworld_generate_messages_py helloworld_generate_messages_py)
endif()
