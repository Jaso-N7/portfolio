(defsystem "portfolio"
  :version "0.4.0"
  :author "Jason S. Robinson"
  :license ""
  :depends-on ("aserve"
               "webactions"
               "parenscript"
               "lass")		
  :components ((:file "html5-tags")
	       (:file "clpage-patch")
	       (:module "src"
		:components
		((:file "altjs")
		 (:file "altcss")
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
