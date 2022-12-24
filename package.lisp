(defpackage cffi-static-link-example
  (:use #:cl #:cffi)
  (:export #:main))

(in-package #:cffi-static-link-example)

(cffi:defcfun "plus_one" :int
  (i :int))

(defun main ()
  (format t "~d" (plus-one 3)))
