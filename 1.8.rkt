(define (abs x)
  (if (< x 0) (- x) x))
(define (square x) (* x x))

; x/y2 + 2y
; ---------
;     3
; Racket expression:
; (/ (+ (/ x (square y)) (* 2 y)) 3)
(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? old-guess guess)
  (< (abs (- old-guess guess)) 0.00001))

(define (3rt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (3rt-iter (improve guess x)
                 x)))
(define (3rt x)
  (3rt-iter 1.0 x))
