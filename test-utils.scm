(define test-results '())

(define (assert-equal expected actual)
  (let ((result (equal? expected actual)))
    (set! test-results (cons result test-results))
    (if result
        (display ".")
        (begin
          (display "\nTest failed:\n")
          (display "  Expected: ") (write expected) (newline)
          (display "  Got: ") (write actual) (newline)))
    result))

(define (initialize-test-results)
  (set! test-results '()))
