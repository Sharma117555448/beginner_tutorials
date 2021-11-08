; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude change_string-request.msg.html

(cl:defclass <change_string-request> (roslisp-msg-protocol:ros-message)
  ((input_string
    :reader input_string
    :initarg :input_string
    :type cl:string
    :initform ""))
)

(cl:defclass change_string-request (<change_string-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <change_string-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'change_string-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<change_string-request> is deprecated: use beginner_tutorials-srv:change_string-request instead.")))

(cl:ensure-generic-function 'input_string-val :lambda-list '(m))
(cl:defmethod input_string-val ((m <change_string-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:input_string-val is deprecated.  Use beginner_tutorials-srv:input_string instead.")
  (input_string m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <change_string-request>) ostream)
  "Serializes a message object of type '<change_string-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'input_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'input_string))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <change_string-request>) istream)
  "Deserializes a message object of type '<change_string-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input_string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'input_string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<change_string-request>)))
  "Returns string type for a service object of type '<change_string-request>"
  "beginner_tutorials/change_stringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'change_string-request)))
  "Returns string type for a service object of type 'change_string-request"
  "beginner_tutorials/change_stringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<change_string-request>)))
  "Returns md5sum for a message object of type '<change_string-request>"
  "3b4ae52729cca8f48b577fc1175d09e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'change_string-request)))
  "Returns md5sum for a message object of type 'change_string-request"
  "3b4ae52729cca8f48b577fc1175d09e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<change_string-request>)))
  "Returns full string definition for message of type '<change_string-request>"
  (cl:format cl:nil "string input_string~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'change_string-request)))
  "Returns full string definition for message of type 'change_string-request"
  (cl:format cl:nil "string input_string~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <change_string-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'input_string))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <change_string-request>))
  "Converts a ROS message object to a list"
  (cl:list 'change_string-request
    (cl:cons ':input_string (input_string msg))
))
;//! \htmlinclude change_string-response.msg.html

(cl:defclass <change_string-response> (roslisp-msg-protocol:ros-message)
  ((output_string
    :reader output_string
    :initarg :output_string
    :type cl:string
    :initform ""))
)

(cl:defclass change_string-response (<change_string-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <change_string-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'change_string-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<change_string-response> is deprecated: use beginner_tutorials-srv:change_string-response instead.")))

(cl:ensure-generic-function 'output_string-val :lambda-list '(m))
(cl:defmethod output_string-val ((m <change_string-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:output_string-val is deprecated.  Use beginner_tutorials-srv:output_string instead.")
  (output_string m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <change_string-response>) ostream)
  "Serializes a message object of type '<change_string-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'output_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'output_string))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <change_string-response>) istream)
  "Deserializes a message object of type '<change_string-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'output_string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'output_string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<change_string-response>)))
  "Returns string type for a service object of type '<change_string-response>"
  "beginner_tutorials/change_stringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'change_string-response)))
  "Returns string type for a service object of type 'change_string-response"
  "beginner_tutorials/change_stringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<change_string-response>)))
  "Returns md5sum for a message object of type '<change_string-response>"
  "3b4ae52729cca8f48b577fc1175d09e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'change_string-response)))
  "Returns md5sum for a message object of type 'change_string-response"
  "3b4ae52729cca8f48b577fc1175d09e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<change_string-response>)))
  "Returns full string definition for message of type '<change_string-response>"
  (cl:format cl:nil "string output_string~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'change_string-response)))
  "Returns full string definition for message of type 'change_string-response"
  (cl:format cl:nil "string output_string~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <change_string-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'output_string))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <change_string-response>))
  "Converts a ROS message object to a list"
  (cl:list 'change_string-response
    (cl:cons ':output_string (output_string msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'change_string)))
  'change_string-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'change_string)))
  'change_string-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'change_string)))
  "Returns string type for a service object of type '<change_string>"
  "beginner_tutorials/change_string")