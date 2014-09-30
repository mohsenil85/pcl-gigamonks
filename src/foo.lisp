(in-package :cl-user)
(defpackage foo
  (:use :cl))
(in-package :foo)

(defun make-cd (title artist rating ripped)
  (list  :title title :artist artist :rating rating :ripped ripped))

(defvar *db* nil)

(defun add-record (cd) (push cd *db*))

(add-record (make-cd "foo" "bar" 9 t))
(add-record (make-cd "baz" "quuz" 9 t))
(add-record (make-cd "zap" "bing" 9 t))

(defun dump-db ()
  (dolist (cd *db*)
    (format t "~{~a:~10t~a~%~}~%" cd)))

;(dump-db)
;(setf *db* nil)
