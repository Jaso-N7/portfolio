(defpackage controller
  (:documentation "EMIS Dynamic control component")
  (:use #:cl
	#:net.aserve
	#:acl-compat.excl
	#:net.html.generator))

(in-package :controller)

;;; DATA DEFINITIONS 

(defparameter *htdocs* 
  (namestring (asdf:system-relative-pathname "portfolio" "src/"))
  "Location of the Static files and templates")

;;; WEBACTION --- Project Description

(webaction-project "portfolio"
		   :destination *htdocs*
		   :index "home"
		   :map '(("home" "home.clp")
			  ("projects" "projects.clp")
			  ("contact" "contact.clp")))


