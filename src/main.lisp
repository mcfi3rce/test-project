(defpackage test-project
  (:use :cl))
(in-package :test-project)

;; blah blah blah.
(defun fib (n)
  "Return the nth Fibonacci number."
  (if (< n 2)
      n
      (+ (fib (- n 1))
         (fib (- n 2)))))

;; Multiple return
(defun many (n)
  (values n (* n 2) (* n 3)))

;; The while loop
(defmacro while (condition &body body)
  `(loop while ,condition do (progn ,@body)))
