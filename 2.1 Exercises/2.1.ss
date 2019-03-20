#lang sicp
;SICP exercise 2.1
;use the book's gcd procedure
(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

;original make-rat:
;(define (make-rat n d)
;  (let ((g (gcd n d)))
;    (cons (/ n g) (/ d g))))

;new make-rat will test if n/d is negative. It will then use absolute value to format
;the fraction correctly

(define (make-rat n d)
  (let ((g (gcd n d)))
    (if (< (/ n d) 0)
    (cons (* -1 (abs(/ n g))) (abs(/ d g)))
    (cons (abs(/ n g)) (abs(/ d g))))))
