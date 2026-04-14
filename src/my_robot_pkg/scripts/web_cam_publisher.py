#!/usr/bin/env python3

import rospy
import cv2
from sensor_msgs.msg import Image
from cv_bridge import CvBridge

def publish_camera():
    rospy.init_node('web_cam_publisher', anonymous=True)
    image_pub = rospy.Publisher('/camera/image_raw', Image, queue_size=10)
    rate = rospy.Rate(30) # 30 Hz

    # Open /dev/video0
    cap = cv2.VideoCapture(0)
    bridge = CvBridge()

    if not cap.isOpened():
        rospy.logerr("Could not open webcam.")
        return

    rospy.loginfo("Webcam Publisher started.")

    while not rospy.is_shutdown():
        ret, frame = cap.read()
        if ret:
            # Convert OpenCV image to ROS Image message
            ros_image = bridge.cv2_to_imgmsg(frame, encoding="bgr8")
            image_pub.publish(ros_image)
        rate.sleep()

    cap.release()

if __name__ == '__main__':
    try:
        publish_camera()
    except rospy.ROSInterruptException:
        pass
