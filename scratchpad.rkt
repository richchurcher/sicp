(define (factorial n)
  (if (= n 1)
    1
    (* n (factorial (- n 1)))))
(factorial 6)

(define (fact-iter prod i n)
  (if (> i n)
    prod
    (fact-iter (* prod i) (+ 1 i) n)))
(fact-iter 1 1 6)

; int fact_iter(int n) {
;   int prod = 1;
;   for (int i = 0; i < n; i++) {
;     prod = (i + 1) * prod;
;   }
;   return prod;
; }
