# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "speechrecognition: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ispeechrecognition:/home/lab-user/Desktop/test_ros/src/speechrecognition/msg;-Istd_msgs:/opt/ros/lunar/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(speechrecognition_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lab-user/Desktop/test_ros/src/speechrecognition/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_speechrecognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "speechrecognition" "/home/lab-user/Desktop/test_ros/src/speechrecognition/srv/AddTwoInts.srv" ""
)

get_filename_component(_filename "/home/lab-user/Desktop/test_ros/src/speechrecognition/msg/Num.msg" NAME_WE)
add_custom_target(_speechrecognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "speechrecognition" "/home/lab-user/Desktop/test_ros/src/speechrecognition/msg/Num.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(speechrecognition
  "/home/lab-user/Desktop/test_ros/src/speechrecognition/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speechrecognition
)

### Generating Services
_generate_srv_cpp(speechrecognition
  "/home/lab-user/Desktop/test_ros/src/speechrecognition/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speechrecognition
)

### Generating Module File
_generate_module_cpp(speechrecognition
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speechrecognition
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(speechrecognition_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(speechrecognition_generate_messages speechrecognition_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lab-user/Desktop/test_ros/src/speechrecognition/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(speechrecognition_generate_messages_cpp _speechrecognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lab-user/Desktop/test_ros/src/speechrecognition/msg/Num.msg" NAME_WE)
add_dependencies(speechrecognition_generate_messages_cpp _speechrecognition_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(speechrecognition_gencpp)
add_dependencies(speechrecognition_gencpp speechrecognition_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS speechrecognition_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(speechrecognition
  "/home/lab-user/Desktop/test_ros/src/speechrecognition/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speechrecognition
)

### Generating Services
_generate_srv_eus(speechrecognition
  "/home/lab-user/Desktop/test_ros/src/speechrecognition/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speechrecognition
)

### Generating Module File
_generate_module_eus(speechrecognition
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speechrecognition
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(speechrecognition_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(speechrecognition_generate_messages speechrecognition_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lab-user/Desktop/test_ros/src/speechrecognition/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(speechrecognition_generate_messages_eus _speechrecognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lab-user/Desktop/test_ros/src/speechrecognition/msg/Num.msg" NAME_WE)
add_dependencies(speechrecognition_generate_messages_eus _speechrecognition_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(speechrecognition_geneus)
add_dependencies(speechrecognition_geneus speechrecognition_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS speechrecognition_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(speechrecognition
  "/home/lab-user/Desktop/test_ros/src/speechrecognition/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speechrecognition
)

### Generating Services
_generate_srv_lisp(speechrecognition
  "/home/lab-user/Desktop/test_ros/src/speechrecognition/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speechrecognition
)

### Generating Module File
_generate_module_lisp(speechrecognition
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speechrecognition
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(speechrecognition_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(speechrecognition_generate_messages speechrecognition_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lab-user/Desktop/test_ros/src/speechrecognition/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(speechrecognition_generate_messages_lisp _speechrecognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lab-user/Desktop/test_ros/src/speechrecognition/msg/Num.msg" NAME_WE)
add_dependencies(speechrecognition_generate_messages_lisp _speechrecognition_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(speechrecognition_genlisp)
add_dependencies(speechrecognition_genlisp speechrecognition_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS speechrecognition_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(speechrecognition
  "/home/lab-user/Desktop/test_ros/src/speechrecognition/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speechrecognition
)

### Generating Services
_generate_srv_nodejs(speechrecognition
  "/home/lab-user/Desktop/test_ros/src/speechrecognition/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speechrecognition
)

### Generating Module File
_generate_module_nodejs(speechrecognition
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speechrecognition
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(speechrecognition_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(speechrecognition_generate_messages speechrecognition_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lab-user/Desktop/test_ros/src/speechrecognition/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(speechrecognition_generate_messages_nodejs _speechrecognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lab-user/Desktop/test_ros/src/speechrecognition/msg/Num.msg" NAME_WE)
add_dependencies(speechrecognition_generate_messages_nodejs _speechrecognition_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(speechrecognition_gennodejs)
add_dependencies(speechrecognition_gennodejs speechrecognition_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS speechrecognition_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(speechrecognition
  "/home/lab-user/Desktop/test_ros/src/speechrecognition/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speechrecognition
)

### Generating Services
_generate_srv_py(speechrecognition
  "/home/lab-user/Desktop/test_ros/src/speechrecognition/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speechrecognition
)

### Generating Module File
_generate_module_py(speechrecognition
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speechrecognition
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(speechrecognition_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(speechrecognition_generate_messages speechrecognition_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lab-user/Desktop/test_ros/src/speechrecognition/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(speechrecognition_generate_messages_py _speechrecognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lab-user/Desktop/test_ros/src/speechrecognition/msg/Num.msg" NAME_WE)
add_dependencies(speechrecognition_generate_messages_py _speechrecognition_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(speechrecognition_genpy)
add_dependencies(speechrecognition_genpy speechrecognition_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS speechrecognition_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speechrecognition)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speechrecognition
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(speechrecognition_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speechrecognition)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speechrecognition
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(speechrecognition_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speechrecognition)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speechrecognition
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(speechrecognition_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speechrecognition)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speechrecognition
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(speechrecognition_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speechrecognition)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speechrecognition\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speechrecognition
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(speechrecognition_generate_messages_py std_msgs_generate_messages_py)
endif()
