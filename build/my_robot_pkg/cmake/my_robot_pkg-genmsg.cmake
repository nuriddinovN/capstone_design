# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "my_robot_pkg: 8 messages, 2 services")

set(MSG_I_FLAGS "-Imy_robot_pkg:/home/noor/catkin_ws/src/my_robot_pkg/msg;-Imy_robot_pkg:/home/noor/catkin_ws/devel/share/my_robot_pkg/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(my_robot_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/noor/catkin_ws/src/my_robot_pkg/msg/RobotStatus.msg" NAME_WE)
add_custom_target(_my_robot_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_robot_pkg" "/home/noor/catkin_ws/src/my_robot_pkg/msg/RobotStatus.msg" ""
)

get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateAction.msg" NAME_WE)
add_custom_target(_my_robot_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_robot_pkg" "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateAction.msg" "actionlib_msgs/GoalStatus:my_robot_pkg/NavigateActionResult:actionlib_msgs/GoalID:my_robot_pkg/NavigateActionFeedback:my_robot_pkg/NavigateFeedback:geometry_msgs/Point:my_robot_pkg/NavigateResult:geometry_msgs/PoseStamped:geometry_msgs/Pose:my_robot_pkg/NavigateGoal:std_msgs/Header:geometry_msgs/Quaternion:my_robot_pkg/NavigateActionGoal"
)

