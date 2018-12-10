
(cl:in-package :asdf)

(defsystem "Hexapod_Bringup-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Trame_hexapod" :depends-on ("_package_Trame_hexapod"))
    (:file "_package_Trame_hexapod" :depends-on ("_package"))
  ))