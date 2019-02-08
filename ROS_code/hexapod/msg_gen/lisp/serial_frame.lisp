; Auto-generated. Do not edit!


(cl:in-package hexapod-msg)


;//! \htmlinclude serial_frame.msg.html

(cl:defclass <serial_frame> (roslisp-msg-protocol:ros-message)
  ((header_byte
    :reader header_byte
    :initarg :header_byte
    :type cl:fixnum
    :initform 0)
   (right_v_byte
    :reader right_v_byte
    :initarg :right_v_byte
    :type cl:fixnum
    :initform 0)
   (right_h_byte
    :reader right_h_byte
    :initarg :right_h_byte
    :type cl:fixnum
    :initform 0)
   (left_v_byte
    :reader left_v_byte
    :initarg :left_v_byte
    :type cl:fixnum
    :initform 0)
   (left_h_byte
    :reader left_h_byte
    :initarg :left_h_byte
    :type cl:fixnum
    :initform 0)
   (button_byte
    :reader button_byte
    :initarg :button_byte
    :type cl:fixnum
    :initform 0)
   (end_byte
    :reader end_byte
    :initarg :end_byte
    :type cl:fixnum
    :initform 0)
   (checksum_byte
    :reader checksum_byte
    :initarg :checksum_byte
    :type cl:fixnum
    :initform 0))
)

(cl:defclass serial_frame (<serial_frame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <serial_frame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'serial_frame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hexapod-msg:<serial_frame> is deprecated: use hexapod-msg:serial_frame instead.")))

(cl:ensure-generic-function 'header_byte-val :lambda-list '(m))
(cl:defmethod header_byte-val ((m <serial_frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod-msg:header_byte-val is deprecated.  Use hexapod-msg:header_byte instead.")
  (header_byte m))

(cl:ensure-generic-function 'right_v_byte-val :lambda-list '(m))
(cl:defmethod right_v_byte-val ((m <serial_frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod-msg:right_v_byte-val is deprecated.  Use hexapod-msg:right_v_byte instead.")
  (right_v_byte m))

(cl:ensure-generic-function 'right_h_byte-val :lambda-list '(m))
(cl:defmethod right_h_byte-val ((m <serial_frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod-msg:right_h_byte-val is deprecated.  Use hexapod-msg:right_h_byte instead.")
  (right_h_byte m))

(cl:ensure-generic-function 'left_v_byte-val :lambda-list '(m))
(cl:defmethod left_v_byte-val ((m <serial_frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod-msg:left_v_byte-val is deprecated.  Use hexapod-msg:left_v_byte instead.")
  (left_v_byte m))

(cl:ensure-generic-function 'left_h_byte-val :lambda-list '(m))
(cl:defmethod left_h_byte-val ((m <serial_frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod-msg:left_h_byte-val is deprecated.  Use hexapod-msg:left_h_byte instead.")
  (left_h_byte m))

(cl:ensure-generic-function 'button_byte-val :lambda-list '(m))
(cl:defmethod button_byte-val ((m <serial_frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod-msg:button_byte-val is deprecated.  Use hexapod-msg:button_byte instead.")
  (button_byte m))

(cl:ensure-generic-function 'end_byte-val :lambda-list '(m))
(cl:defmethod end_byte-val ((m <serial_frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod-msg:end_byte-val is deprecated.  Use hexapod-msg:end_byte instead.")
  (end_byte m))

(cl:ensure-generic-function 'checksum_byte-val :lambda-list '(m))
(cl:defmethod checksum_byte-val ((m <serial_frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod-msg:checksum_byte-val is deprecated.  Use hexapod-msg:checksum_byte instead.")
  (checksum_byte m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <serial_frame>) ostream)
  "Serializes a message object of type '<serial_frame>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'header_byte)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_v_byte)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_h_byte)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_v_byte)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_h_byte)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'button_byte)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_byte)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum_byte)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <serial_frame>) istream)
  "Deserializes a message object of type '<serial_frame>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'header_byte)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_v_byte)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_h_byte)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_v_byte)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_h_byte)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'button_byte)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_byte)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum_byte)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<serial_frame>)))
  "Returns string type for a message object of type '<serial_frame>"
  "hexapod/serial_frame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'serial_frame)))
  "Returns string type for a message object of type 'serial_frame"
  "hexapod/serial_frame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<serial_frame>)))
  "Returns md5sum for a message object of type '<serial_frame>"
  "25ec212357fb08bcc6002a027d282e2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'serial_frame)))
  "Returns md5sum for a message object of type 'serial_frame"
  "25ec212357fb08bcc6002a027d282e2d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<serial_frame>)))
  "Returns full string definition for message of type '<serial_frame>"
  (cl:format cl:nil "uint8 header_byte~%uint8 right_v_byte~%uint8 right_h_byte~%uint8 left_v_byte~%uint8 left_h_byte~%uint8 button_byte~%uint8 end_byte~%uint8 checksum_byte~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'serial_frame)))
  "Returns full string definition for message of type 'serial_frame"
  (cl:format cl:nil "uint8 header_byte~%uint8 right_v_byte~%uint8 right_h_byte~%uint8 left_v_byte~%uint8 left_h_byte~%uint8 button_byte~%uint8 end_byte~%uint8 checksum_byte~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <serial_frame>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <serial_frame>))
  "Converts a ROS message object to a list"
  (cl:list 'serial_frame
    (cl:cons ':header_byte (header_byte msg))
    (cl:cons ':right_v_byte (right_v_byte msg))
    (cl:cons ':right_h_byte (right_h_byte msg))
    (cl:cons ':left_v_byte (left_v_byte msg))
    (cl:cons ':left_h_byte (left_h_byte msg))
    (cl:cons ':button_byte (button_byte msg))
    (cl:cons ':end_byte (end_byte msg))
    (cl:cons ':checksum_byte (checksum_byte msg))
))
