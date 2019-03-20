#lang sicp
(#%require "../sicp-defs.ss")
;SICP exercise 2.18

(define (reverse a)
  (define b nil)
  (define (iter-apend x y n)
    (if (= n 0)
        x
        (iter-apend (append x (list (list-ref y (- n 1)))) y (- n 1))))
  (iter-apend b a (length a)))

;Testing:

;> (display (reverse (list 1 2 3 4)))
;(4 3 2 1)




