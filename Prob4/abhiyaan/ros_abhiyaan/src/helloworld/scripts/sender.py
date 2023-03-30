#!/usr/bin/env python3

import rospy
from std_msgs.msg import Int32
import random

if __name__ == '__main__':
    rospy.init_node('sender')
    rospy.loginfo("sender node is started")
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        msg = random.choice([1,-1])
        pub = rospy.Publisher('readings', Int32, queue_size=10)
        pub.publish(msg)
        rate.sleep()
