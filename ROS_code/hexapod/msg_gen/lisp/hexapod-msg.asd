
(cl:in-package :asdf)

(defsystem "hexapod-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "serial_frame" :depends-on ("_package_serial_frame"))
    (:file "_package_serial_frame" :depends-on ("_package"))
  ))