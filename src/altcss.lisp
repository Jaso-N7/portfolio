(defpackage styles
  (:documentation "Generated CSS library")
  (:use :cl :css-lite)
  (:export #:style))

(in-package :styles)

;;; DATA DEFINITIONS

(let ((*indent-css* 'TAB)
      (*css-stream* net.aserve::*html-stream*))
  

;;; FUNCTION
 
  (defun style ()
    "Global stylesheet"
    (css
      (("body")
       (:color "#4C566A"
	:background-color "#ECEFF4"
	:font-family "Helvetica"))
      (("a")
       (:color "#5E81AC")))))
