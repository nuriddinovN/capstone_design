#!/usr/bin/env python3
import rospy
from my_robot_pck.srv import AddTwoInts, AddTwoIntsResponse

def handle_add_two_ints(req):
    """
    This function is called every time a client calls the service.
    req contains the fields from the REQUEST part of AddTwoInts.srv
    We must return an AddTwoIntsResponse object.
    """
    result = req.a + req.b
    rospy.loginfo("Received request: " + str(req.a) + " + " + str(req.b))
    rospy.loginfo("Returning result: " + str(result))
    return AddTwoIntsResponse(result)

def add_two_ints_server():
    rospy.init_node('add_two_ints_server')
    
    # Register this node as a service provider
    # Arguments: service_name, service_type, handler_function
    s = rospy.Service('add_two_ints', AddTwoInts, handle_add_two_ints)
    
    rospy.loginfo("Server is ready and waiting for requests...")
    rospy.spin()  # Block here — wake up only when a request arrives

if __name__ == "__main__":
    add_two_ints_server()
