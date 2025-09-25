(load "test-utils.scm")
(load "001-100/002/src/main.scm")

(initialize-test "002 test suite")

; Should calculate the correct fibonacci number.
(assert-equal 1 (fib 0))
(assert-equal 1 (fib 1))
(assert-equal 2 (fib 2))
(assert-equal 3 (fib 3))
(assert-equal 5 (fib 4))
(assert-equal 8 (fib 5))
(assert-equal 13 (fib 6))
(assert-equal 21 (fib 7))

; Should sum even fibs up to n.
(assert-equal 0 (sum-even-fibs-up-to 1))
(assert-equal 2 (sum-even-fibs-up-to 2))
(assert-equal 2 (sum-even-fibs-up-to 3))
(assert-equal 2 (sum-even-fibs-up-to 5))
(assert-equal 10 (sum-even-fibs-up-to 8))
(assert-equal 10 (sum-even-fibs-up-to 21))
(assert-equal 44 (sum-even-fibs-up-to 34))

; Should compute the correct Euler Project result.
; (assert-equal 4613732 (sum-even-fibs-up-to 4000000))

(end-test)
