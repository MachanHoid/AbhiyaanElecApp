// Auto-generated. Do not edit!

// (in-package helloworld.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CheckedData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rx = null;
      this.checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('rx')) {
        this.rx = initObj.rx
      }
      else {
        this.rx = [];
      }
      if (initObj.hasOwnProperty('checksum')) {
        this.checksum = initObj.checksum
      }
      else {
        this.checksum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckedData
    // Serialize message field [rx]
    bufferOffset = _arraySerializer.uint8(obj.rx, buffer, bufferOffset, null);
    // Serialize message field [checksum]
    bufferOffset = _serializer.uint16(obj.checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckedData
    let len;
    let data = new CheckedData(null);
    // Deserialize message field [rx]
    data.rx = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [checksum]
    data.checksum = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.rx.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'helloworld/CheckedData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c353c169969e7cd2afff681cde037722';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] rx
    uint16 checksum
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckedData(null);
    if (msg.rx !== undefined) {
      resolved.rx = msg.rx;
    }
    else {
      resolved.rx = []
    }

    if (msg.checksum !== undefined) {
      resolved.checksum = msg.checksum;
    }
    else {
      resolved.checksum = 0
    }

    return resolved;
    }
};

module.exports = CheckedData;
