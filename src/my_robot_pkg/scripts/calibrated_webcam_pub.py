#!/usr/bin/env python3

import rospy
import cv2
import yaml
import os
from sensor_msgs.msg import Image, CameraInfo
from cv_bridge import CvBridge

def load_calibration_file(filepath):
    """Parses the ROS calibration YAML file into a CameraInfo message."""
    with open(filepath, 'r') as f:
        params = yaml.safe_load(f)

    c_info = CameraInfo()
    c_info.width = params['image_width']
    c_info.height = params['image_height']
    c_info.K = params['camera_matrix']['data']
    c_info.D = params['distortion_coefficients']['data']
    c_info.R = params['rectification_matrix']['data']
    c_info.P = params['projection_matrix']['data']
    c_info.distortion_model = params['distortion_model']
    return c_info

def start_node():
    rospy.init_node('webcam_calibrated_publisher')
    
    # Publishers
    img_pub = rospy.Publisher('/camera/image_raw', Image, queue_size=10)
    info_pub = rospy.Publisher('/camera/camera_info', CameraInfo, queue_size=10)
    
    bridge = CvBridge()
    STREAM_URL = "http://192.168.16.111:8080/video"
cap = cv2.VideoCapture(STREAM_URL)
    
    # Adjust path to your specific file
    yaml_path = os.path.expanduser('~/.ros/camera_info/head_camera.yaml')
    
    if not os.path.exists(yaml_path):
        rospy.logerr(f"Calibration file not found at {yaml_path}!")
        return

    calib_msg = load_calibration_file(yaml_path)
    rospy.loginfo("Successfully loaded calibration data.")

    rate = rospy.Rate(15) # 15Hz is stable for M1 UTM
    
    while not rospy.is_shutdown():
        ret, frame = cap.read()
        if ret:
            # Create timestamp
            now = rospy.Time.now()
            
            # Publish Image
            img_msg = bridge.cv2_to_imgmsg(frame, "bgr8")
            img_msg.header.stamp = now
            img_msg.header.frame_id = "camera_optical_frame"
            img_pub.publish(img_msg)
            
            # Publish Info (must have same timestamp and frame_id)
            calib_msg.header.stamp = now
            calib_msg.header.frame_id = "camera_optical_frame"
            info_pub.publish(calib_msg)
            
        rate.sleep()

    cap.release()

if __name__ == '__main__':
    try:
        start_node()
    except rospy.ROSInterruptException:
        pass
