
(cl:in-package :asdf)

(defsystem "beginner_tutorials-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CombinedInfo" :depends-on ("_package_CombinedInfo"))
    (:file "_package_CombinedInfo" :depends-on ("_package"))
  ))