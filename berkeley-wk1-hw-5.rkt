#lang sicp
(#%require berkeley)

(define (ends-e sent)
  (cond ((empty? sent) '())
        ((member? (last (first sent)) '(e)) (se (first sent) (ends-e (bf sent))))
        (else (ends-e (bf sent)))))