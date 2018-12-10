#include <ros/ros.h>
#include <signal.h>
#include <termios.h>
#include <stdio.h>
#include "Hexapod_Bringup/Trame_hexapod.h"

#define KEYCODE_R 0x43
#define KEYCODE_L 0x44
#define KEYCODE_F 0x41
#define KEYCODE_B 0x42

int kfd = 0;
struct termios cooked, raw;

void quit(int sig)
{
  (void)sig;
  tcsetattr(kfd, TCSANOW, &cooked);
  ros::shutdown();
  exit(0);
}

int main(int argc, char** argv)
{

  ros::init(argc, argv, "Hexapod_teleop");
  ros::NodeHandle nh_;
  ros::Publisher trame_hexapod_pub_;
  trame_hexapod_pub_ = nh_.advertise<Hexapod_Bringup::Trame_hexapod>("ArbotiX/move_command", 1);
  signal(SIGINT,quit);

  char c;

  tcgetattr(kfd, &cooked);
  memcpy(&raw, &cooked, sizeof(struct termios));
  raw.c_lflag &=~ (ICANON | ECHO);
  raw.c_cc[VEOL] = 1;
  raw.c_cc[VEOF] = 2;
  tcsetattr(kfd, TCSANOW, &raw);

  puts("Reading from keyboard");
  puts("---------------------------");
  puts("Use arrow keys to move the hexapod.");

  bool to_publish = false;
  for(;;)
  {
    Hexapod_Bringup::Trame_hexapod trame_hexapod;
    if(read(kfd, &c, 1) < 0)
    {
      perror("read():");
      exit(-1);
    }
    switch(c)
    {
      case KEYCODE_L:
        ROS_INFO("LEFT");
        trame_hexapod.header_byte=255;
        trame_hexapod.right_vertical_joy_byte=127;
        trame_hexapod.right_horizontal_joy_byte=127;
        trame_hexapod.left_vertical_joy_byte=127;
        trame_hexapod.left_horizontal_joy_byte=0;
        trame_hexapod.button_byte=0;
        trame_hexapod.end_byte=0;
        trame_hexapod.checksum_byte=255 - (trame_hexapod.left_vertical_joy_byte
          + trame_hexapod.left_horizontal_joy_byte + trame_hexapod.right_vertical_joy_byte
          + trame_hexapod.right_horizontal_joy_byte + trame_hexapod.button_byte)% 256;
        to_publish = true;
        break;
      case KEYCODE_R:
        ROS_INFO("RIGHT");
        trame_hexapod.header_byte=255;
        trame_hexapod.right_vertical_joy_byte=127;
        trame_hexapod.right_horizontal_joy_byte=127;
        trame_hexapod.left_vertical_joy_byte=127;
        trame_hexapod.left_horizontal_joy_byte=255;
        trame_hexapod.button_byte=0;
        trame_hexapod.end_byte=0;
        trame_hexapod.checksum_byte=255 - (trame_hexapod.left_vertical_joy_byte
          + trame_hexapod.left_horizontal_joy_byte + trame_hexapod.right_vertical_joy_byte
          + trame_hexapod.right_horizontal_joy_byte + trame_hexapod.button_byte)% 256;
        to_publish = true;
        break;
      case KEYCODE_F:
        ROS_INFO("FORWARD");
        trame_hexapod.header_byte=255;
        trame_hexapod.right_vertical_joy_byte=127;
        trame_hexapod.right_horizontal_joy_byte=127;
        trame_hexapod.left_vertical_joy_byte=255;
        trame_hexapod.left_horizontal_joy_byte=127;
        trame_hexapod.button_byte=0;
        trame_hexapod.end_byte=0;
        trame_hexapod.checksum_byte=255 - (trame_hexapod.left_vertical_joy_byte
          + trame_hexapod.left_horizontal_joy_byte + trame_hexapod.right_vertical_joy_byte
          + trame_hexapod.right_horizontal_joy_byte + trame_hexapod.button_byte)% 256;
        to_publish = true;
        break;
      case KEYCODE_B:
        ROS_INFO("BACKWARD");
        trame_hexapod.header_byte=255;
        trame_hexapod.right_vertical_joy_byte=127;
        trame_hexapod.right_horizontal_joy_byte=127;
        trame_hexapod.left_vertical_joy_byte=0;
        trame_hexapod.left_horizontal_joy_byte=127;
        trame_hexapod.button_byte=0;
        trame_hexapod.end_byte=0;
        trame_hexapod.checksum_byte=255 - (trame_hexapod.left_vertical_joy_byte
          + trame_hexapod.left_horizontal_joy_byte + trame_hexapod.right_vertical_joy_byte
          + trame_hexapod.right_horizontal_joy_byte + trame_hexapod.button_byte)% 256;

        to_publish = true;
        break;
    }
    if (to_publish){
      trame_hexapod_pub_.publish(trame_hexapod);
      to_publish = false;
    }
  }

  return(0);
}
