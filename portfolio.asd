(defsystem "portfolio"
  :version "0.2.0"
  :author "Jason S. Robinson"
  :license ""
  :depends-on ("aserve"
               "webactions"
               "parenscript"
               "css-lite") 		; may potentially use https://github.com/eudoxia0/postmaster
  :components ((:file "html5-tags")
	       (:file "clpage-patch")
	       (:module "src"
		:components
		((:file "altjs")
		 (:file "controller")
		 (:file "main"))))
  :description "Personal portfolio"
  :in-order-to ((test-op (test-op "portfolio/tests"))))

(defsystem "portfolio/tests"
  :author "Jason S. Robinson"
  :license ""
  :depends-on ("portfolio"
	       "cl-quickcheck")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for portfolio"
  ;; :perform (test-op (op c) (symbol-call :rove :run c))
  )
