(defsystem "portfolio"
  :version "0.1.0"
  :author "Jason S. Robinson"
  :license ""
  :depends-on ("aserve"
               "webactions"
               "cl-quicklisp"
               "parenscript"
               "css-lite")
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "Personal portfolio"
  :in-order-to ((test-op (test-op "portfolio/tests"))))

(defsystem "portfolio/tests"
  :author "Jason S. Robinson"
  :license ""
  :depends-on ("portfolio"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for portfolio"
  :perform (test-op (op c) (symbol-call :rove :run c)))
