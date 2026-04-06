#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist

rospy.init_node('speed_controller')

pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)

# Set default speed parameter on the parameter server
rospy.set_param('/turtle_speed', 1.0)

rate = rospy.Rate(10)

rospy.loginfo("Speed controller started!")
rospy.loginfo("Change speed live with: rosparam set /turtle_speed 2.5")

while not rospy.is_shutdown():
    # Read speed from parameter server on EVERY loop iteration
    # This is what makes it live — no restart needed
    speed = rospy.get_param('/turtle_speed', 1.0)

    msg = Twist()
    msg.linear.x = speed   # forward speed
    msg.angular.z = 0.5    # constant turning so you can see movement

    pub.publish(msg)

    rospy.loginfo("Current speed: " + str(speed))
    rate.sleep()
