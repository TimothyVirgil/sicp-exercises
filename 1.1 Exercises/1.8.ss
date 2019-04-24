#lang sicp
(#%require "../sicp-defs.ss")
;SICP exercise 1.8
;code by ADIPY 4/24/19

(define (closer-cubert-guess guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cube-iter guess x)
  (if (close-enough? guess x)
      guess
      (cube-iter (closer-cubert-guess guess x) x)))

(define (close-enough? guess x)
  (< (abs (- 1 (/ (closer-cubert-guess guess x) guess))) 0.0001))

(define (cubert x)
  (cube-iter 1.0 x))

;> (cubert 8)
;2.000004911675504