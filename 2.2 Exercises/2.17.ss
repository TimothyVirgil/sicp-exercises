#lang sicp
(#%require "../sicp-defs.ss")
;SICP exercise 2.17

(define (last-pair a)
  list (list-ref a (- (length a) 1)))

;testing
;> (last-pair (list 1 2 3 4 5))
;5
  
