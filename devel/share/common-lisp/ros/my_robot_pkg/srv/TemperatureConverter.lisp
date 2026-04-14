; Auto-generated. Do not edit!


(cl:in-package my_robot_pkg-srv)


;//! \htmlinclude TemperatureConverter-request.msg.html

(cl:defclass <TemperatureConverter-request> (roslisp-msg-protocol:ros-message)
  ((celsius
    :reader celsius
    :initarg :celsius
    :type cl:float
    :initform 0.0))
)

(cl:defclass TemperatureConverter-request (<TemperatureConverter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TemperatureConverter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TemperatureConverter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_pkg-srv:<TemperatureConverter-request> is deprecated: use my_robot_pkg-srv:TemperatureConverter-request instead.")))

(cl:ensure-generic-function 'celsius-val :lambda-list '(m))
(cl:defmethod celsius-val ((m <TemperatureConverter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_pkg-srv:celsius-val is deprecated.  Use my_robot_pkg-srv:celsius instead.")
  (celsius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TemperatureConverter-request>) ostream)
  "Serializes a message object of type '<TemperatureConverter-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'celsius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TemperatureConverter-request>) istream)
  "Deserializes a message object of type '<TemperatureConverter-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'celsius) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TemperatureConverter-request>)))
  "Returns string type for a service object of type '<TemperatureConverter-request>"
  "my_robot_pkg/TemperatureConverterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TemperatureConverter-request)))
  "Returns string type for a service object of type 'TemperatureConverter-request"
  "my_robot_pkg/TemperatureConverterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TemperatureConverter-request>)))
  "Returns md5sum for a message object of type '<TemperatureConverter-request>"
  "7737de072c8391bcef8d331fb8350e5b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TemperatureConverter-request)))
  "Returns md5sum for a message object of type 'TemperatureConverter-request"
  "7737de072c8391bcef8d331fb8350e5b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TemperatureConverter-request>)))
  "Returns full string definition for message of type '<TemperatureConverter-request>"
  (cl:format cl:nil "float64 celsius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TemperatureConverter-request)))
  "Returns full string definition for message of type 'TemperatureConverter-request"
  (cl:format cl:nil "float64 celsius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TemperatureConverter-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TemperatureConverter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TemperatureConverter-request
    (cl:cons ':celsius (celsius msg))
))
;//! \htmlinclude TemperatureConverter-response.msg.html

(cl:defclass <TemperatureConverter-response> (roslisp-msg-protocol:ros-message)
  ((fahrenheit
    :reader fahrenheit
    :initarg :fahrenheit
    :type cl:float
    :initform 0.0)
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TemperatureConverter-response (<TemperatureConverter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TemperatureConverter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TemperatureConverter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_pkg-srv:<TemperatureConverter-response> is deprecated: use my_robot_pkg-srv:TemperatureConverter-response instead.")))

(cl:ensure-generic-function 'fahrenheit-val :lambda-list '(m))
(cl:defmethod fahrenheit-val ((m <TemperatureConverter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_pkg-srv:fahrenheit-val is deprecated.  Use my_robot_pkg-srv:fahrenheit instead.")
  (fahrenheit m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <TemperatureConverter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_pkg-srv:valid-val is deprecated.  Use my_robot_pkg-srv:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TemperatureConverter-response>) ostream)
  "Serializes a message object of type '<TemperatureConverter-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fahrenheit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TemperatureConverter-response>) istream)
  "Deserializes a message object of type '<TemperatureConverter-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fahrenheit) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TemperatureConverter-response>)))
  "Returns string type for a service object of type '<TemperatureConverter-response>"
  "my_robot_pkg/TemperatureConverterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TemperatureConverter-response)))
  "Returns string type for a service object of type 'TemperatureConverter-response"
  "my_robot_pkg/TemperatureConverterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TemperatureConverter-response>)))
  "Returns md5sum for a message object of type '<TemperatureConverter-response>"
  "7737de072c8391bcef8d331fb8350e5b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TemperatureConverter-response)))
  "Returns md5sum for a message object of type 'TemperatureConverter-response"
  "7737de072c8391bcef8d331fb8350e5b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TemperatureConverter-response>)))
  "Returns full string definition for message of type '<TemperatureConverter-response>"
  (cl:format cl:nil "float64 fahrenheit~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TemperatureConverter-response)))
  "Returns full string definition for message of type 'TemperatureConverter-response"
  (cl:format cl:nil "float64 fahrenheit~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TemperatureConverter-response>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TemperatureConverter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TemperatureConverter-response
    (cl:cons ':fahrenheit (fahrenheit msg))
    (cl:cons ':valid (valid msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TemperatureConverter)))
  'TemperatureConverter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TemperatureConverter)))
  'TemperatureConverter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TemperatureConverter)))
  "Returns string type for a service object of type '<TemperatureConverter>"
  "my_robot_pkg/TemperatureConverter")