(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

; Equivalent to 2n
(define (f n) (A 0 n))

; (A 1 2)
; (A 0 (A 1 1))
; (A 0 2)
; (* 2 2)
; Equivalent to 2n, but:
;
; (A 1 5)
; (A 0 (A 1 4))
; (A 0 (A 0 (A 1 3)))
; (A 0 (A 0 (A 0 (A 1 2))))
; (A 0 (A 0 (A 0 (A 0 (A 1 1)))))
; (A 0 (A 0 (A 0 (A 0 2))))
; (A 0 (A 0 (A 0 4)))
; (A 0 (A 0 8))
; (A 0 16)
; --> 32
;
; Plain explanation: 1 is doubled n times. Is this 1(2)^n?
; http://community.schemewiki.org/?sicp-ex-1.10 gives LaTeX notation: 2^{n}
(define (g n) (A 1 n))

; (A 2 2)
; (A 1 (A 2 1))
; (A 0 2)
; --> 4
;
; (A 2 3)
; (A 1 (A 2 2))
; (A 1 (A 1 (A 2 1)))
; (A 1 (A 1 2))
; (A 1 (A 0 (A 1 1)))
; (A 1 (A 0 2))
; (A 1 4)
; (A 0 (A 1 3))
; (A 0 (A 0 (A 1 2)))
; (A 0 (A 0 (A 0 (A 1 1))))
; (A 0 (A 0 (A 0 2)))
; (A 0 (A 0 4))
; (A 0 8)
; --> 16
;
; but: (A 2 5) is massive! So it's doubling the result of doubling?
; looks like (A 2 4) = (* 32 (* 16 (* 8 (* 4 4)))) = 65536
; Wiki says: 2^2^... (n-1 times)
; According to http://jots-jottings.blogspot.com/2011/08/sicp-110-ackermanns-function.html
; this is called tetration, which apparently you can write ⁿ2
(define (h n) (A 2 n))
