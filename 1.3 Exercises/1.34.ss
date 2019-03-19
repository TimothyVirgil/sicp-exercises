#lang sicp
;exercise 1.34

(define (square x) (* x x))

(define (f g)
  (g 2))

(f square)

(f f)

;application: not a procedure;
; expected a procedure that can be applied to arguments
;  given: 2
; arguments...:

;This is asking Scheme to use 2 as a procedure. Scheme is confused. I'm confused. This is bad.