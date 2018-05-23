#lang sicp
(#%require berkeley)

(define (double f)
  (lambda (x) (f (f x))))
