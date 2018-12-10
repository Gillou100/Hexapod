#include "ros/ros.h"
#include "Hexapod_Bringup/Trame_hexapod.h"



void HexapodCallback(const Hexapod_Bringup::Trame_hexapod::ConstPtr& msg){
  ROS_INFO("Header Byte %d", msg -> header_byte);
  ROS_INFO("Right Vertical Joystick Byte: %d", msg -> right_vertical_joy_byte);
  ROS_INFO("Right Horizontal Joystick Byte: %d", msg -> right_horizontal_joy_byte);
  ROS_INFO("Left Vertical Joystick Byte: %d", msg -> left_vertical_joy_byte);
  ROS_INFO("Left Horizontal Joystick Byte: %d", msg -> left_horizontal_joy_byte);
  ROS_INFO("Button Byte: %d", msg -> button_byte);
  ROS_INFO("End Byte: %d", msg -> end_byte);
  ROS_INFO("Checksum Byte: %d", msg -> checksum_byte);

}

int main(int argc, char **argv){
  ros::init(argc, argv, "ArbotiX");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("ArbotiX/move_command", 1, HexapodCallback);
  ros::spin();
  return 0;
}
