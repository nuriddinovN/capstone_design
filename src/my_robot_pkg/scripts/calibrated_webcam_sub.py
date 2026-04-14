#!/usr/bin/env python3

import rospy
import cv2
import numpy as np
from sensor_msgs.msg import Image, CameraInfo
from cv_bridge import CvBridge

class CameraSubscriber:
    def __init__(self):
        rospy.init_node('webcam_subscriber')
        self.bridge = CvBridge()
        self.cap_info = None
        
        # Subscribe to both image and info
        rospy.Subscriber('/camera/image_raw', Image, self.image_callback)
        rospy.Subscriber('/camera/camera_info', CameraInfo, self.info_callback)

    def info_callback(self, msg):
        # Store calibration data once
        self.cap_info = msg

    def image_callback(self, msg):
        if self.cap_info is None:
            rospy.logwarn_throttle(5, "Waiting for camera_info...")
            return

        frame = self.bridge.imgmsg_to_cv2(msg, "bgr8")
        
        # Pull matrices from CameraInfo
        K = np.array(self.cap_info.K).reshape((3, 3))
        D = np.array(self.cap_info.D)
        
        # Rectify (undistort) the image
        undistorted_frame = cv2.undistort(frame, K, D)
        
        # Show both for comparison
        combined = np.hstack((frame, undistorted_frame))
        cv2.imshow("Raw (Left) vs. Undistorted (Right)", combined)
        cv2.waitKey(1)

if __name__ == '__main__':
    CameraSubscriber()
    rospy.spin()
