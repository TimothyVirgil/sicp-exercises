#lang sicp
(#%require "../sicp-defs.ss")
;SICP exercise 2.8

;The logic is a little different from addition: We have to take the lower bound and subtract by the upper bound and the upper bound minus the lower bound

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))

;Tested:
;> (define bob (make-interval 3 10))
;> (define jerry (make-interval 4 11))
;> (sub-interval bob jerry)
;(mcons -8 6)