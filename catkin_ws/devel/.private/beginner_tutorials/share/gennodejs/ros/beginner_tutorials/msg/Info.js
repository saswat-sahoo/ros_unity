// Auto-generated. Do not edit!

// (in-package beginner_tutorials.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Vector3 = require('./Vector3.js');

//-----------------------------------------------------------

class Info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.linear = null;
      this.angular = null;
      this.rota = null;
    }
    else {
      if (initObj.hasOwnProperty('linear')) {
        this.linear = initObj.linear
      }
      else {
        this.linear = new Vector3();
      }
      if (initObj.hasOwnProperty('angular')) {
        this.angular = initObj.angular
      }
      else {
        this.angular = new Vector3();
      }
      if (initObj.hasOwnProperty('rota')) {
        this.rota = initObj.rota
      }
      else {
        this.rota = new Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Info
    // Serialize message field [linear]
    bufferOffset = Vector3.serialize(obj.linear, buffer, bufferOffset);
    // Serialize message field [angular]
    bufferOffset = Vector3.serialize(obj.angular, buffer, bufferOffset);
    // Serialize message field [rota]
    bufferOffset = Vector3.serialize(obj.rota, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Info
    let len;
    let data = new Info(null);
    // Deserialize message field [linear]
    data.linear = Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular]
    data.angular = Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [rota]
    data.rota = Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/Info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9424e4f2ea440d61cdcc97ed9f70470f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Vector3  linear
    Vector3  angular
    Vector3  rota
    
    ================================================================================
    MSG: beginner_tutorials/Vector3
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Info(null);
    if (msg.linear !== undefined) {
      resolved.linear = Vector3.Resolve(msg.linear)
    }
    else {
      resolved.linear = new Vector3()
    }

    if (msg.angular !== undefined) {
      resolved.angular = Vector3.Resolve(msg.angular)
    }
    else {
      resolved.angular = new Vector3()
    }

    if (msg.rota !== undefined) {
      resolved.rota = Vector3.Resolve(msg.rota)
    }
    else {
      resolved.rota = new Vector3()
    }

    return resolved;
    }
};

module.exports = Info;
