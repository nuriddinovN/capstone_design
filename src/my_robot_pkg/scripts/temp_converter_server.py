#!/usr/bin/env python3
import rospy
from my_robot_pck.srv import TemperatureConverter, TemperatureConverterResponse

ABSOLUTE_ZERO_CELSIUS = -273.15

def handle_convert(req):
    """
    Handles incoming temperature conversion requests.
    
    Physics rule: nothing can be colder than absolute zero.
    If the input violates this, we return valid=False.
    """
    rospy.loginfo("Received conversion request: " + str(req.celsius) + " C")
    
    response = TemperatureConverterResponse()
    
    if req.celsius < ABSOLUTE_ZERO_CELSIUS:
        rospy.logwarn("Invalid temperature! Below absolute zero: " + str(req.celsius))
        response.fahrenheit = 0.0
        response.valid = False
    else:
        # Formula: F = (C × 9/5) + 32
        response.fahrenheit = (req.celsius * 9.0 / 5.0) + 32.0
        response.valid = True
        rospy.loginfo("Converted: " + str(req.celsius) + 
                      " C --> " + str(response.fahrenheit) + " F")
    
    return response

def temp_converter_server():
    rospy.init_node('temp_converter_server')
    
    s = rospy.Service('convert_temperature', TemperatureConverter, handle_convert)
    
    rospy.loginfo("Temperature Converter Server is ready!")
    rospy.loginfo("Waiting for conversion requests...")
    rospy.spin()

if __name__ == "__main__":
    temp_converter_server()
