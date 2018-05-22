#lang sicp
(#%require berkeley)

(define (cube x)
  (* x x x))

(define (sum term a next b)
  (if (> a b)
  0
  (+ (term a)
     (sum term (next a) next b))))

(define (simpson f a b n)
  (define h (/ (- b a) n))
  (define (next k) (+ k 2))
  (define (y k)
    (f (+ a (* k h))))
  (* (/ h 3.0)
     (+ (y 0)
        (* 4 (sum y 1 next n))
        (* 2 (sum y 2 next (- n 1)))
        (y n))))
