#lang sicp

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (<= x y) (or (= x y) (< x y)))

(define (f x y z)
  (cond ((and (<= x y) (<= x z)) (sum-of-squares y z))
        ((and (<= y z) (<= y x)) (sum-of-squares z x))
        (else (sum-of-squares x y))))