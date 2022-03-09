(defpackage scripts
  (:documentation "JavaScript library")
  (:use :cl :parenscript)
  (:export #:contact-form))

(in-package :scripts)

(defun contact-form ()
  "Validates the Contact form"
  (ps
    (defun validate-contact-form ()
      (progn
	(var fullname (chain document (get-element-by-id "fullname")))
	(var mailfr (chain document (get-element-by-id "mailfr")))
	(var details (chain document (get-element-by-id "details")))
	(chain console (log "AltJS Activated"))))))
