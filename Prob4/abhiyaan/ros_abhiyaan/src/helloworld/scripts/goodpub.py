#!/usr/bin/env python3

import rospy
from crc import Calculator, Crc16
import numpy as np
from helloworld.msg import CheckedData

if __name__ == '__main__':
    rospy.init_node('goodpub')
    rospy.loginfo("goodpub node is started")
    rate = rospy.Rate(1)
    pub = rospy.Publisher('/rx_msgs', CheckedData, queue_size=10)
    calculator = Calculator(Crc16.CCITT)

    
    while not rospy.is_shutdown():
        data = CheckedData()
        data.rx = [np.uint8(np.random.randint(0, 256)) for i in range(5)]
        data.checksum = calculator.checksum(bytes(data.rx))
        pub.publish(data)
        rate.sleep()
