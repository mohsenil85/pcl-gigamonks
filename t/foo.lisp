(in-package :cl-user)
(defpackage foo-test
  (:use :cl
        :foo
        :cl-test-more))
(in-package :foo-test)

;; NOTE: To run this test file, execute `(asdf:test-system :foo)' in your Lisp.

(plan nil)

;; blah blah blah.

(finalize)
