#!/usr/bin/env python3
import rospy
import actionlib
from geometry_msgs.msg import PoseStamped
from my_robot_pck.msg import NavigateAction, NavigateGoal

def feedback_cb(feedback):
    rospy.loginfo(f"Progress: {feedback.progress_percentage:.1f}%  "
                  f"Distance: {feedback.distance_to_goal:.2f} m  "
                  f"Status: {feedback.current_status}")

def main():
    rospy.init_node('navigation_client')

    # Create client and wait for server
    client = actionlib.SimpleActionClient('navigate', NavigateAction)
    rospy.loginfo("Waiting for action server...")
    client.wait_for_server()

    # Build goal
    goal = NavigateGoal()
    goal.target_pose.header.frame_id = "map"
    goal.target_pose.pose.position.x = 5.0
    goal.target_pose.pose.position.y = 3.0
    goal.max_speed       = 0.5
    goal.avoid_obstacles = True

    # Send goal with feedback callback
    client.send_goal(goal, feedback_cb=feedback_cb)
    rospy.loginfo("Goal sent — waiting for result...")

    # Wait (non-blocking — you could do other work here)
    client.wait_for_result(rospy.Duration(60.0))   # timeout: 60 s

    result = client.get_result()
    state  = client.get_state()    # actionlib.GoalStatus constants
    rospy.loginfo(f"State: {state}  Success: {result.success}  "
                  f"Distance: {result.total_distance:.1f} m")

if __name__ == '__main__':
    main()
