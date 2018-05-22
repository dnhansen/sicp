#lang sicp
(#%require berkeley)

(define (cont-frac n d k)
  (define (cont-frac-inner i)
    (if (> i k)
        0
        (/ (n i) (+ (d i) (cont-frac-inner (+ i 1))))))
  (cont-frac-inner 1))

(define (e-approx k)
  (define (e-d i)
    (cond ((= (remainder (+ i 1) 3) 0)
           (* (/ (+ i
                    1)
                 3)
              2))
          (else 1)))
  (+ (cont-frac (lambda (i) 1.0) e-d k)
     2))