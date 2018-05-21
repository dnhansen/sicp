#lang sicp
(#%require berkeley)

(define (square x)
  (* x x))

(define (squares sent)
  (if (empty? sent)
      '()
      (se (square (first sent)) (squares (bf sent)))))