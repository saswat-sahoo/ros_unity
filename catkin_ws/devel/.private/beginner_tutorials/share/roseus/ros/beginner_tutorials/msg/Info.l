;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Info)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Info (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::INFO")
  (make-package "BEGINNER_TUTORIALS::INFO"))

(in-package "ROS")
;;//! \htmlinclude Info.msg.html


(defclass beginner_tutorials::Info
  :super ros::object
  :slots (_linear _angular _rota ))

(defmethod beginner_tutorials::Info
  (:init
   (&key
    ((:linear __linear) (instance beginner_tutorials::Vector3 :init))
    ((:angular __angular) (instance beginner_tutorials::Vector3 :init))
    ((:rota __rota) (instance beginner_tutorials::Vector3 :init))
    )
   (send-super :init)
   (setq _linear __linear)
   (setq _angular __angular)
   (setq _rota __rota)
   self)
  (:linear
   (&rest __linear)
   (if (keywordp (car __linear))
       (send* _linear __linear)
     (progn
       (if __linear (setq _linear (car __linear)))
       _linear)))
  (:angular
   (&rest __angular)
   (if (keywordp (car __angular))
       (send* _angular __angular)
     (progn
       (if __angular (setq _angular (car __angular)))
       _angular)))
  (:rota
   (&rest __rota)
   (if (keywordp (car __rota))
       (send* _rota __rota)
     (progn
       (if __rota (setq _rota (car __rota)))
       _rota)))
  (:serialization-length
   ()
   (+
    ;; beginner_tutorials/Vector3 _linear
    (send _linear :serialization-length)
    ;; beginner_tutorials/Vector3 _angular
    (send _angular :serialization-length)
    ;; beginner_tutorials/Vector3 _rota
    (send _rota :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; beginner_tutorials/Vector3 _linear
       (send _linear :serialize s)
     ;; beginner_tutorials/Vector3 _angular
       (send _angular :serialize s)
     ;; beginner_tutorials/Vector3 _rota
       (send _rota :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; beginner_tutorials/Vector3 _linear
     (send _linear :deserialize buf ptr-) (incf ptr- (send _linear :serialization-length))
   ;; beginner_tutorials/Vector3 _angular
     (send _angular :deserialize buf ptr-) (incf ptr- (send _angular :serialization-length))
   ;; beginner_tutorials/Vector3 _rota
     (send _rota :deserialize buf ptr-) (incf ptr- (send _rota :serialization-length))
   ;;
   self)
  )

(setf (get beginner_tutorials::Info :md5sum-) "9424e4f2ea440d61cdcc97ed9f70470f")
(setf (get beginner_tutorials::Info :datatype-) "beginner_tutorials/Info")
(setf (get beginner_tutorials::Info :definition-)
      "Vector3  linear
Vector3  angular
Vector3  rota

================================================================================
MSG: beginner_tutorials/Vector3
float64 x
float64 y
float64 z

")



(provide :beginner_tutorials/Info "9424e4f2ea440d61cdcc97ed9f70470f")


