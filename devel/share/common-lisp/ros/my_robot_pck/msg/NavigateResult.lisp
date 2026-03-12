; Auto-generated. Do not edit!


(cl:in-package my_robot_pck-msg)


;//! \htmlinclude NavigateResult.msg.html

(cl:defclass <NavigateResult> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (status_message
    :reader status_message
    :initarg :status_message
    :type cl:string
    :initform "")
   (total_distance
    :reader total_distance
    :initarg :total_distance
    :type cl:float
    :initform 0.0)
   (time_elapsed
    :reader time_elapsed
    :initarg :time_elapsed
    :type cl:float
    :initform 0.0))
)

(cl:defclass NavigateResult (<NavigateResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigateResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigateResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_pck-msg:<NavigateResult> is deprecated: use my_robot_pck-msg:NavigateResult instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <NavigateResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_pck-msg:success-val is deprecated.  Use my_robot_pck-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <NavigateResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_pck-msg:status_message-val is deprecated.  Use my_robot_pck-msg:status_message instead.")
  (status_message m))

(cl:ensure-generic-function 'total_distance-val :lambda-list '(m))
(cl:defmethod total_distance-val ((m <NavigateResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_pck-msg:total_distance-val is deprecated.  Use my_robot_pck-msg:total_distance instead.")
  (total_distance m))

(cl:ensure-generic-function 'time_elapsed-val :lambda-list '(m))
(cl:defmethod time_elapsed-val ((m <NavigateResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_pck-msg:time_elapsed-val is deprecated.  Use my_robot_pck-msg:time_elapsed instead.")
  (time_elapsed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigateResult>) ostream)
  "Serializes a message object of type '<NavigateResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'total_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_elapsed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigateResult>) istream)
  "Deserializes a message object of type '<NavigateResult>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_elapsed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigateResult>)))
  "Returns string type for a message object of type '<NavigateResult>"
  "my_robot_pck/NavigateResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigateResult)))
  "Returns string type for a message object of type 'NavigateResult"
  "my_robot_pck/NavigateResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigateResult>)))
  "Returns md5sum for a message object of type '<NavigateResult>"
  "9b0f48f1792e25b118436ffbff76b80e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigateResult)))
  "Returns md5sum for a message object of type 'NavigateResult"
  "9b0f48f1792e25b118436ffbff76b80e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigateResult>)))
  "Returns full string definition for message of type '<NavigateResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# ── RESULT ──────────────────────────────────────────────────────────~%bool     success           # True if robot reached goal~%string   status_message    # Human-readable status~%float32  total_distance    # Path length actually travelled (m)~%float32  time_elapsed      # Wall-clock time taken (s)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigateResult)))
  "Returns full string definition for message of type 'NavigateResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# ── RESULT ──────────────────────────────────────────────────────────~%bool     success           # True if robot reached goal~%string   status_message    # Human-readable status~%float32  total_distance    # Path length actually travelled (m)~%float32  time_elapsed      # Wall-clock time taken (s)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigateResult>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigateResult>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigateResult
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
    (cl:cons ':total_distance (total_distance msg))
    (cl:cons ':time_elapsed (time_elapsed msg))
))
