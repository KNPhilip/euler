(load "lib/essentials.scm")

(define (sum-square-diff n)
  (let ((nat-n (range 1 (inc n))))
    (- 
      (square (sum nat-n))
      (sum (map square nat-n))
    )))

(define (sum-n n) 
  (/ (* n (inc n)) 2))

(define (sum-n2 n) 
  (/ (* n (inc n) (inc (* 2 n))) 6))

(define (fast-sum-square-diff n)
  (- (square (sum-n n)) (sum-n2 n)))
