; Auto-generated. Do not edit!


(cl:in-package my_robot_pkg-msg)


;//! \htmlinclude NavigateFeedback.msg.html

(cl:defclass <NavigateFeedback> (roslisp-msg-protocol:ros-message)
  ((current_position
    :reader current_position
    :initarg :current_position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (distance_to_goal
    :reader distance_to_goal
    :initarg :distance_to_goal
    :type cl:float
    :initform 0.0)
   (progress_percentage
    :reader progress_percentage
    :initarg :progress_percentage
    :type cl:float
    :initform 0.0)
   (current_status
    :reader current_status
    :initarg :current_status
    :type cl:string
    :initform ""))
)

(cl:defclass NavigateFeedback (<NavigateFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigateFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigateFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_pkg-msg:<NavigateFeedback> is deprecated: use my_robot_pkg-msg:NavigateFeedback instead.")))

(cl:ensure-generic-function 'current_position-val :lambda-list '(m))
(cl:defmethod current_position-val ((m <NavigateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_pkg-msg:current_position-val is deprecated.  Use my_robot_pkg-msg:current_position instead.")
  (current_position m))

(cl:ensure-generic-function 'distance_to_goal-val :lambda-list '(m))
(cl:defmethod distance_to_goal-val ((m <NavigateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_pkg-msg:distance_to_goal-val is deprecated.  Use my_robot_pkg-msg:distance_to_goal instead.")
  (distance_to_goal m))

(cl:ensure-generic-function 'progress_percentage-val :lambda-list '(m))
(cl:defmethod progress_percentage-val ((m <NavigateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_pkg-msg:progress_percentage-val is deprecated.  Use my_robot_pkg-msg:progress_percentage instead.")
  (progress_percentage m))

(cl:ensure-generic-function 'current_status-val :lambda-list '(m))
(cl:defmethod current_status-val ((m <NavigateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_pkg-msg:current_status-val is deprecated.  Use my_robot_pkg-msg:current_status instead.")
  (current_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigateFeedback>) ostream)
  "Serializes a message object of type '<NavigateFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_to_goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'progress_percentage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigateFeedback>) istream)
  "Deserializes a message object of type '<NavigateFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_goal) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'progress_percentage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigateFeedback>)))
  "Returns string type for a message object of type '<NavigateFeedback>"
  "my_robot_pkg/NavigateFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigateFeedback)))
  "Returns string type for a message object of type 'NavigateFeedback"
  "my_robot_pkg/NavigateFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigateFeedback>)))
  "Returns md5sum for a message object of type '<NavigateFeedback>"
  "6c09ee4004ed171436662289c84a7846")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigateFeedback)))
  "Returns md5sum for a message object of type 'NavigateFeedback"
  "6c09ee4004ed171436662289c84a7846")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigateFeedback>)))
  "Returns full string definition for message of type '<NavigateFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# ── FEEDBACK ────────────────────────────────────────────────────────~%geometry_msgs/Point  current_position     # Robot's current XY position~%float32              distance_to_goal     # Remaining distance (m)~%float32              progress_percentage  # 0.0 – 100.0~%string               current_status       # e.g. \"Navigating\", \"Rotating\"~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigateFeedback)))
  "Returns full string definition for message of type 'NavigateFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# ── FEEDBACK ────────────────────────────────────────────────────────~%geometry_msgs/Point  current_position     # Robot's current XY position~%float32              distance_to_goal     # Remaining distance (m)~%float32              progress_percentage  # 0.0 – 100.0~%string               current_status       # e.g. \"Navigating\", \"Rotating\"~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigateFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_position))
     4
     4
     4 (cl:length (cl:slot-value msg 'current_status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigateFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigateFeedback
    (cl:cons ':current_position (current_position msg))
    (cl:cons ':distance_to_goal (distance_to_goal msg))
    (cl:cons ':progress_percentage (progress_percentage msg))
    (cl:cons ':current_status (current_status msg))
))
