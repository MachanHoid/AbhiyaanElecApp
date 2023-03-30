; Auto-generated. Do not edit!


(cl:in-package helloworld-msg)


;//! \htmlinclude CheckedData.msg.html

(cl:defclass <CheckedData> (roslisp-msg-protocol:ros-message)
  ((rx
    :reader rx
    :initarg :rx
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (checksum
    :reader checksum
    :initarg :checksum
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CheckedData (<CheckedData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckedData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckedData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name helloworld-msg:<CheckedData> is deprecated: use helloworld-msg:CheckedData instead.")))

(cl:ensure-generic-function 'rx-val :lambda-list '(m))
(cl:defmethod rx-val ((m <CheckedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader helloworld-msg:rx-val is deprecated.  Use helloworld-msg:rx instead.")
  (rx m))

(cl:ensure-generic-function 'checksum-val :lambda-list '(m))
(cl:defmethod checksum-val ((m <CheckedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader helloworld-msg:checksum-val is deprecated.  Use helloworld-msg:checksum instead.")
  (checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckedData>) ostream)
  "Serializes a message object of type '<CheckedData>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'rx))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'checksum)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckedData>) istream)
  "Deserializes a message object of type '<CheckedData>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rx) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rx)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'checksum)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckedData>)))
  "Returns string type for a message object of type '<CheckedData>"
  "helloworld/CheckedData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckedData)))
  "Returns string type for a message object of type 'CheckedData"
  "helloworld/CheckedData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckedData>)))
  "Returns md5sum for a message object of type '<CheckedData>"
  "c353c169969e7cd2afff681cde037722")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckedData)))
  "Returns md5sum for a message object of type 'CheckedData"
  "c353c169969e7cd2afff681cde037722")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckedData>)))
  "Returns full string definition for message of type '<CheckedData>"
  (cl:format cl:nil "uint8[] rx~%uint16 checksum~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckedData)))
  "Returns full string definition for message of type 'CheckedData"
  (cl:format cl:nil "uint8[] rx~%uint16 checksum~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckedData>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rx) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckedData>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckedData
    (cl:cons ':rx (rx msg))
    (cl:cons ':checksum (checksum msg))
))
