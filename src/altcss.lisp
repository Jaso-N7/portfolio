(defpackage styles
  (:documentation "Generated CSS library")
  (:use :cl :lass)
  (:export #:style))

(in-package :styles)

;;; DATA DEFINITIONS

(defun style ()
  "Global CSS"
  (lass:compile-and-write
   '(body
     :color "#4C566A"
     :background-color "#ECEFF4"
     :font-family "Helvetica")
   '(a
     :color "#5E81AC")))
