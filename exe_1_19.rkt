#lang racket
(define (fib n)
  (fib-iter 1 0 0 1 n))
(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
         (fib-iter a
                   b
                   (+ (square p) (square q)) ; compute p'
                   (+ (square q) (* 2 p q)) ; computer q'
                   (/ count 2)))
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))
(define (square n) (* n n))
(define (fib-ori n)
  (define (fib-ori-iter a b count)
    (if (= count 0)
        b
        (fib-ori-iter (+ a b) a (- count 1))))
  (fib-ori-iter 1 0 n))

(= (fib 0) (fib-ori 0))
(= (fib 1) (fib-ori 1))
(= (fib 2) (fib-ori 2))
(= (fib 3) (fib-ori 3))
(= (fib 4) (fib-ori 4))
(= (fib 6) (fib-ori 6))
(= (fib 10) (fib-ori 10))
