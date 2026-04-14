;; Auto-generated. Do not edit!


(when (boundp 'my_robot_pkg::RobotStatus)
  (if (not (find-package "MY_ROBOT_PKG"))
    (make-package "MY_ROBOT_PKG"))
  (shadow 'RobotStatus (find-package "MY_ROBOT_PKG")))
(unless (find-package "MY_ROBOT_PKG::ROBOTSTATUS")
  (make-package "MY_ROBOT_PKG::ROBOTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RobotStatus.msg.html


(defclass my_robot_pkg::RobotStatus
  :super ros::object
  :slots (_robot_name _battery_level _is_moving _error_code ))

(defmethod my_robot_pkg::RobotStatus
  (:init
   (&key
    ((:robot_name __robot_name) "")
    ((:battery_level __battery_level) 0.0)
    ((:is_moving __is_moving) nil)
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _robot_name (string __robot_name))
   (setq _battery_level (float __battery_level))
   (setq _is_moving __is_moving)
   (setq _error_code (round __error_code))
   self)
  (:robot_name
   (&optional __robot_name)
   (if __robot_name (setq _robot_name __robot_name)) _robot_name)
  (:battery_level
   (&optional __battery_level)
   (if __battery_level (setq _battery_level __battery_level)) _battery_level)
  (:is_moving
   (&optional (__is_moving :null))
   (if (not (eq __is_moving :null)) (setq _is_moving __is_moving)) _is_moving)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; string _robot_name
    4 (length _robot_name)
    ;; float32 _battery_level
    4
    ;; bool _is_moving
    1
    ;; int32 _error_code
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_name
       (write-long (length _robot_name) s) (princ _robot_name s)
     ;; float32 _battery_level
       (sys::poke _battery_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_moving
       (if _is_moving (write-byte -1 s) (write-byte 0 s))
     ;; int32 _error_code
       (write-long _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _battery_level
     (setq _battery_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_moving
     (setq _is_moving (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get my_robot_pkg::RobotStatus :md5sum-) "6cc0551541d99bdf9ecf3cda51d5c3de")
(setf (get my_robot_pkg::RobotStatus :datatype-) "my_robot_pkg/RobotStatus")
(setf (get my_robot_pkg::RobotStatus :definition-)
      "string robot_name
float32 battery_level
bool is_moving
int32 error_code
")



(provide :my_robot_pkg/RobotStatus "6cc0551541d99bdf9ecf3cda51d5c3de")


