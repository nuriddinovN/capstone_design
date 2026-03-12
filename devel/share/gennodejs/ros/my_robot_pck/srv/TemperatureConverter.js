// Auto-generated. Do not edit!

// (in-package my_robot_pck.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TemperatureConverterRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.celsius = null;
    }
    else {
      if (initObj.hasOwnProperty('celsius')) {
        this.celsius = initObj.celsius
      }
      else {
        this.celsius = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TemperatureConverterRequest
    // Serialize message field [celsius]
    bufferOffset = _serializer.float64(obj.celsius, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TemperatureConverterRequest
    let len;
    let data = new TemperatureConverterRequest(null);
    // Deserialize message field [celsius]
    data.celsius = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_robot_pck/TemperatureConverterRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ffbaa094d1bfdf2743d41684ba87c2ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 celsius
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TemperatureConverterRequest(null);
    if (msg.celsius !== undefined) {
      resolved.celsius = msg.celsius;
    }
    else {
      resolved.celsius = 0.0
    }

    return resolved;
    }
};

class TemperatureConverterResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fahrenheit = null;
      this.valid = null;
    }
    else {
      if (initObj.hasOwnProperty('fahrenheit')) {
        this.fahrenheit = initObj.fahrenheit
      }
      else {
        this.fahrenheit = 0.0;
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TemperatureConverterResponse
    // Serialize message field [fahrenheit]
    bufferOffset = _serializer.float64(obj.fahrenheit, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TemperatureConverterResponse
    let len;
    let data = new TemperatureConverterResponse(null);
    // Deserialize message field [fahrenheit]
    data.fahrenheit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_robot_pck/TemperatureConverterResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d435f65f1f2f3d16cfcfb4341f5717c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 fahrenheit
    bool valid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TemperatureConverterResponse(null);
    if (msg.fahrenheit !== undefined) {
      resolved.fahrenheit = msg.fahrenheit;
    }
    else {
      resolved.fahrenheit = 0.0
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    return resolved;
    }
};

module.exports = {
  Request: TemperatureConverterRequest,
  Response: TemperatureConverterResponse,
  md5sum() { return '7737de072c8391bcef8d331fb8350e5b'; },
  datatype() { return 'my_robot_pck/TemperatureConverter'; }
};
