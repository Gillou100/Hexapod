#!/usr/bin/env python

# Importation of all the modules needed to deal with ROS
import rospy,socket,time

# Importation of the data type for ROS
from std_msgs.msg import String

# Definition of all the stuff needed to connect to a server
host = "192.168.0.115"
port = 5035
socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
socket.connect((host, port))
to_publish = String()

dirty = False

# Function to define the ROS node for the publisher in serial_command topic
def socket_node():
    rospy.init_node('socket_node', anonymous = False)
    pub = rospy.Publisher('hexapod/serial_command', String, queue_size = 1)
    while not rospy.is_shutdown():

# Check what the server is sending us and publish the command to serial_command topic
        received_message = socket.recv(128)
        if received_message == "Avancer\r\n":
            to_publish.data = "forward"
            dirty = True
	if received_message == "Position de base\r\n":
	    to_publish.data = "stop"
	    dirty = True
	if received_message == "Reculer\r\n":
	    to_publish.data = "backward"
	    dirty = True
	if received_message == "Tourne vers la droite\r\n":
	    to_publish.data = "twist right"
	    dirty = True
	if received_message == "Tourne vers la gauche\r\n":
	    to_publish.data = "twist left"
    	    dirty = True
	if received_message == "Droite crabe\r\n":
	    to_publish.data = "right"
	    dirty = True
	if received_message == "Gauche crabe\r\n":
	    to_publish.data = "left"
	    dirty = True 
# These are the command for the demo button A, try every type of movement
        if received_message == "Bouton A\r\n":
            to_publish.data = "forward"
            for i in range(0,100):
                pub.publish(to_publish)
		time.sleep(0.030)
            to_publish.data= "stop"
            for i in range(0,50):
                pub.publish(to_publish)
                time.sleep(0.030)
            to_publish.data = "twist left"
            for i in range(0,100):
                pub.publish(to_publish)
                time.sleep(0.030)
            to_publish.data= "stop"
            for i in range(0,50):
                pub.publish(to_publish)
                time.sleep(0.030)
            to_publish.data = "twist right"
            for i in range(0,100):
                pub.publish(to_publish)
                time.sleep(0.030)
            to_publish.data= "stop"
            for i in range(0,50):
                pub.publish(to_publish)
                time.sleep(0.030)
            to_publish.data = "backward"
            for i in range(0,50):
                pub.publish(to_publish)
                time.sleep(0.030)
            to_publish.data = "forward"
            for i in range(0,50):
                pub.publish(to_publish)
                time.sleep(0.030)
            dirty = True
	    to_publish.data = "stop"
#if the order changes, allow to publish to the topic every 33 ms 
        if dirty :
            pub.publish(to_publish)
            time.sleep(0.030)
    socket.close()

# Main function (Mandatory when working with ROS)
if __name__ == '__main__':
    try :
        socket_node()
    except rospy.ROSInterruptException :
        pass
