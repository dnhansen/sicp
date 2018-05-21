#lang sicp
(#%require berkeley)

(define (ordered? sent)
  (cond ((empty? sent) #t)
        ((empty? (bf sent)) #t)
        ((> (first sent) (first (bf sent))) #f)
        (else (ordered? (bf sent)))))
