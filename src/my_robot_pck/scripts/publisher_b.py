#!/usr/bin/env python3
import rospy
from std_msgs.msg import String

def publisher_b():
    rospy.init_node('publisher_b', anonymous=False)
    pub = rospy.Publisher('/topic_b', String, queue_size=10)
    rate = rospy.Rate(2)
    rospy.loginfo("Publisher B started on /topic_b")
    count = 0
    while not rospy.is_shutdown():
        msg = String()
        msg.data = "MESSAGE FROM B — count: " + str(count)
        pub.publish(msg)
        rospy.loginfo("[PUB_B] Sent: " + msg.data)
        count += 1
        rate.sleep()

if __name__ == '__main__':
    try:
        publisher_b()
    except rospy.ROSInterruptException:
        pass
