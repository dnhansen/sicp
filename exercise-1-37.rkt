#lang sicp
(#%require berkeley)

(define (cont-frac n d k)
  (define (cont-frac-inner i)
    (if (> i k)
        0
        (/ (n i) (+ (d i) (cont-frac-inner (+ i 1))))))
  (cont-frac-inner 1))