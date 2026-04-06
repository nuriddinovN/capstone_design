#!/usr/bin/env python3
import rospy
from std_msgs.msg import String

def callback_b(msg):
    rospy.loginfo("[SUB_B] Received on /topic_b: " + msg.data)

def subscriber_b():
    rospy.init_node('subscriber_b', anonymous=False)
    rospy.Subscriber('/topic_b', String, callback_b)
    rospy.loginfo("Subscriber B listening on /topic_b")
    rospy.spin()

if __name__ == '__main__':
    try:
        subscriber_b()
    except rospy.ROSInterruptException:
        pass
