(define (fib n)
  (if (< n 2) 
    1 
    (+ (fib (- n 2)) 
       (fib (- n 1))
    )))

(define (sum-even-fibs-up-to limit)
  (define (loop n acc)
    (let ((fib-n (fib n)))
      (cond
        ((> fib-n limit) acc)
        (else (loop (+ n 1) 
                      (if (even? fib-n) 
                          (+ acc fib-n) 
                          acc)))
      )))
  (loop 0 0))
