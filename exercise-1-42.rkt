#lang sicp
(#%require berkeley)

(define (compose f g)
  (lambda (x) (f (g x))))
