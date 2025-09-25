(define (factors-of n)
  (define (factor-helper n i)
    (cond
      ((> i n) '())
      ((= (modulo n i) 0)
        (cons i (factor-helper (/ n i) i)))
      (else
        (factor-helper n (+ i 1)))))
  (factor-helper n 2))

(define (largest-prime-up-to n)
  (last (factors-of n)))
