#!/usr/bin/env python3

import rospy
import cv2
from sensor_msgs.msg import Image
from cv_bridge import CvBridge

PHONE_IP   = "192.168.16.111"
PORT       = 8080
STREAM_URL = f"http://{PHONE_IP}:{PORT}/video"

def publish_camera():
    rospy.init_node('phone_cam_publisher', anonymous=True)
    image_pub = rospy.Publisher('/camera/image_raw', Image, queue_size=10)
    rate = rospy.Rate(15)

    rospy.loginfo(f"Connecting to {STREAM_URL}")
    cap = cv2.VideoCapture(STREAM_URL)
    bridge = CvBridge()

    if not cap.isOpened():
        rospy.logerr(f"Could not connect to {STREAM_URL}")
        return

    rospy.loginfo("Connected successfully.")

    while not rospy.is_shutdown():
        ret, frame = cap.read()
        if ret:
            ros_image = bridge.cv2_to_imgmsg(frame, encoding="bgr8")
            image_pub.publish(ros_image)
        else:
            rospy.logwarn("Failed to grab frame, retrying...")
            cap.open(STREAM_URL)
        rate.sleep()

    cap.release()

if __name__ == '__main__':
    try:
        publish_camera()
    except rospy.ROSInterruptException:
        pass
