(define test-name "")
(define test-results '())

(define (initialize-test name)
  (set! test-name name)
  (set! test-results '()))

(define (assert-equal expected actual)
  (let ((result (equal? expected actual)))
    (set! test-results (cons result test-results))
    (if result
        #t
        (begin
          (display "\nAssertion failed in \"") 
          (display test-name) (display "\":\n")
          
          (display "  Expected: ") (write expected) (newline)
          (display "  Got: ") (write actual) (newline)))
    result))

(define (count pred lst)
  (if (null? lst)
      0
      (+ (if (pred (car lst)) 1 0)
         (count pred (cdr lst))
      )))

(define (end-test)
  (let* ((total (length test-results))
         (passed (count (lambda (x) x) test-results))
         (failed (- total passed)))
    (newline)
    (display "Finished running \"") (display test-name) (display "\": \n")
    (display "  Total tests: ") (write total) (newline)
    (display "  Passed: ") (write passed) (newline)
    (display "  Failed: ") (write failed) (newline)
    (newline)
    (exit)))
