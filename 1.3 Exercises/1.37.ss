#lang sicp
;Problem 1.37 in SICP
;By observing the pattern in continued fractions, I came up with the formula (as many have before)
;of k-term = (n-sub1 * b-sub(k-1)) / (n-sub(k-1) + b-sub1 * b-sub(k-1))

(define (cont-frac n d k)
  (define (return-n a k)
    (if (< k 1)
        n
        (* n (return-d d (- k 1)))))
  (define (return-d b k)
    (if (< k 1)
        d
        (+ (return-n n (- k 1)) (* d (return-d d (- k 1))))))
  (/ (return-n n k) (return-d d k)))