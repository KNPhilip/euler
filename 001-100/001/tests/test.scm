(load "test-utils.scm")
(load "001-100/001/src/main.scm")

(initialize-test "001 test suite")

; Should be zero if limit is below all factors.
(assert-equal 0 (sum-multiples '() 0))
(assert-equal 0 (sum-multiples '(3 5) 0))
(assert-equal 0 (sum-multiples '(3 5) 1))
(assert-equal 0 (sum-multiples '(3 5) 3))

; Should be 14 for 7, 8, and 9.
(assert-equal 14 (sum-multiples '(3 5) 7))
(assert-equal 14 (sum-multiples '(3 5) 8))
(assert-equal 14 (sum-multiples '(3 5) 9))

; Should compute the correct result from the sample factors.
(assert-equal 23 (sum-multiples '(3 5) 10))

; Should compute the correct Euler Project result.
(assert-equal 233168 (sum-multiples '(3 5) 1000))

(end-test)
