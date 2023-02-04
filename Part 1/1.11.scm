#lang scheme

(define (triple-sum-iter n)
  (define(triple-sum-iter-ver-1 times a b c)
    (if (= times 0)
        a
        (triple-sum-iter-ver-1 (- times 1)
                               (+ a b c)
                               a
                               b)))
  
  (define(triple-sum-iter-ver-2 times a b c)
    (if (= times 0)
        c
        (triple-sum-iter-ver-2 (- times 1)
                               (+ a b c)
                               a
                               b))) 

  (display "First version: \n")
  (display(triple-sum-iter-ver-1 (- n 2) 2 1 0))
  (display "\nSecond version: \n")
  (display(triple-sum-iter-ver-2 n 2 1 0)))

(define (triple-sum-rec n)
  (if (< n 3)
      n
      (+ (triple-sum-rec ( - n 1))
         (triple-sum-rec ( - n 2))
         (triple-sum-rec ( - n 3)))))

(define test 27)

(triple-sum-iter test)
(display "\nRecursive version: \n")
(display (triple-sum-rec test))