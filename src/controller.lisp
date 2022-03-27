(defpackage controller
  (:documentation "My personal portfolio")
  (:use #:cl
	#:net.aserve
	#:acl-compat.excl
	#:net.html.generator

	)
  (:import-from #:scripts
		#:contact-form)
  (:import-from #:styles #:style))

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
			  ("about" "about.clp")
			  ("projects" "projects.clp")
			  ("contact" "contact.clp")
			  ("contact-success" "contact-success.clp")))


;;; JAVASCRIPT

(publish :path "/script.js"
	 :content-type "text/javascript"
	 :function
	 #'(lambda (r e)
	     (with-http-response (r e)
	       (with-http-body (r e)
		 (princ (funcall #'contact-form)
			*html-stream*)))))

;;; CSS

(publish :path "/styles.css"
	 :content-type "text/css; charset=utf-8"
	 :function
	 #'(lambda (req ent)
	     (with-http-response (req ent :format :text)
	       (with-http-body (req ent)
		 (princ (funcall #'style) *html-stream*)))))
