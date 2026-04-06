#!/usr/bin/env python3
import rospy
from my_robot_pck.srv import TemperatureConverter

def convert_temperature(celsius_value):
    rospy.wait_for_service('convert_temperature')
    try:
        converter = rospy.ServiceProxy('convert_temperature', TemperatureConverter)
        response = converter(celsius_value)
        return response
    except rospy.ServiceException as e:
        rospy.logerr("Service call failed: " + str(e))
        return None

def run_tests():
    rospy.init_node('temp_converter_client')
    rospy.loginfo("Starting temperature conversion tests...")
    
    # Test cases: normal values + edge cases + invalid
    test_values = [
        0.0,       # Water freezing point -> should be 32 F
        100.0,     # Water boiling point  -> should be 212 F
        -40.0,     # Equal in both scales -> should be -40 F
        37.0,      # Human body temperature -> should be 98.6 F
        -273.15,   # Absolute zero -> should be valid=True
        -300.0,    # Below absolute zero -> should be valid=False
    ]
    
    rospy.loginfo("=" * 45)
    
    for temp_c in test_values:
        resp = convert_temperature(temp_c)
        
        if resp is None:
            rospy.logerr("No response received for " + str(temp_c))
            continue
            
        if resp.valid:
            rospy.loginfo(
                str(temp_c) + " C  ==>  " + 
                str(round(resp.fahrenheit, 2)) + " F  [VALID]"
            )
        else:
            rospy.logwarn(
                str(temp_c) + " C  ==>  INVALID (below absolute zero)"
            )
    
    rospy.loginfo("=" * 45)
    rospy.loginfo("All tests completed.")

if __name__ == "__main__":
    run_tests()
