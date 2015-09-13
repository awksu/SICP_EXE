#lang racket
(define (cube x)
  (cube-iter 1.0 x))
(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x) x)))
(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))
(define (square y)
  (* y y))
(define (good-enough? guess x)
  (< (abs (- guess (improve guess x))) (abs (* 0.001 guess))))