;; Auto-generated. Do not edit!


(when (boundp 'helloworld::CheckedData)
  (if (not (find-package "HELLOWORLD"))
    (make-package "HELLOWORLD"))
  (shadow 'CheckedData (find-package "HELLOWORLD")))
(unless (find-package "HELLOWORLD::CHECKEDDATA")
  (make-package "HELLOWORLD::CHECKEDDATA"))

(in-package "ROS")
;;//! \htmlinclude CheckedData.msg.html


(defclass helloworld::CheckedData
  :super ros::object
  :slots (_rx _checksum ))

(defmethod helloworld::CheckedData
  (:init
   (&key
    ((:rx __rx) (make-array 0 :initial-element 0 :element-type :char))
    ((:checksum __checksum) 0)
    )
   (send-super :init)
   (setq _rx __rx)
   (setq _checksum (round __checksum))
   self)
  (:rx
   (&optional __rx)
   (if __rx (setq _rx __rx)) _rx)
  (:checksum
   (&optional __checksum)
   (if __checksum (setq _checksum __checksum)) _checksum)
  (:serialization-length
   ()
   (+
    ;; uint8[] _rx
    (* 1    (length _rx)) 4
    ;; uint16 _checksum
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _rx
     (write-long (length _rx) s)
     (princ _rx s)
     ;; uint16 _checksum
       (write-word _checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _rx
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _rx (make-array n :element-type :char))
     (replace _rx buf :start2 ptr-) (incf ptr- n))
   ;; uint16 _checksum
     (setq _checksum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get helloworld::CheckedData :md5sum-) "c353c169969e7cd2afff681cde037722")
(setf (get helloworld::CheckedData :datatype-) "helloworld/CheckedData")
(setf (get helloworld::CheckedData :definition-)
      "uint8[] rx
uint16 checksum
")



(provide :helloworld/CheckedData "c353c169969e7cd2afff681cde037722")


