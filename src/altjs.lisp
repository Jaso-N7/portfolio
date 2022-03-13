(defpackage scripts
  (:documentation "JavaScript library")
  (:use :cl :parenscript)
  (:export #:contact-form))

(in-package :scripts)

(defun contact-form ()
  "Validates the Contact form"
  (ps
    (defun validate-contact-form ()
      "Validates the information before submitting the Contact Form"
      (progn
	(var contact-form (chain document (get-elements-by-tag-name "form")))
	(var fullname (chain document (get-element-by-id "fullname")))
	(var mailfr (chain document (get-element-by-id "mailfr")))
	(var details (chain document (get-element-by-id "details")))
		
	(return-from validate-contact-form
	  (when (or (string= (@ fullname value) "")
		    (< (length (@ fullname value)) 2))
	    (progn
	      (display-error "Please enter your full name")
	      (chain fullname (focus))
	      (chain event (prevent-default)))))

	(return-from validate-contact-form
	  (when (or (string= (@ mailfr value) "")
		    (<  (length (@ mailfr value)) 2))
	    (progn
	      (display-error "Please enter your e-mail address")
	      (chain mailfr (focus))
	      (chain event (prevent-default)))))

	(return-from validate-contact-form
	  (when (string= (@ details value) "")
	    (progn
	      (display-error "Please give me more details")
	      (chain details (focus))
	      (chain event (prevent-default))))))) ; Otherwise, Form validated

    (defun display-error (msg)
      "Creates a span tag and displays a message MSG"
      (progn
	;; Create a new element
	(var new-element (chain document (create-element "span")))
	;; and give it some content
	(var new-content (chain document (create-text-node msg)))
	;; add the text node to the newly created element
	(chain new-element (append-child new-content))
	;; add the newly created element and its content into the DOM
	(var current-element (chain document (get-element-by-id "contact")))
	(chain document body (insert-before new-element current-element))
	))))
