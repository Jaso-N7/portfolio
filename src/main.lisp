(in-package :cl-user)

(defun initialize-application (&key port)
  
  (net.aserve:start :port port))

(defpackage portfolio
  (:documentation "Main entry to Coffee.")
  (:use #:cl
	#:net.aserve
	#:controller)
  (:export #:start-server
	   #:stop-server))

(in-package :portfolio)

;;; FUNCTIONS --- Project support 

(let ((httpd nil))
  (defun start-server (&key (port 8080))
    (setf httpd (cl-user::initialize-application :port port))
    (format t "~&Portable AllegroServe server STARTED on PORT :~A~%" port)
    #+unix
    (format t "~&With PID: ~A~%" (net.aserve::getpid))
    httpd)

  (defun stop-server (&key (server httpd))
    (setf httpd (net.aserve:shutdown :server server))
    (print "Portable AllegroServe server STOPPED.")
    httpd))
