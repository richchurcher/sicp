; (define (+ a b)
;   (if (= a 0)
;     b
;     (inc (+ (dec a) b))))

; (+ 4 5)
(if (= 4 0)
  5
  (+ 1 (if (= (- 1 4) 0)
    5
    (+ 1 (if (= (- 1 3) 0)
      5
      (+ 1 (if (= (- 1 2) 0)
        5
        (+ 1 5)))
    ))
  ))
)

; resolving ifs, see:
; http://community.schemewiki.org/?sicp-ex-1.9
(define (inc n) (+ n 1))
(define (dec n) (- n 1))
(inc (+ (dec 4) 5))
(inc (+ 3 5)) 
(inc (inc (+ (dec 3) 5)))
(inc (inc (+ 2 5)))
(inc (inc (inc (dec 2) 5)))
(inc (inc (inc (+ 1 5))))
(inc (inc (inc (+ (dec 1) 5))))
(inc (inc (inc (inc (+ 0 5)))))
(inc (inc (inc (inc 5))))
(inc (inc (inc 6)))
(inc (inc 7))
(inc 8)

(+ 1 (+ 1 (+ 1 (+ 1 5))))

; (define (+ a b)
;   (if (= a 0)
;     b
;     (+ (dec a) (inc b))))

(+ 4 5)
(if (= 4 0)
  5
  (if (= (- 1 4) 0)
    (+ 1 5)
    (if (= (- 1 3) 0)
      (+ 1 6)
      (if (= (- 1 2) 0)
        (+ 1 7)
        (+ 1 8)
      )
    )
  )
)
