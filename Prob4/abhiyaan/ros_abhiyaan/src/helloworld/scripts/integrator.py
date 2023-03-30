#!/usr/bin/env python3

import rospy
from std_msgs.msg import Int32

sum = Int32(0)

def readings_callback(msg):
    global sum
    sum.data += msg.data
    pub.publish(sum)

if __name__ == '__main__':
    rospy.init_node('integrator')
    sub = rospy.Subscriber('/readings', Int32, callback=readings_callback)
    pub = rospy.Publisher('/distance', Int32, queue_size=10)

    rospy.loginfo("integrator node has been started")

    rospy.spin()