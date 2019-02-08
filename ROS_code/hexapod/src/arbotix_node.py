#!/usr/bin/env python

# Importation of all the modules needed to work with ros
import rospy,time,serial

# Importation of all the messages type of the node
from std_msgs.msg import String
from hexapod.msg import serial_frame

# Definition of the Serial communication with the ArbotiX on port USB0 at 38400 bps
port = "/dev/ttyUSB0"
baud = 38400
ser = serial.Serial(port, baud, timeout=1)

serial_frame = serial_frame()


# Function to generate the checksum data to put in the payload
def checksum(serial_frame):
    sum = serial_frame.right_v_byte + serial_frame.right_h_byte + serial_frame.left_v_byte + serial_frame.left_h_byte + serial_frame.button_byte
    return(255-(sum % 256))

# Callback function for the node that takes String data type and change the variable in 
# serial_frame to send through serial
def callback(data):
    if data.data == "stop":
        serial_frame.right_v_byte = 128
        serial_frame.right_h_byte = 128
        serial_frame.left_v_byte = 128
        serial_frame.left_h_byte = 128
        serial_frame.button_byte = 16
        serial_frame.checksum_byte = checksum(serial_frame)
# Basic data frame to just go forward
    if data.data == "forward":
        serial_frame.right_v_byte = 128
        serial_frame.right_h_byte = 128
        serial_frame.left_v_byte = 250
        serial_frame.left_h_byte = 128
        serial_frame.button_byte = 16
        serial_frame.checksum_byte = checksum(serial_frame)
# Basic data frame to just go left
    if data.data == "left":
        serial_frame.right_v_byte = 128
        serial_frame.right_h_byte = 128
        serial_frame.left_v_byte = 128
        serial_frame.left_h_byte = 10
        serial_frame.button_byte = 16
        serial_frame.checksum_byte = checksum(serial_frame)
# Basic data frame to just go right
    if data.data == "right":
        serial_frame.right_v_byte = 128
        serial_frame.right_h_byte = 128
        serial_frame.left_v_byte = 128
        serial_frame.left_h_byte = 250
        serial_frame.button_byte = 16
        serial_frame.checksum_byte = checksum(serial_frame)
# Basic data frame to just go backward
    if data.data == "backward":
        serial_frame.right_v_byte = 128
        serial_frame.right_h_byte = 128
        serial_frame.left_v_byte = 10
        serial_frame.left_h_byte = 128
        serial_frame.button_byte = 16
        serial_frame.checksum_byte = checksum(serial_frame)
# Basic data frame to just twist left
    if data.data == "twist left":
        serial_frame.right_v_byte = 128
        serial_frame.right_h_byte = 10
        serial_frame.left_v_byte = 128
        serial_frame.left_h_byte = 128
        serial_frame.button_byte = 16
        serial_frame.checksum_byte = checksum(serial_frame)
# Basic data frame to just twist right
    if data.data == "twist right":
        serial_frame.right_v_byte = 128
        serial_frame.right_h_byte = 250
        serial_frame.left_v_byte = 128
        serial_frame.left_h_byte = 128
        serial_frame.button_byte = 16
        serial_frame.checksum_byte = checksum(serial_frame)



# Definition of the principal node and the serial_frame to send via serial
def arbotix_node():
    rospy.init_node('arbotix', anonymous=False)
# Basic data frame to just stand the robot up
    serial_frame.header_byte = 255
    serial_frame.right_v_byte = 128
    serial_frame.right_h_byte = 128
    serial_frame.left_v_byte = 128
    serial_frame.left_h_byte = 128
    serial_frame.button_byte = 16
    serial_frame.end_byte = 0
    serial_frame.checksum_byte = checksum(serial_frame)
    while not rospy.is_shutdown():
        rospy.Subscriber("hexapod/serial_command", String, callback)
# Sending of the payload through Serial with a frequency of 33 hZ
        ser.write(bytearray([serial_frame.header_byte,
            serial_frame.right_v_byte, serial_frame.right_h_byte,
            serial_frame.left_v_byte, serial_frame.left_h_byte,
            serial_frame.button_byte, serial_frame.end_byte,
            serial_frame.checksum_byte]))
        time.sleep(0.033)

# Main fonction (Mandatory while dealing with ROS) 
if __name__ == '__main__':
    try:
        arbotix_node()
    except rospy.ROSInterruptException:
        pass
