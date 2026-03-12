#!/usr/bin/env python3
import rospy
from my_robot_pck.srv import AddTwoInts

def add_two_ints_client(x, y):
    # WAIT until the service is available
    # This blocks until the server node is running
    rospy.loginfo("Waiting for service 'add_two_ints' to become available...")
    rospy.wait_for_service('add_two_ints')
    rospy.loginfo("Service found! Sending request...")
    
    try:
        # Create a callable proxy — like a local function that calls the server
        add_two_ints = rospy.ServiceProxy('add_two_ints', AddTwoInts)
        
        # Call it — this BLOCKS until the server responds
        resp = add_two_ints(x, y)
        
        # resp contains the fields from the RESPONSE part of AddTwoInts.srv
        return resp.sum
        
    except rospy.ServiceException as e:
        rospy.logerr("Service call failed: " + str(e))
        return None

if __name__ == "__main__":
    rospy.init_node('add_two_ints_client')
    
    rospy.loginfo("Calling service: 3 + 7")
    result = add_two_ints_client(3, 7)
    rospy.loginfo("Result: 3 + 7 = " + str(result))
    
    rospy.loginfo("Calling service: 100 + 250")
    result2 = add_two_ints_client(100, 250)
    rospy.loginfo("Result: 100 + 250 = " + str(result2))
