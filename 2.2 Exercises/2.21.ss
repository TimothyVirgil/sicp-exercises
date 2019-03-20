#lang sicp
(#%require "../sicp-defs.ss")
;SICP exercise 2.8

(define (square-list items)
  (if (null? items)
      nil
      (cons (* (car items) (car items))
            (square-list (cdr items)))))

(define (square-list-a items)
  (map (lambda (x) (* x x)) items))

;Testing
;>(display (square-list (list 1 2 3 4 5)))
;(1 4 9 16 25)
;> (display (square-list-a (list 1 2 3 4 5)))
;(1 4 9 16 25)