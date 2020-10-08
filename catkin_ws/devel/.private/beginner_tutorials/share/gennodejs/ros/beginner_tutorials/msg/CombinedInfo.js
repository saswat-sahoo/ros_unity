// Auto-generated. Do not edit!

// (in-package beginner_tutorials.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CombinedInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.linear_acceleration = null;
      this.angular_velocity = null;
      this.rotation = null;
    }
    else {
      if (initObj.hasOwnProperty('linear_acceleration')) {
        this.linear_acceleration = initObj.linear_acceleration
      }
      else {
        this.linear_acceleration = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('rotation')) {
        this.rotation = initObj.rotation
      }
      else {
        this.rotation = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CombinedInfo
    // Check that the constant length array field [linear_acceleration] has the right length
    if (obj.linear_acceleration.length !== 3) {
      throw new Error('Unable to serialize array field linear_acceleration - length must be 3')
    }
    // Serialize message field [linear_acceleration]
    bufferOffset = _arraySerializer.int64(obj.linear_acceleration, buffer, bufferOffset, 3);
    // Check that the constant length array field [angular_velocity] has the right length
    if (obj.angular_velocity.length !== 3) {
      throw new Error('Unable to serialize array field angular_velocity - length must be 3')
    }
    // Serialize message field [angular_velocity]
    bufferOffset = _arraySerializer.int64(obj.angular_velocity, buffer, bufferOffset, 3);
    // Check that the constant length array field [rotation] has the right length
    if (obj.rotation.length !== 3) {
      throw new Error('Unable to serialize array field rotation - length must be 3')
    }
    // Serialize message field [rotation]
    bufferOffset = _arraySerializer.int64(obj.rotation, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CombinedInfo
    let len;
    let data = new CombinedInfo(null);
    // Deserialize message field [linear_acceleration]
    data.linear_acceleration = _arrayDeserializer.int64(buffer, bufferOffset, 3)
    // Deserialize message field [angular_velocity]
    data.angular_velocity = _arrayDeserializer.int64(buffer, bufferOffset, 3)
    // Deserialize message field [rotation]
    data.rotation = _arrayDeserializer.int64(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/CombinedInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81953f79fe8ffdaa1da172c5ee7b8504';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64[3] linear_acceleration
    int64[3] angular_velocity
    int64[3] rotation
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CombinedInfo(null);
    if (msg.linear_acceleration !== undefined) {
      resolved.linear_acceleration = msg.linear_acceleration;
    }
    else {
      resolved.linear_acceleration = new Array(3).fill(0)
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = msg.angular_velocity;
    }
    else {
      resolved.angular_velocity = new Array(3).fill(0)
    }

    if (msg.rotation !== undefined) {
      resolved.rotation = msg.rotation;
    }
    else {
      resolved.rotation = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = CombinedInfo;
