#lang scheme

(define (cube x)
  (* x x x))

(define (cubic-sqrt x)
  (cubic-sqrt-iter 1.0 x))

(define (cubic-sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cubic-sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (improve guess x)
  (/ (+ (/ x (* guess guess))
        (* 2 guess))
     3))