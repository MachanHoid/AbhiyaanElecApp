#!/usr/bin/env python3

import rospy
from std_msgs.msg import Int32
from std_msgs.msg import String

maximum = Int32(0)

def distance_callback(msg: Int32):
    if msg.data > maximum.data:
        maximum.data = msg.data
        pub_msg = String()
        pub_msg.data = String("A new record! ").data + String(str(maximum.data)).data
        pub.publish(pub_msg)

if __name__ == '__main__':
    rospy.init_node('maximum')
    sub = rospy.Subscriber('/distance', Int32, callback=distance_callback)
    pub = rospy.Publisher('/message', String, queue_size=10)

    rospy.loginfo("maximum node has been started")
    rospy.spin()