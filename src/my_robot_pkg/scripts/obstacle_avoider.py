#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan

class ObstacleAvoider:
    def __init__(self):
        rospy.init_node('obstacle_avoider')
        self.lane_cmd = Twist()
        self.obstacle_detected = False
        self.turn_direction = 0.5
        
        # Listen to the cloned GitHub Camera's driving commands
        rospy.Subscriber('/cmd_vel_lane', Twist, self.lane_cmd_cb)
        
        # Listen to the LiDAR scanner
        rospy.Subscriber('/scan', LaserScan, self.scan_cb)
        
        # Publish the FINAL command to the robot's wheels
        self.cmd_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
        
    def lane_cmd_cb(self, msg):
        self.lane_cmd = msg
        
    def scan_cb(self, msg):
        # Scan 30 degrees left and 30 degrees right of center
        left_ranges = [r for r in msg.ranges[0:30] if 0.0 < r < 10.0]
        right_ranges = [r for r in msg.ranges[330:359] if 0.0 < r < 10.0]
        
        min_left = min(left_ranges) if left_ranges else 10.0
        min_right = min(right_ranges) if right_ranges else 10.0
        
        # If any wall is closer than 35cm, trigger the override!
        if min_left < 0.35 or min_right < 0.35:
            self.obstacle_detected = True
            # Smart avoidance: Turn away from the wall that is closest
            if min_left < min_right:
                self.turn_direction = -0.5 # Wall is on the left, turn right
            else:
                self.turn_direction = 0.5  # Wall is on the right, turn left
        else:
            self.obstacle_detected = False

    def run(self):
        rate = rospy.Rate(20)
        while not rospy.is_shutdown():
            final_cmd = Twist()
            
            if self.obstacle_detected:
                final_cmd.linear.x = 0.0 # Hit the brakes
                final_cmd.angular.z = self.turn_direction # Steer away
            else:
                final_cmd = self.lane_cmd # Follow the cloned GitHub lane node
            
            self.cmd_pub.publish(final_cmd)
            rate.sleep()

if __name__ == '__main__':
    try:
        avoider = ObstacleAvoider()
        avoider.run()
    except rospy.ROSInterruptException:
        pass
