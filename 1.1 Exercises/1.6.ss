#lang sicp
;SICP exercise 1.6
;code by ADIPY 4/23/19

;Alyssa's new code:

;(define (new-if predicate then-clause else-clause)
;  (cond (predicate then-clause)
;        (else else-clause)))

;Alyssa's square root code:

;(define (sqrt-iter guess x)
;  (new-if (good-enough? guess x)
;          guess
;          (sqrt-iter (improve guess x)
;                     x)))

;In her code, the sqrt-iter procedure will be inside a conditional.
;Due to applicative-order interpretation, the interpreter will
;evaluate the arguments of the conditional first.
;Since sqrt-iter is called in the conditional and all the
;arguments of the conditional will be evaluated first,
;sqrt-iter will continue to call itself, never stopping
;even when the good-enough evaluates to True.


