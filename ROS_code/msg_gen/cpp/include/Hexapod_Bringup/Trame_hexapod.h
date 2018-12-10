/* Auto-generated by genmsg_cpp for file /home/antoine/Stacks/Packages/Hexapod_Bringup/msg/Trame_hexapod.msg */
#ifndef HEXAPOD_BRINGUP_MESSAGE_TRAME_HEXAPOD_H
#define HEXAPOD_BRINGUP_MESSAGE_TRAME_HEXAPOD_H
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


namespace Hexapod_Bringup
{
template <class ContainerAllocator>
struct Trame_hexapod_ {
  typedef Trame_hexapod_<ContainerAllocator> Type;

  Trame_hexapod_()
  : header_byte(0)
  , right_vertical_joy_byte(0)
  , right_horizontal_joy_byte(0)
  , left_vertical_joy_byte(0)
  , left_horizontal_joy_byte(0)
  , button_byte(0)
  , end_byte(0)
  , checksum_byte(0)
  {
  }

  Trame_hexapod_(const ContainerAllocator& _alloc)
  : header_byte(0)
  , right_vertical_joy_byte(0)
  , right_horizontal_joy_byte(0)
  , left_vertical_joy_byte(0)
  , left_horizontal_joy_byte(0)
  , button_byte(0)
  , end_byte(0)
  , checksum_byte(0)
  {
  }

  typedef uint8_t _header_byte_type;
  uint8_t header_byte;

  typedef uint8_t _right_vertical_joy_byte_type;
  uint8_t right_vertical_joy_byte;

  typedef uint8_t _right_horizontal_joy_byte_type;
  uint8_t right_horizontal_joy_byte;

  typedef uint8_t _left_vertical_joy_byte_type;
  uint8_t left_vertical_joy_byte;

  typedef uint8_t _left_horizontal_joy_byte_type;
  uint8_t left_horizontal_joy_byte;

  typedef uint8_t _button_byte_type;
  uint8_t button_byte;

  typedef uint8_t _end_byte_type;
  uint8_t end_byte;

  typedef uint8_t _checksum_byte_type;
  uint8_t checksum_byte;


  typedef boost::shared_ptr< ::Hexapod_Bringup::Trame_hexapod_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::Hexapod_Bringup::Trame_hexapod_<ContainerAllocator>  const> ConstPtr;
}; // struct Trame_hexapod
typedef  ::Hexapod_Bringup::Trame_hexapod_<std::allocator<void> > Trame_hexapod;

typedef boost::shared_ptr< ::Hexapod_Bringup::Trame_hexapod> Trame_hexapodPtr;
typedef boost::shared_ptr< ::Hexapod_Bringup::Trame_hexapod const> Trame_hexapodConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::Hexapod_Bringup::Trame_hexapod_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::Hexapod_Bringup::Trame_hexapod_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace Hexapod_Bringup

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::Hexapod_Bringup::Trame_hexapod_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::Hexapod_Bringup::Trame_hexapod_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::Hexapod_Bringup::Trame_hexapod_<ContainerAllocator> > {
  static const char* value() 
  {
    return "19d73750726e9d8d4d9709a3c0f3591d";
  }

  static const char* value(const  ::Hexapod_Bringup::Trame_hexapod_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x19d73750726e9d8dULL;
  static const uint64_t static_value2 = 0x4d9709a3c0f3591dULL;
};

template<class ContainerAllocator>
struct DataType< ::Hexapod_Bringup::Trame_hexapod_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Hexapod_Bringup/Trame_hexapod";
  }

  static const char* value(const  ::Hexapod_Bringup::Trame_hexapod_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::Hexapod_Bringup::Trame_hexapod_<ContainerAllocator> > {
  static const char* value() 
  {
    return "uint8 header_byte\n\
uint8 right_vertical_joy_byte\n\
uint8 right_horizontal_joy_byte\n\
uint8 left_vertical_joy_byte\n\
uint8 left_horizontal_joy_byte\n\
uint8 button_byte\n\
uint8 end_byte\n\
uint8 checksum_byte\n\
\n\
";
  }

  static const char* value(const  ::Hexapod_Bringup::Trame_hexapod_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::Hexapod_Bringup::Trame_hexapod_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::Hexapod_Bringup::Trame_hexapod_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header_byte);
    stream.next(m.right_vertical_joy_byte);
    stream.next(m.right_horizontal_joy_byte);
    stream.next(m.left_vertical_joy_byte);
    stream.next(m.left_horizontal_joy_byte);
    stream.next(m.button_byte);
    stream.next(m.end_byte);
    stream.next(m.checksum_byte);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER
}; // struct Trame_hexapod_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::Hexapod_Bringup::Trame_hexapod_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::Hexapod_Bringup::Trame_hexapod_<ContainerAllocator> & v) 
  {
    s << indent << "header_byte: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.header_byte);
    s << indent << "right_vertical_joy_byte: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.right_vertical_joy_byte);
    s << indent << "right_horizontal_joy_byte: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.right_horizontal_joy_byte);
    s << indent << "left_vertical_joy_byte: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.left_vertical_joy_byte);
    s << indent << "left_horizontal_joy_byte: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.left_horizontal_joy_byte);
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

#endif // HEXAPOD_BRINGUP_MESSAGE_TRAME_HEXAPOD_H