get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionGoal.msg" NAME_WE)
add_custom_target(_my_robot_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_robot_pkg" "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionGoal.msg" "actionlib_msgs/GoalID:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Pose:my_robot_pkg/NavigateGoal:std_msgs/Header:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionResult.msg" NAME_WE)
add_custom_target(_my_robot_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_robot_pkg" "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionResult.msg" "my_robot_pkg/NavigateResult:actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionFeedback.msg" NAME_WE)
add_custom_target(_my_robot_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_robot_pkg" "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionFeedback.msg" "std_msgs/Header:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:geometry_msgs/Point:my_robot_pkg/NavigateFeedback"
)

get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg" NAME_WE)
add_custom_target(_my_robot_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_robot_pkg" "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg" "geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg" NAME_WE)
add_custom_target(_my_robot_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_robot_pkg" "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg" ""
)

get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg" NAME_WE)
add_custom_target(_my_robot_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_robot_pkg" "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/noor/catkin_ws/src/my_robot_pkg/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_my_robot_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_robot_pkg" "/home/noor/catkin_ws/src/my_robot_pkg/srv/AddTwoInts.srv" ""
)

get_filename_component(_filename "/home/noor/catkin_ws/src/my_robot_pkg/srv/TemperatureConverter.srv" NAME_WE)
add_custom_target(_my_robot_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_robot_pkg" "/home/noor/catkin_ws/src/my_robot_pkg/srv/TemperatureConverter.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(my_robot_pkg
  "/home/noor/catkin_ws/src/my_robot_pkg/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_cpp(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionFeedback.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_cpp(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_cpp(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_cpp(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_cpp(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_cpp(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_cpp(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_pkg
)

### Generating Services
_generate_srv_cpp(my_robot_pkg
  "/home/noor/catkin_ws/src/my_robot_pkg/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_pkg
)
_generate_srv_cpp(my_robot_pkg
  "/home/noor/catkin_ws/src/my_robot_pkg/srv/TemperatureConverter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_pkg
)

### Generating Module File
_generate_module_cpp(my_robot_pkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_pkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(my_robot_pkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(my_robot_pkg_generate_messages my_robot_pkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/noor/catkin_ws/src/my_robot_pkg/msg/RobotStatus.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_cpp _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateAction.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_cpp _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionGoal.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_cpp _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionResult.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_cpp _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionFeedback.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_cpp _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_cpp _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_cpp _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_cpp _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/src/my_robot_pkg/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_cpp _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/src/my_robot_pkg/srv/TemperatureConverter.srv" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_cpp _my_robot_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_robot_pkg_gencpp)
add_dependencies(my_robot_pkg_gencpp my_robot_pkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_robot_pkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(my_robot_pkg
  "/home/noor/catkin_ws/src/my_robot_pkg/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_eus(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionFeedback.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_eus(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_eus(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_eus(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_eus(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_eus(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_eus(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_pkg
)

### Generating Services
_generate_srv_eus(my_robot_pkg
  "/home/noor/catkin_ws/src/my_robot_pkg/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_pkg
)
_generate_srv_eus(my_robot_pkg
  "/home/noor/catkin_ws/src/my_robot_pkg/srv/TemperatureConverter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_pkg
)

### Generating Module File
_generate_module_eus(my_robot_pkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_pkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(my_robot_pkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(my_robot_pkg_generate_messages my_robot_pkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/noor/catkin_ws/src/my_robot_pkg/msg/RobotStatus.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_eus _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateAction.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_eus _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionGoal.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_eus _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionResult.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_eus _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionFeedback.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_eus _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_eus _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_eus _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_eus _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/src/my_robot_pkg/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_eus _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/src/my_robot_pkg/srv/TemperatureConverter.srv" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_eus _my_robot_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_robot_pkg_geneus)
add_dependencies(my_robot_pkg_geneus my_robot_pkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_robot_pkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(my_robot_pkg
  "/home/noor/catkin_ws/src/my_robot_pkg/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_lisp(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionFeedback.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_lisp(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_lisp(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_lisp(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_lisp(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_lisp(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_lisp(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_pkg
)

### Generating Services
_generate_srv_lisp(my_robot_pkg
  "/home/noor/catkin_ws/src/my_robot_pkg/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_pkg
)
_generate_srv_lisp(my_robot_pkg
  "/home/noor/catkin_ws/src/my_robot_pkg/srv/TemperatureConverter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_pkg
)

### Generating Module File
_generate_module_lisp(my_robot_pkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_pkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(my_robot_pkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(my_robot_pkg_generate_messages my_robot_pkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/noor/catkin_ws/src/my_robot_pkg/msg/RobotStatus.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_lisp _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateAction.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_lisp _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionGoal.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_lisp _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionResult.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_lisp _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionFeedback.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_lisp _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_lisp _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_lisp _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_lisp _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/src/my_robot_pkg/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_lisp _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/src/my_robot_pkg/srv/TemperatureConverter.srv" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_lisp _my_robot_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_robot_pkg_genlisp)
add_dependencies(my_robot_pkg_genlisp my_robot_pkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_robot_pkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(my_robot_pkg
  "/home/noor/catkin_ws/src/my_robot_pkg/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_nodejs(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionFeedback.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_nodejs(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_nodejs(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_nodejs(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_nodejs(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_nodejs(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_nodejs(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_pkg
)

### Generating Services
_generate_srv_nodejs(my_robot_pkg
  "/home/noor/catkin_ws/src/my_robot_pkg/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_pkg
)
_generate_srv_nodejs(my_robot_pkg
  "/home/noor/catkin_ws/src/my_robot_pkg/srv/TemperatureConverter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_pkg
)

### Generating Module File
_generate_module_nodejs(my_robot_pkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_pkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(my_robot_pkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(my_robot_pkg_generate_messages my_robot_pkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/noor/catkin_ws/src/my_robot_pkg/msg/RobotStatus.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_nodejs _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateAction.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_nodejs _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionGoal.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_nodejs _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionResult.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_nodejs _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionFeedback.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_nodejs _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_nodejs _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_nodejs _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_nodejs _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/src/my_robot_pkg/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_nodejs _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/src/my_robot_pkg/srv/TemperatureConverter.srv" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_nodejs _my_robot_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_robot_pkg_gennodejs)
add_dependencies(my_robot_pkg_gennodejs my_robot_pkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_robot_pkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(my_robot_pkg
  "/home/noor/catkin_ws/src/my_robot_pkg/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_py(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionFeedback.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_py(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_py(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_py(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_py(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_py(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_pkg
)
_generate_msg_py(my_robot_pkg
  "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_pkg
)

### Generating Services
_generate_srv_py(my_robot_pkg
  "/home/noor/catkin_ws/src/my_robot_pkg/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_pkg
)
_generate_srv_py(my_robot_pkg
  "/home/noor/catkin_ws/src/my_robot_pkg/srv/TemperatureConverter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_pkg
)

### Generating Module File
_generate_module_py(my_robot_pkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_pkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(my_robot_pkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(my_robot_pkg_generate_messages my_robot_pkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/noor/catkin_ws/src/my_robot_pkg/msg/RobotStatus.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_py _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateAction.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_py _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionGoal.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_py _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionResult.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_py _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateActionFeedback.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_py _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateGoal.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_py _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateResult.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_py _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/devel/share/my_robot_pkg/msg/NavigateFeedback.msg" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_py _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/src/my_robot_pkg/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_py _my_robot_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noor/catkin_ws/src/my_robot_pkg/srv/TemperatureConverter.srv" NAME_WE)
add_dependencies(my_robot_pkg_generate_messages_py _my_robot_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_robot_pkg_genpy)
add_dependencies(my_robot_pkg_genpy my_robot_pkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_robot_pkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_pkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(my_robot_pkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(my_robot_pkg_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(my_robot_pkg_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_pkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(my_robot_pkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(my_robot_pkg_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(my_robot_pkg_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_pkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(my_robot_pkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(my_robot_pkg_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(my_robot_pkg_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_pkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(my_robot_pkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(my_robot_pkg_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(my_robot_pkg_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_pkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_pkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_pkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(my_robot_pkg_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(my_robot_pkg_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(my_robot_pkg_generate_messages_py geometry_msgs_generate_messages_py)
endif()
