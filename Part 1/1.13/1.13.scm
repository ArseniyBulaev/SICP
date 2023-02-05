#lang scheme


(define psi (/ (- 1 (sqrt 5)) 2))
(define phi (/ (+ 1 (sqrt 5)) 2))


(= (+ 1 psi) (* psi psi))
(= (+ 1 phi) (* phi phi))