#lang scheme

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
           (A x (- y 1))))))


;; (A 0 n) -> 2*n
(display "(A 0 n): \n")
(A 0 10)
(A 0 9)
(A 0 8)

;; (A 1 n) -> 2^n
(display "(A 1 n): \n")
(A 1 10)
(A 1 9)
(A 1 8)

;; (A 2 n) -> 2^(2^2...( n - 1 times))
(display "(A 2 n): \n")
(A 2 1)
(A 2 2)
(A 2 3)
(A 2 4)

(display "(A 3 3): \n")
(A 3 3)