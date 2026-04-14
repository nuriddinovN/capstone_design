#!/usr/bin/env python3

import rospy
import cv2
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

# ── Change size here ──
DISPLAY_WIDTH  = 480
DISPLAY_HEIGHT = 320
# ─────────────────────

def image_callback(msg):
    bridge = CvBridge()
    try:
        cv_image = bridge.imgmsg_to_cv2(msg, desired_encoding="bgr8")
        cv_image = cv2.resize(cv_image, (DISPLAY_WIDTH, DISPLAY_HEIGHT))
        cv2.imshow("Phone Cam View", cv_image)
        cv2.waitKey(1)
    except CvBridgeError as e:
        rospy.logerr(f"CvBridge Error: {e}")

def subscribe_camera():
    rospy.init_node('web_cam_subscriber', anonymous=True)
    rospy.Subscriber('/camera/image_raw', Image, image_callback)
    rospy.loginfo("Waiting for frames...")
    rospy.spin()
    cv2.destroyAllWindows()

if __name__ == '__main__':
    try:
        subscribe_camera()
    except rospy.ROSInterruptException:
        pass
