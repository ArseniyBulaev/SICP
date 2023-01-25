#lang scheme

(define (book-sqrt x)
  (sqrt-iter 1.0 good-enough? x 0))

(define (better-sqrt x)
  (sqrt-iter 1.0 improved-good-enough? x 0))


(define (sqrt-iter guess good-enough-pred x counter)
  (if (good-enough-pred guess x)
     (cons guess counter)
     (sqrt-iter (improve guess x) good-enough-pred x (+ counter 1))))

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.000000001))

(define (improved-good-enough? guess x)
  (< (/ (abs(- guess (improve guess x))) guess) 0.000000001))

(define (average x y)
  (/ (+ x y) 2))


(define (improve guess x)
  (average guess (/ x guess)))

(define (square x)
  (* x x))

;;Test
(square (car (book-sqrt 4)))
(square (car (book-sqrt 400000000000000)))
(square (car (book-sqrt 0.000000000000000004)))
(display "\n")
(square (car (better-sqrt 4)))
(square (car(better-sqrt 4000000000000)))
(square (car (better-sqrt 0.0000000000000004)))
(display "\n")
(display "Better sqrt is really better")