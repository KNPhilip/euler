(load "test-utils.scm")
(load "my-project/src/logic.scm")

(initialize-test-results)

(define (run-tests)
  (assert-equal 4 (plus 2 2))
  (assert-equal 6 (plus 3 2)))

(run-tests)
(summary)
