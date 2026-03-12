#!/usr/bin/env python3
# simple_publisher.py
import rospy
from std_msgs.msg import String

def publisher_node():
    # Initialize the node — give it a unique name in the ROS graph
    rospy.init_node('simple_publisher', anonymous=False)
    
    # Create a publisher on topic '/my_topic' sending String messages
    # queue_size=10 means: buffer up to 10 messages if subscriber is slow
    pub = rospy.Publisher('/my_topic', String, queue_size=10)
    
    # Rate object: controls the loop speed (10 Hz = 10 times per second)
    rate = rospy.Rate(10)
    
    rospy.loginfo("Publisher node started!")
    
    while not rospy.is_shutdown():  # Keep running until Ctrl+C
        message = String()
        message.data = f"Hello from IUT! Time: {rospy.get_time():.2f}"
        
        pub.publish(message)          # Send the message
        rospy.loginfo(f"Published: {message.data}")
        rate.sleep()                  # Wait to maintain 10 Hz

if __name__ == '__main__':
    try:
        publisher_node()
    except rospy.ROSInterruptException:
        pass