#lang sicp
(#%require "../sicp-defs.ss") ;imports definitions given by the book
;SICP exercise 1.3
;code by ADIPY 4/18/19

(define (sum-square-largest a b c)
  (define (sum-square a b)
    (+ (square a) (square b)))
  (cond ((and (>= a b) (>= b c)) (sum-square a b))
        ((and (>= a b) (<= c b)) (sum-square a c))
        (else (sum-square b c))))
