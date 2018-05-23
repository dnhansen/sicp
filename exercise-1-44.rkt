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

(define (smooth f dx)
  (lambda (x) (/ (+ (f x)
                    (f (- x dx))
                    (f (+ x dx)))
                 3.0)))

(define (smooth-n f n dx)
  ((repeated (lambda (g) (smooth g dx)) n) f))