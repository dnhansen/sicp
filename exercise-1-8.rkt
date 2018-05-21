#lang sicp

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (cbrt x)
  (cbrt-iter 1.0 x))

(define (good-enough? old-guess new-guess)
  (< (abs (/ (- old-guess new-guess) old-guess)) 0.001))

(define (improve guess x)
  (/ (+ (/ x
           (square guess))
        (* 2 guess))
     3))

(define (cbrt-iter guess x)
  (if (good-enough? guess (improve guess x))
        guess
        (cbrt-iter (improve guess x) x)))