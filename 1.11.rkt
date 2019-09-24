; if n<3: f(n) = n
; if n>=3: f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3)

(define (f n)
  (if (< n 3)
    n
    (+ (+ (f (- n 1)) (* (f (- n 2)) 2)) (* (f (- n 3)) 3))))

(define (f-iter n)
  "TO DO")

(define (test a b)
  (displayln
    (if (= a b) "PASS" "FAIL")))

(test 3 (f 3))
(test 11 (f 4))
(test 25 (f 5))
