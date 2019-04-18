#lang sicp
;SICP exercise 1.4
;code by ADIPY 4/18/19

(define (a-plus-abs-b a b) ;The procedure takes two parameters
  ((if (> b 0) + -) a b))  ;Checks if b is positive. If so, it calls the addition procedure.
                           ;If b is negative, b is subtracted from a. Subtracting a negative
                           ;is the same as adding a positive, essentially simulating absolute
                           ;value addition.
