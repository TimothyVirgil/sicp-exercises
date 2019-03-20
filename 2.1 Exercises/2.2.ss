#lang sicp
;SICP exercise 2.2

(define (make-point x y) (cons x y))

(define (x-point p) (car p))

(define (y-point p) (cdr p))

;I choose to have make-segment have four parameters: x1,y1, x2,y2
;You could probably have it take two specific points instead

(define (make-segment a b c d)
  (cons (make-point a b) (make-point c d)))

(define (start-segment a) (car a))

(define (end-segment a) (cdr a))

(define (midpoint-segment d)
  (define (x-aver d)
    (/ (+ (x-point (start-segment d)) (x-point (end-segment d))) 2))
  (define (y-aver d)
    (/ (+ (y-point (start-segment d)) (y-point (end-segment d))) 2))
  (make-point (x-aver d) (y-aver d)))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))