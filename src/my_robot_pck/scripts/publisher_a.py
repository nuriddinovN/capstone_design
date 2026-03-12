#!/usr/bin/env python3
import rospy
from std_msgs.msg import String

def publisher_a():
    rospy.init_node('publisher_a', anonymous=False)
    pub = rospy.Publisher('/topic_a', String, queue_size=10)
    rate = rospy.Rate(1)
    rospy.loginfo("Publisher A started on /topic_a")
    count = 0
    while not rospy.is_shutdown():
        msg = String()
        msg.data = "MESSAGE FROM A — count: " + str(count)
        pub.publish(msg)
        rospy.loginfo("[PUB_A] Sent: " + msg.data)
        count += 1
        rate.sleep()

if __name__ == '__main__':
    try:
        publisher_a()
    except rospy.ROSInterruptException:
        pass
