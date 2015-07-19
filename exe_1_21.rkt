#lang racket
(define (smallest-divisor n)
  (smallest-divisor-iter 2 n))
(define (smallest-divisor-iter a n)
  (cond ((> (square a) n) n)
        ((= 0 (remainder n a)) a)
        (else (smallest-divisor-iter (+ a 1) n))))
(define (square a) (* a a))

(smallest-divisor 199)
(smallest-divisor 1999)
(smallest-divisor 19999)