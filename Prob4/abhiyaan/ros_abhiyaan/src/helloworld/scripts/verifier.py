#!/usr/bin/env python3

import rospy
import numpy as np
from crc import Calculator, Crc16
from helloworld.msg import CheckedData
from std_msgs.msg import String

def verifier_callback(data : CheckedData):
    msg = String()
    if calculator.verify(data.rx, data.checksum):
        msg.data = 'ok'
    else:
        msg.data = 'corrupted'
    pub.publish(msg)

if __name__ == '__main__':
    rospy.init_node('verifier')
    sub = rospy.Subscriber('/rx_msgs', CheckedData, callback=verifier_callback)
    pub = rospy.Publisher('/crc_result', String, queue_size=10)
    calculator = Calculator(Crc16.CCITT)
    rospy.loginfo("verifier node has been started")

    rospy.spin()