#lang sicp

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (even? n)
  (= (remainder n 2) 0))

(define (seq-sum term a change k n)
  (if (> k n)
      0
      (+ (term a)
         (seq-sum term (change a) change (+ k 1) n))))
(define (cube x) (* x x x))
(define (double x) (* 2 x))

(define (simpson f a b n)
  (define (h (/ (- b a) n)))
  (define (add-h x (+ x h)))
  (define (right-f f)
    (cond ((or (= k 0) (= k n)) f)
          ((even? k) (* 4 f))
          (else (* 2 f))))
  (* (seq-sum (right-f f) a add-h 0 n)
     (/ h 3)))

