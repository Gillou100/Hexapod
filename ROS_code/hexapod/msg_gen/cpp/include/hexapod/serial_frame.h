/* Auto-generated by genmsg_cpp for file /home/ubuntu/Stacks/Packages/hexapod/msg/serial_frame.msg */
#ifndef HEXAPOD_MESSAGE_SERIAL_FRAME_H
#define HEXAPOD_MESSAGE_SERIAL_FRAME_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"


namespace hexapod
{
template <class ContainerAllocator>
struct serial_frame_ {
  typedef serial_frame_<ContainerAllocator> Type;

  serial_frame_()
  : header_byte(0)
  , right_v_byte(0)
  , right_h_byte(0)
  , left_v_byte(0)
  , left_h_byte(0)
  , button_byte(0)
  , end_byte(0)
  , checksum_byte(0)
  {
  }

  serial_frame_(const ContainerAllocator& _alloc)
  : header_byte(0)
  , right_v_byte(0)
  , right_h_byte(0)
  , left_v_byte(0)
  , left_h_byte(0)
  , button_byte(0)
  , end_byte(0)
  , checksum_byte(0)
  {
  }

  typedef uint8_t _header_byte_type;
  uint8_t header_byte;

  typedef uint8_t _right_v_byte_type;
  uint8_t right_v_byte;

  typedef uint8_t _right_h_byte_type;
  uint8_t right_h_byte;

  typedef uint8_t _left_v_byte_type;
  uint8_t left_v_byte;

  typedef uint8_t _left_h_byte_type;
  uint8_t left_h_byte;

  typedef uint8_t _button_byte_type;
  uint8_t button_byte;

  typedef uint8_t _end_byte_type;
  uint8_t end_byte;

  typedef uint8_t _checksum_byte_type;
  uint8_t checksum_byte;


  typedef boost::shared_ptr< ::hexapod::serial_frame_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hexapod::serial_frame_<ContainerAllocator>  const> ConstPtr;
}; // struct serial_frame
typedef  ::hexapod::serial_frame_<std::allocator<void> > serial_frame;

typedef boost::shared_ptr< ::hexapod::serial_frame> serial_framePtr;
typedef boost::shared_ptr< ::hexapod::serial_frame const> serial_frameConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::hexapod::serial_frame_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::hexapod::serial_frame_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace hexapod

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::hexapod::serial_frame_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::hexapod::serial_frame_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::hexapod::serial_frame_<ContainerAllocator> > {
  static const char* value() 
  {
    return "25ec212357fb08bcc6002a027d282e2d";
  }

  static const char* value(const  ::hexapod::serial_frame_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x25ec212357fb08bcULL;
  static const uint64_t static_value2 = 0xc6002a027d282e2dULL;
};

template<class ContainerAllocator>
struct DataType< ::hexapod::serial_frame_<ContainerAllocator> > {
  static const char* value() 
  {
    return "hexapod/serial_frame";
  }

  static const char* value(const  ::hexapod::serial_frame_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::hexapod::serial_frame_<ContainerAllocator> > {
  static const char* value() 
  {
    return "uint8 header_byte\n\
uint8 right_v_byte\n\
uint8 right_h_byte\n\
uint8 left_v_byte\n\
uint8 left_h_byte\n\
uint8 button_byte\n\
uint8 end_byte\n\
uint8 checksum_byte\n\
\n\
";
  }

  static const char* value(const  ::hexapod::serial_frame_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::hexapod::serial_frame_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::hexapod::serial_frame_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header_byte);
    stream.next(m.right_v_byte);
    stream.next(m.right_h_byte);
    stream.next(m.left_v_byte);
    stream.next(m.left_h_byte);
    stream.next(m.button_byte);
    stream.next(m.end_byte);
    stream.next(m.checksum_byte);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER
}; // struct serial_frame_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hexapod::serial_frame_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::hexapod::serial_frame_<ContainerAllocator> & v) 
  {
    s << indent << "header_byte: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.header_byte);
    s << indent << "right_v_byte: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.right_v_byte);
    s << indent << "right_h_byte: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.right_h_byte);
    s << indent << "left_v_byte: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.left_v_byte);
    s << indent << "left_h_byte: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.left_h_byte);
    s << indent << "button_byte: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.button_byte);
    s << indent << "end_byte: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.end_byte);
    s << indent << "checksum_byte: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.checksum_byte);
  }
};


} // namespace message_operations
} // namespace ros

#endif // HEXAPOD_MESSAGE_SERIAL_FRAME_H

