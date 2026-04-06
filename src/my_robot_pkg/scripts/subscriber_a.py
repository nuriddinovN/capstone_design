#!/usr/bin/env python3
import rospy
from std_msgs.msg import String

def callback_a(msg):
    rospy.loginfo("[SUB_A] Received on /topic_a: " + msg.data)

def subscriber_a():
    rospy.init_node('subscriber_a', anonymous=False)
    rospy.Subscriber('/topic_a', String, callback_a)
    rospy.loginfo("Subscriber A listening on /topic_a")
    rospy.spin()

if __name__ == '__main__':
    try:
        subscriber_a()
    except rospy.ROSInterruptException:
        pass
