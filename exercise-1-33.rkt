#lang sicp
(#%require berkeley)

(define (filtered-accumulate combiner null-value term a next b filter)
  (if (> a b)
      null-value
      (combiner (if (filter a)
                    (term a)
                    null-value)
                (filtered-accumulate combiner null-value term (next a) next b filter))))

(define (square x)
  (* x x))

(define (inc n)
  (+ n 1))

(define (prime-sum-square a b)
  (filtered-accumulate + 0 square a inc b prime?))

(define (rel-prime-prod n)
  (define (rel-prime-to-n? i)
    (equal? (gcd i n) 1))
  (filtered-accumulate * 1 identity 1 inc (- n 1) rel-prime-to-n?))