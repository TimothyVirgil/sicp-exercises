#lang sicp
;SICP exercise 1.2
;code by ADIPY 4/17/19

;Original in regular notation: (5+4+(2-(3-(6+4/5))))/(3(6-2)(2-7))
;output should be -37/150

(/ (+ 5 4 (- 2 (- 3 (+ 6 4/5)))) (* 3 (- 6 2) (- 2 7)))

