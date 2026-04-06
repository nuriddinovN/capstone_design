#!/usr/bin/env python3
# simple_subscriber.py
import rospy
from std_msgs.msg import String

def callback(message):
    """
    This function is called AUTOMATICALLY every time
    a new message arrives on /my_topic.
    You don't call it manually — ROS calls it for you.
    """
    rospy.loginfo(f"Received: {message.data}")

def subscriber_node():
    rospy.init_node('simple_subscriber', anonymous=False)
    
    # Register interest in /my_topic
    # When a message arrives, ROS will call callback()
    rospy.Subscriber('/my_topic', String, callback)
    
    rospy.loginfo("Subscriber node started! Waiting for messages...")
    
    # rospy.spin() = "don't exit, just wait for callbacks"
    # Without this, the program would end immediately
    rospy.spin()

if __name__ == '__main__':
    try:
        subscriber_node()
    except rospy.ROSInterruptException:
        pass