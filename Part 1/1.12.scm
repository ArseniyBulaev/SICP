#lang scheme

;; i - number of element in series
;; j - numer of series

(define (get-pascals-triangle-element i j)
  (cond ((> i j) "error") 
        ((= i 1) 1)
        ((= i j) 1)
        (else (+ (get-pascals-triangle-element (- i 1) (- j 1))
                 (get-pascals-triangle-element i (- j 1))))))


(get-pascals-triangle-element 5 11)
(get-pascals-triangle-element 6 11)
(get-pascals-triangle-element 7 11)