;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::change_string)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'change_string (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::CHANGE_STRING")
  (make-package "BEGINNER_TUTORIALS::CHANGE_STRING"))
(unless (find-package "BEGINNER_TUTORIALS::CHANGE_STRINGREQUEST")
  (make-package "BEGINNER_TUTORIALS::CHANGE_STRINGREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::CHANGE_STRINGRESPONSE")
  (make-package "BEGINNER_TUTORIALS::CHANGE_STRINGRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::change_stringRequest
  :super ros::object
  :slots (_input_string ))

(defmethod beginner_tutorials::change_stringRequest
  (:init
   (&key
    ((:input_string __input_string) "")
    )
   (send-super :init)
   (setq _input_string (string __input_string))
   self)
  (:input_string
   (&optional __input_string)
   (if __input_string (setq _input_string __input_string)) _input_string)
  (:serialization-length
   ()
   (+
    ;; string _input_string
    4 (length _input_string)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _input_string
       (write-long (length _input_string) s) (princ _input_string s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _input_string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _input_string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beginner_tutorials::change_stringResponse
  :super ros::object
  :slots (_output_string ))

(defmethod beginner_tutorials::change_stringResponse
  (:init
   (&key
    ((:output_string __output_string) "")
    )
   (send-super :init)
   (setq _output_string (string __output_string))
   self)
  (:output_string
   (&optional __output_string)
   (if __output_string (setq _output_string __output_string)) _output_string)
  (:serialization-length
   ()
   (+
    ;; string _output_string
    4 (length _output_string)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _output_string
       (write-long (length _output_string) s) (princ _output_string s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _output_string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _output_string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beginner_tutorials::change_string
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::change_string :md5sum-) "3b4ae52729cca8f48b577fc1175d09e3")
(setf (get beginner_tutorials::change_string :datatype-) "beginner_tutorials/change_string")
(setf (get beginner_tutorials::change_string :request) beginner_tutorials::change_stringRequest)
(setf (get beginner_tutorials::change_string :response) beginner_tutorials::change_stringResponse)

(defmethod beginner_tutorials::change_stringRequest
  (:response () (instance beginner_tutorials::change_stringResponse :init)))

(setf (get beginner_tutorials::change_stringRequest :md5sum-) "3b4ae52729cca8f48b577fc1175d09e3")
(setf (get beginner_tutorials::change_stringRequest :datatype-) "beginner_tutorials/change_stringRequest")
(setf (get beginner_tutorials::change_stringRequest :definition-)
      "string input_string
---
string output_string

")

(setf (get beginner_tutorials::change_stringResponse :md5sum-) "3b4ae52729cca8f48b577fc1175d09e3")
(setf (get beginner_tutorials::change_stringResponse :datatype-) "beginner_tutorials/change_stringResponse")
(setf (get beginner_tutorials::change_stringResponse :definition-)
      "string input_string
---
string output_string

")



(provide :beginner_tutorials/change_string "3b4ae52729cca8f48b577fc1175d09e3")


