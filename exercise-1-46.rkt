#lang sicp
(#%require berkeley)

(define (iterative-improve good-enough? improve)
  (define (improver guess)
    (if (good-enough? guess)
        guess
        (improver (improve guess))))
  improver)

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  ((iterative-improve (lambda (guess) (< (abs (- (square guess) x)) 0.001))
                      (lambda (guess) (average guess (/ x guess))))
  1.0))

(define tol 0.00001)
(define (fixed-point f first-guess)
  ((iterative-improve (lambda (guess) (< (abs (- guess (f guess))) tol))
                      f)
   first-guess))