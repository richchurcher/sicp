(define (square x) (* x x))
(define (sum-square x y)
  (+ (square x) (square y)))
(define (sum-square-larger x y z)
  (cond ((and (> x z) (> y z)) (sum-square x y))
        ((and (> x y) (> z y)) (sum-square x z))
        (else (sum-square y z))))

(define (test a b)
  (displayln
    (if (= a b) "PASS" "FAIL")))

(test 13 (sum-square-larger 1 2 3))
(test 13 (sum-square-larger 3 2 1))
(test 18 (sum-square-larger 3 3 3))
(test 18 (sum-square-larger 3 2 3))
