; if n<3: f(n) = n
; if n>=3: f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3)

; (define (f n)
;   (if (< n 3)
;     n
;     (+ (+ (f (- n 1)) (* (f (- n 2)) 2)) (* (f (- n 3)) 3))))
;

(define (f n)
  ; You can check for (< n 3) here and return n, short-circuiting somewhat...
  ; but it feels more elegant without it.
  (f-iter 2 1 0 n))

(define (f-iter a b c count)
  (if (= count 0)
    c
    (f-iter (+ (+ a (* b 2)) (* c 3)) a b (- count 1))))

(define (test a b)
  (displayln
    (if (= a b) "PASS" "FAIL")))

(test 2 (f 2))
(test 4 (f 3))
(test 11 (f 4))
(test 25 (f 5))
(test 1892 (f 10))
(test 10771211 (f 20))

; 3
; (+ (+ 2 2) 0)

; 4
; (+ (+ 4 (* 2 2)) (* 1 3))
; (+ (+ 4 4) 3)
; (+ 8 3)

; 5
; (+ (+ 11 (* 4 2)) (* 2 3))
; (+ (+ 11 8) 6)
; (+ 19 6)

; 6
; (+ (+ 25 (* 11 2)) (* 4 3))
; (+ (+ 25 22) 12)
; (+ 47 12)
