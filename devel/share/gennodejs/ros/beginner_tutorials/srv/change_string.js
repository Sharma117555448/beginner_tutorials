// Auto-generated. Do not edit!

// (in-package beginner_tutorials.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class change_stringRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input_string = null;
    }
    else {
      if (initObj.hasOwnProperty('input_string')) {
        this.input_string = initObj.input_string
      }
      else {
        this.input_string = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type change_stringRequest
    // Serialize message field [input_string]
    bufferOffset = _serializer.string(obj.input_string, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type change_stringRequest
    let len;
    let data = new change_stringRequest(null);
    // Deserialize message field [input_string]
    data.input_string = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.input_string.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/change_stringRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6668f58127cd6f6b2b64175ee1268373';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string input_string
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new change_stringRequest(null);
    if (msg.input_string !== undefined) {
      resolved.input_string = msg.input_string;
    }
    else {
      resolved.input_string = ''
    }

    return resolved;
    }
};

class change_stringResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output_string = null;
    }
    else {
      if (initObj.hasOwnProperty('output_string')) {
        this.output_string = initObj.output_string
      }
      else {
        this.output_string = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type change_stringResponse
    // Serialize message field [output_string]
    bufferOffset = _serializer.string(obj.output_string, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type change_stringResponse
    let len;
    let data = new change_stringResponse(null);
    // Deserialize message field [output_string]
    data.output_string = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.output_string.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/change_stringResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '016361cdee7e84e8c448cca68658d16b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string output_string
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new change_stringResponse(null);
    if (msg.output_string !== undefined) {
      resolved.output_string = msg.output_string;
    }
    else {
      resolved.output_string = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: change_stringRequest,
  Response: change_stringResponse,
  md5sum() { return '3b4ae52729cca8f48b577fc1175d09e3'; },
  datatype() { return 'beginner_tutorials/change_string'; }
};
