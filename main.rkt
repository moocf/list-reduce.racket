#lang racket

; (reduce f init lst): F X V X L -> V
; reduces list of values to a single value
(define reduce
  (lambda (f init lst)
    (if (null? lst)
        init
        (f (car lst) (reduce f init (cdr lst))))))
