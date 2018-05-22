#lang sicp
(#%require berkeley)

(define (cont-frac n d k)
  (define (cont-frac-inner i)
    (if (> i k)
        0
        (/ (n i) (+ (d i) (cont-frac-inner (+ i 1))))))
  (cont-frac-inner 1))

(define (tan-cf x k)
  (define (tan-d i)
    (- (* i 2)
       1))
  (define (tan-n i)
    (if (= i 1)
        x
        (- (* x x))))
  (cont-frac tan-n tan-d k))