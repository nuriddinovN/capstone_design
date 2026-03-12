;; Auto-generated. Do not edit!


(when (boundp 'my_robot_pck::TemperatureConverter)
  (if (not (find-package "MY_ROBOT_PCK"))
    (make-package "MY_ROBOT_PCK"))
  (shadow 'TemperatureConverter (find-package "MY_ROBOT_PCK")))
(unless (find-package "MY_ROBOT_PCK::TEMPERATURECONVERTER")
  (make-package "MY_ROBOT_PCK::TEMPERATURECONVERTER"))
(unless (find-package "MY_ROBOT_PCK::TEMPERATURECONVERTERREQUEST")
  (make-package "MY_ROBOT_PCK::TEMPERATURECONVERTERREQUEST"))
(unless (find-package "MY_ROBOT_PCK::TEMPERATURECONVERTERRESPONSE")
  (make-package "MY_ROBOT_PCK::TEMPERATURECONVERTERRESPONSE"))

(in-package "ROS")





(defclass my_robot_pck::TemperatureConverterRequest
  :super ros::object
  :slots (_celsius ))

(defmethod my_robot_pck::TemperatureConverterRequest
  (:init
   (&key
    ((:celsius __celsius) 0.0)
    )
   (send-super :init)
   (setq _celsius (float __celsius))
   self)
  (:celsius
   (&optional __celsius)
   (if __celsius (setq _celsius __celsius)) _celsius)
  (:serialization-length
   ()
   (+
    ;; float64 _celsius
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _celsius
       (sys::poke _celsius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _celsius
     (setq _celsius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass my_robot_pck::TemperatureConverterResponse
  :super ros::object
  :slots (_fahrenheit _valid ))

(defmethod my_robot_pck::TemperatureConverterResponse
  (:init
   (&key
    ((:fahrenheit __fahrenheit) 0.0)
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _fahrenheit (float __fahrenheit))
   (setq _valid __valid)
   self)
  (:fahrenheit
   (&optional __fahrenheit)
   (if __fahrenheit (setq _fahrenheit __fahrenheit)) _fahrenheit)
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:serialization-length
   ()
   (+
    ;; float64 _fahrenheit
    8
    ;; bool _valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _fahrenheit
       (sys::poke _fahrenheit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _fahrenheit
     (setq _fahrenheit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass my_robot_pck::TemperatureConverter
  :super ros::object
  :slots ())

(setf (get my_robot_pck::TemperatureConverter :md5sum-) "7737de072c8391bcef8d331fb8350e5b")
(setf (get my_robot_pck::TemperatureConverter :datatype-) "my_robot_pck/TemperatureConverter")
(setf (get my_robot_pck::TemperatureConverter :request) my_robot_pck::TemperatureConverterRequest)
(setf (get my_robot_pck::TemperatureConverter :response) my_robot_pck::TemperatureConverterResponse)

(defmethod my_robot_pck::TemperatureConverterRequest
  (:response () (instance my_robot_pck::TemperatureConverterResponse :init)))

(setf (get my_robot_pck::TemperatureConverterRequest :md5sum-) "7737de072c8391bcef8d331fb8350e5b")
(setf (get my_robot_pck::TemperatureConverterRequest :datatype-) "my_robot_pck/TemperatureConverterRequest")
(setf (get my_robot_pck::TemperatureConverterRequest :definition-)
      "float64 celsius
---
float64 fahrenheit
bool valid
")

(setf (get my_robot_pck::TemperatureConverterResponse :md5sum-) "7737de072c8391bcef8d331fb8350e5b")
(setf (get my_robot_pck::TemperatureConverterResponse :datatype-) "my_robot_pck/TemperatureConverterResponse")
(setf (get my_robot_pck::TemperatureConverterResponse :definition-)
      "float64 celsius
---
float64 fahrenheit
bool valid
")



(provide :my_robot_pck/TemperatureConverter "7737de072c8391bcef8d331fb8350e5b")


