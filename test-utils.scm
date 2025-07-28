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

(define (count pred lst)
  (if (null? lst)
      0
      (+ (if (pred (car lst)) 1 0)
         (count pred (cdr lst))
      )))

(define (summary)
  (let* ((total (length test-results))
         (passed (count (lambda (x) x) test-results))
         (failed (- total passed)))
    (newline)
    (display "Summary:\n")
    (display "  Total tests: ") (write total) (newline)
    (display "  Passed: ") (write passed) (newline)
    (display "  Failed: ") (write failed) (newline)
    (exit)))

(define (initialize-test-results)
  (set! test-results '()))
