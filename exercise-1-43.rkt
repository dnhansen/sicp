#lang sicp
(#%require berkeley)

(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated f n)
  (define (repeat k)
    (if (> k n)
        identity
        (compose f (repeat (+ k 1)))))
  (repeat 1))