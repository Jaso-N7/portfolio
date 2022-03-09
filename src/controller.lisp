(defpackage controller
  (:documentation "My personal portfolio")
  (:use #:cl
	#:net.aserve
	#:acl-compat.excl
	#:net.html.generator
	#:parenscript
	)
  (:import-from #:scripts
		#:contact-form))

(in-package :controller)

;;; DATA DEFINITIONS 

(defparameter *htdocs* 
  (namestring (asdf:system-relative-pathname "portfolio" "src/"))
  "Location of the Static files and templates")

;;; WEBACTION --- Project Description

(webaction-project "portfolio"
		   :project-prefix "/"
		   :destination *htdocs*
		   :index "home"
		   :map '(("home" "home.clp")
			  ("projects" "projects.clp")
			  ("contact" "contact.clp")))


;;; JAVASCRIPT

(publish :path "/script.js"
	 :content-type "text/javascript"
	 :function
	 #'(lambda (r e)
	     (with-http-response (r e)
	       (with-http-body (r e)
		 (princ (ps
			  (defun validate-contact-form ()
			    (progn
			      (var fullname (chain document (get-element-by-id "fullname")))
			      (var mailfr (chain document (get-element-by-id "mailfr")))
			      (var details (chain document (get-element-by-id "details")))
			      (chain console (log "JS activated")))))
			*html-stream*)))))
