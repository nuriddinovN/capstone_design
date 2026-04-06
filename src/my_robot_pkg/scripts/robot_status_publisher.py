#!/usr/bin/env python3
# robot_status_publisher.py
import rospy
from my_robot_pck.msg import RobotStatus  # Import YOUR custom message

def publisher_node():
    rospy.init_node('robot_status_publisher')
    pub = rospy.Publisher('/robot_status', RobotStatus, queue_size=10)
    rate = rospy.Rate(1)  # 1 Hz — slower so you can read it
    
    battery = 100.0
    
    while not rospy.is_shutdown():
        msg = RobotStatus()          # Create an instance of your message
        msg.robot_name = "RoboBot-1"
        msg.battery_level = battery
        msg.is_moving = True
        msg.error_code = 0
        
        pub.publish(msg)
        rospy.loginfo(f"Status published — Battery: {battery:.1f}%")
        
        battery -= 1.0               # Simulate draining battery
        if battery < 0:
            battery = 100.0
            
        rate.sleep()

if __name__ == '__main__':
    try:
        publisher_node()
    except rospy.ROSInterruptException:
        pass