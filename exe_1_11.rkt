#lang racket
(define (fr n)
  (if (< n 3) 
      n
      (+ (fr (- n 1))
         (* 2(fr (- n 2)) )
         (* 3 (fr (- n 3))))))

(define (fi n)
  (fi-iter 0 1 2 3 n))
(define (fi-iter a b c d n)
  (if (< n 3)
      n
      (if (= d n)
          (+ (* 3 a) (* 2 b) c)
          (fi-iter b c (+ (* 3 a) (* 2 b) c) (+ 1 d) n))))

(= (fr 1) (fi 1))
(= (fr 2) (fi 2))
(= (fr 3) (fi 3))
(= (fr 4) (fi 4))
(= (fr 5) (fi 5))
(= (fr 6) (fi 6))
(= (fr 7) (fi 7))
(= (fr 8) (fi 8))
(= (fr 10) (fi 10))