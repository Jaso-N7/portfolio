(defpackage portfolio/tests/main
  (:use :cl
        :portfolio
        :rove))
(in-package :portfolio/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :portfolio)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
