
(cl:in-package :asdf)

(defsystem "helloworld-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CheckedData" :depends-on ("_package_CheckedData"))
    (:file "_package_CheckedData" :depends-on ("_package"))
    (:file "CheckedData" :depends-on ("_package_CheckedData"))
    (:file "_package_CheckedData" :depends-on ("_package"))
  ))