#lang sicp
(#%require berkeley)

(define (dupls-removed sent)
  (cond ((empty? sent) '())
        ((empty? (bf sent)) sent)
        ((member? (first sent) (bf sent)) (dupls-removed (bf sent)))
        (else (se (first sent) (dupls-removed (bf sent))))))
