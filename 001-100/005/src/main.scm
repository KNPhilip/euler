(define (gcd a b)
  (if (zero? b)
    a
    (gcd b (modulo a b))))

(define (lcm a b)
  (/ (* a b) (gcd a b)))

(define (smallest-multiple list)
  (fold lcm 1 list))
