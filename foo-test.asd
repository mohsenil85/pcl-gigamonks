#|
  This file is a part of foo project.
|#

(in-package :cl-user)
(defpackage foo-test-asd
  (:use :cl :asdf))
(in-package :foo-test-asd)

(defsystem foo-test
  :author ""
  :license ""
  :depends-on (:foo
               :cl-test-more)
  :components ((:module "t"
                :components
                ((:test-file "foo"))))

  :defsystem-depends-on (:cl-test-more)
  :perform (test-op :after (op c)
                    (funcall (intern #. (string :run-test-system) :cl-test-more)
                             c)
                    (asdf:clear-system c)))
