
(cl:in-package :asdf)

(defsystem "beginner_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoNos" :depends-on ("_package_AddTwoNos"))
    (:file "_package_AddTwoNos" :depends-on ("_package"))
    (:file "change_string" :depends-on ("_package_change_string"))
    (:file "_package_change_string" :depends-on ("_package"))
  ))