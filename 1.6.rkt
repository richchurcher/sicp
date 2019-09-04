(define (abs x)
  (if (< x 0) (- x) x))
(define (square x) (* x x))
(define (average x y)
  (/ (+ x y) 2))
(define (improve guess x)
  (average guess (/ x guess)))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

; 1.6: can't just define a new if because... infinite recursion!
; There is no short-circuit: sqrt-iter is always evaluated even
; if the predicate evaluates true. There's a good discussion at:
; http://community.schemewiki.org/?sicp-ex-1.6
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))
(define (sqrt x)
  (sqrt-iter 1.0 x))
