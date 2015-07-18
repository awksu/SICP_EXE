#lang racket
;sicp_exe_1_17
;(define (* a b)
;  (if (= b 0)
;      0
;      (+ a (* a (- b 1)))))

(define (fas-mul a b)
  (cond ((= b 0) 0)
        ((even? b) (double (fas-mul a (halve b))))
        (else (+ a (fas-mul a (- b 1))))))

(define (double a) (+ a a))
(define (even? a) (= 0 (remainder a 2)))
(define (halve b) (/ b 2))

(define (fast-mul a b)
  (fast-mul-iter a b 0))
(define (fast-mul-iter a b n)
  (cond ((= b 0) n)
        ((even? b) (fast-mul-iter (double a) (halve b) n))
        (else (fast-mul-iter a (- b 1) (+ n a)))))