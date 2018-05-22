#lang sicp
(#%require berkeley)

(define (prod-iter factor a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (factor a) result))))
  (iter a 1))

(define (prod-rec factor a next b)
  (if (> a b)
      1
      (* (factor a)
         (prod-rec factor (next a) next b))))