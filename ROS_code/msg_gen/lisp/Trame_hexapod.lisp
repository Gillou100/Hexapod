; Auto-generated. Do not edit!


(cl:in-package Hexapod_Bringup-msg)


;//! \htmlinclude Trame_hexapod.msg.html

(cl:defclass <Trame_hexapod> (roslisp-msg-protocol:ros-message)
  ((header_byte
    :reader header_byte
    :initarg :header_byte
    :type cl:fixnum
    :initform 0)
   (right_vertical_joy_byte
    :reader right_vertical_joy_byte
    :initarg :right_vertical_joy_byte
    :type cl:fixnum
    :initform 0)
   (right_horizontal_joy_byte
    :reader right_horizontal_joy_byte
    :initarg :right_horizontal_joy_byte
    :type cl:fixnum
    :initform 0)
   (left_vertical_joy_byte
    :reader left_vertical_joy_byte
    :initarg :left_vertical_joy_byte
    :type cl:fixnum
    :initform 0)
   (left_horizontal_joy_byte
    :reader left_horizontal_joy_byte
    :initarg :left_horizontal_joy_byte
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

(cl:defclass Trame_hexapod (<Trame_hexapod>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trame_hexapod>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trame_hexapod)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Hexapod_Bringup-msg:<Trame_hexapod> is deprecated: use Hexapod_Bringup-msg:Trame_hexapod instead.")))

(cl:ensure-generic-function 'header_byte-val :lambda-list '(m))
(cl:defmethod header_byte-val ((m <Trame_hexapod>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Hexapod_Bringup-msg:header_byte-val is deprecated.  Use Hexapod_Bringup-msg:header_byte instead.")
  (header_byte m))

(cl:ensure-generic-function 'right_vertical_joy_byte-val :lambda-list '(m))
(cl:defmethod right_vertical_joy_byte-val ((m <Trame_hexapod>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Hexapod_Bringup-msg:right_vertical_joy_byte-val is deprecated.  Use Hexapod_Bringup-msg:right_vertical_joy_byte instead.")
  (right_vertical_joy_byte m))

(cl:ensure-generic-function 'right_horizontal_joy_byte-val :lambda-list '(m))
(cl:defmethod right_horizontal_joy_byte-val ((m <Trame_hexapod>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Hexapod_Bringup-msg:right_horizontal_joy_byte-val is deprecated.  Use Hexapod_Bringup-msg:right_horizontal_joy_byte instead.")
  (right_horizontal_joy_byte m))

(cl:ensure-generic-function 'left_vertical_joy_byte-val :lambda-list '(m))
(cl:defmethod left_vertical_joy_byte-val ((m <Trame_hexapod>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Hexapod_Bringup-msg:left_vertical_joy_byte-val is deprecated.  Use Hexapod_Bringup-msg:left_vertical_joy_byte instead.")
  (left_vertical_joy_byte m))

(cl:ensure-generic-function 'left_horizontal_joy_byte-val :lambda-list '(m))
(cl:defmethod left_horizontal_joy_byte-val ((m <Trame_hexapod>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Hexapod_Bringup-msg:left_horizontal_joy_byte-val is deprecated.  Use Hexapod_Bringup-msg:left_horizontal_joy_byte instead.")
  (left_horizontal_joy_byte m))

(cl:ensure-generic-function 'button_byte-val :lambda-list '(m))
(cl:defmethod button_byte-val ((m <Trame_hexapod>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Hexapod_Bringup-msg:button_byte-val is deprecated.  Use Hexapod_Bringup-msg:button_byte instead.")
  (button_byte m))

(cl:ensure-generic-function 'end_byte-val :lambda-list '(m))
(cl:defmethod end_byte-val ((m <Trame_hexapod>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Hexapod_Bringup-msg:end_byte-val is deprecated.  Use Hexapod_Bringup-msg:end_byte instead.")
  (end_byte m))

(cl:ensure-generic-function 'checksum_byte-val :lambda-list '(m))
(cl:defmethod checksum_byte-val ((m <Trame_hexapod>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Hexapod_Bringup-msg:checksum_byte-val is deprecated.  Use Hexapod_Bringup-msg:checksum_byte instead.")
  (checksum_byte m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trame_hexapod>) ostream)
  "Serializes a message object of type '<Trame_hexapod>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'header_byte)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_vertical_joy_byte)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_horizontal_joy_byte)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_vertical_joy_byte)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_horizontal_joy_byte)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'button_byte)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_byte)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum_byte)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trame_hexapod>) istream)
  "Deserializes a message object of type '<Trame_hexapod>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'header_byte)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_vertical_joy_byte)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_horizontal_joy_byte)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_vertical_joy_byte)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_horizontal_joy_byte)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'button_byte)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_byte)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum_byte)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trame_hexapod>)))
  "Returns string type for a message object of type '<Trame_hexapod>"
  "Hexapod_Bringup/Trame_hexapod")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trame_hexapod)))
  "Returns string type for a message object of type 'Trame_hexapod"
  "Hexapod_Bringup/Trame_hexapod")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trame_hexapod>)))
  "Returns md5sum for a message object of type '<Trame_hexapod>"
  "19d73750726e9d8d4d9709a3c0f3591d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trame_hexapod)))
  "Returns md5sum for a message object of type 'Trame_hexapod"
  "19d73750726e9d8d4d9709a3c0f3591d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trame_hexapod>)))
  "Returns full string definition for message of type '<Trame_hexapod>"
  (cl:format cl:nil "uint8 header_byte~%uint8 right_vertical_joy_byte~%uint8 right_horizontal_joy_byte~%uint8 left_vertical_joy_byte~%uint8 left_horizontal_joy_byte~%uint8 button_byte~%uint8 end_byte~%uint8 checksum_byte~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trame_hexapod)))
  "Returns full string definition for message of type 'Trame_hexapod"
  (cl:format cl:nil "uint8 header_byte~%uint8 right_vertical_joy_byte~%uint8 right_horizontal_joy_byte~%uint8 left_vertical_joy_byte~%uint8 left_horizontal_joy_byte~%uint8 button_byte~%uint8 end_byte~%uint8 checksum_byte~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trame_hexapod>))
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trame_hexapod>))
  "Converts a ROS message object to a list"
  (cl:list 'Trame_hexapod
    (cl:cons ':header_byte (header_byte msg))
    (cl:cons ':right_vertical_joy_byte (right_vertical_joy_byte msg))
    (cl:cons ':right_horizontal_joy_byte (right_horizontal_joy_byte msg))
    (cl:cons ':left_vertical_joy_byte (left_vertical_joy_byte msg))
    (cl:cons ':left_horizontal_joy_byte (left_horizontal_joy_byte msg))
    (cl:cons ':button_byte (button_byte msg))
    (cl:cons ':end_byte (end_byte msg))
    (cl:cons ':checksum_byte (checksum_byte msg))
))
