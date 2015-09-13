#lang racket
(define (pascale-tri row col)
  (cond ((< row col) #f)
        ((= col 1) 1)
        ((= row col) 1)
        (else (+ (pascale-tri (- row 1)
                              (- col 1))
                 (pascale-tri (- row 1)
                              col)))))