(load "test-utils.scm")
(load "001-100/006/src/main.scm")

(initialize-test "006 test suite")

; Should compute the correct result from the sample numbers.
(assert-equal 2640 (sum-square-diff 10))

; Should compute the correct Euler Project result.
(assert-equal 25164150 (sum-square-diff 100))

; Fast algorithm should work as well.
(assert-equal 25164150 (fast-sum-square-diff 100))

(end-test)
