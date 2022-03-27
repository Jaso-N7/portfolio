(defpackage styles
  (:documentation "Generated CSS library")
  (:use :cl :lass)
  (:export #:style))

(in-package :styles)

;;; DATA DEFINITIONS

(defun style ()
  "Global CSS. Inspired by Nord-Theme, Visual Scale and html5up.net"
  (lass:compile-and-write
   '(:import (url "https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600"))
   '(html
     :margin 0
     :padding 0
     :border 0
     :font inherit
     :vertical-align baseline
     :font-size "100%") 		; 16px
   '((article aside details figcaption figure footer header menu nav section)
     :display block)
   '(header ((h1 h4) :letter-spacing 1.5px))
   '(body
     :color "#4C566A"
     :background-color "#ECEFF4"
     :font-family "'Source Sans Pro', sans-serif"
     :font-weight 400
     :line-height 1.75)
   '((input select textarea) :appearance none)
   '(p :margin-bottom 1rem)
   '((b em strong) :font-weight 600)
   '(a
     :text-decoration none
     :border-bottom "dotted 1px #d0d6e2"
     :transition color 0.2s ease-in-out border-color 0.2s ease-in-out background-color 0.2s ease-in-out
     :color "#5E81AC"
     (:hover
      :color "#E7746F"
      :border-color "#E7746F"))
   '((h1 h2 h3 h4 h5)
     :margin 3rem 0 1.38rem
     :font-family "'Source Sans Pro', sans-serif" 
     :font-weight 300
     :line-height 1.3)			      	
   '(h1
     :margin-top 0
     :font-size 3.052rem)
   '(h2 :font-size 2.441rem)
   '(h3 :font-size 1.953rem)
   '(h4 :font-size 1.563rem)
   '((small .text_small) :font-size .8rem)))
