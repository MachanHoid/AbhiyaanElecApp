#!/usr/bin/env python3

import rospy
import numpy as np
#from std_msgs import uint8, uint16
from helloworld.msg import CheckedData

np.random.seed(0)

if __name__ == '__main__':
    rospy.init_node('badpub')
    rospy.loginfo("badpub node is started")
    rate = rospy.Rate(0.5)
    pub = rospy.Publisher('/rx_msgs', CheckedData, queue_size=10)

    
    while not rospy.is_shutdown():
        data = CheckedData()
        data.rx = [np.uint8(np.random.randint(0, 256)) for i in range(5)]
        data.checksum = np.uint16(0)
        pub.publish(data)
        rate.sleep()
