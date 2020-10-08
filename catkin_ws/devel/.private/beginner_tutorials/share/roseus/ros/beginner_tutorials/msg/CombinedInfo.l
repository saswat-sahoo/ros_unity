;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::CombinedInfo)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'CombinedInfo (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::COMBINEDINFO")
  (make-package "BEGINNER_TUTORIALS::COMBINEDINFO"))

(in-package "ROS")
;;//! \htmlinclude CombinedInfo.msg.html


(defclass beginner_tutorials::CombinedInfo
  :super ros::object
  :slots (_linear_acceleration _angular_velocity _rotation ))

(defmethod beginner_tutorials::CombinedInfo
  (:init
   (&key
    ((:linear_acceleration __linear_acceleration) (make-array 3 :initial-element 0 :element-type :integer))
    ((:angular_velocity __angular_velocity) (make-array 3 :initial-element 0 :element-type :integer))
    ((:rotation __rotation) (make-array 3 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _linear_acceleration __linear_acceleration)
   (setq _angular_velocity __angular_velocity)
   (setq _rotation __rotation)
   self)
  (:linear_acceleration
   (&optional __linear_acceleration)
   (if __linear_acceleration (setq _linear_acceleration __linear_acceleration)) _linear_acceleration)
  (:angular_velocity
   (&optional __angular_velocity)
   (if __angular_velocity (setq _angular_velocity __angular_velocity)) _angular_velocity)
  (:rotation
   (&optional __rotation)
   (if __rotation (setq _rotation __rotation)) _rotation)
  (:serialization-length
   ()
   (+
    ;; int64[3] _linear_acceleration
    (* 8    3)
    ;; int64[3] _angular_velocity
    (* 8    3)
    ;; int64[3] _rotation
    (* 8    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64[3] _linear_acceleration
     (dotimes (i 3)
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _linear_acceleration i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _linear_acceleration i)) (= (length ((elt _linear_acceleration i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _linear_acceleration i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _linear_acceleration i) . bv) 1) -1) s))
             ((and (class (elt _linear_acceleration i)) (= (length ((elt _linear_acceleration i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _linear_acceleration i) . bv) 0) s)
              (write-long (if (>= (elt _linear_acceleration i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _linear_acceleration i) s)(write-long (if (>= (elt _linear_acceleration i) 0) 0 #xffffffff) s)))
       )
     ;; int64[3] _angular_velocity
     (dotimes (i 3)
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _angular_velocity i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _angular_velocity i)) (= (length ((elt _angular_velocity i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _angular_velocity i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _angular_velocity i) . bv) 1) -1) s))
             ((and (class (elt _angular_velocity i)) (= (length ((elt _angular_velocity i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _angular_velocity i) . bv) 0) s)
              (write-long (if (>= (elt _angular_velocity i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _angular_velocity i) s)(write-long (if (>= (elt _angular_velocity i) 0) 0 #xffffffff) s)))
       )
     ;; int64[3] _rotation
     (dotimes (i 3)
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _rotation i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _rotation i)) (= (length ((elt _rotation i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _rotation i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _rotation i) . bv) 1) -1) s))
             ((and (class (elt _rotation i)) (= (length ((elt _rotation i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _rotation i) . bv) 0) s)
              (write-long (if (>= (elt _rotation i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _rotation i) s)(write-long (if (>= (elt _rotation i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64[3] _linear_acceleration
   (dotimes (i (length _linear_acceleration))
#+(or :alpha :irix6 :x86_64)
      (setf (elt _linear_acceleration i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _linear_acceleration i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     )
   ;; int64[3] _angular_velocity
   (dotimes (i (length _angular_velocity))
#+(or :alpha :irix6 :x86_64)
      (setf (elt _angular_velocity i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _angular_velocity i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     )
   ;; int64[3] _rotation
   (dotimes (i (length _rotation))
#+(or :alpha :irix6 :x86_64)
      (setf (elt _rotation i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _rotation i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     )
   ;;
   self)
  )

(setf (get beginner_tutorials::CombinedInfo :md5sum-) "81953f79fe8ffdaa1da172c5ee7b8504")
(setf (get beginner_tutorials::CombinedInfo :datatype-) "beginner_tutorials/CombinedInfo")
(setf (get beginner_tutorials::CombinedInfo :definition-)
      "int64[3] linear_acceleration
int64[3] angular_velocity
int64[3] rotation


")



(provide :beginner_tutorials/CombinedInfo "81953f79fe8ffdaa1da172c5ee7b8504")


