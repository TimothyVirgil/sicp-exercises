#lang sicp
;SICP exercise 1.5
;code by ADIPY 4/18/19

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

;Applicative-order evaluation will evaluate the arguments first.
;It will evaluate 0 and p. When it evaluates p, it will end up in an infinite loop.

;Normal-order evaluation will expand test first.
;It will look like this:

(if (= 0 0)
    0
    p)

;The output should be 0 here, because now the if statement will be allowed to run as usual.
;The interpreter will never evaluate p.