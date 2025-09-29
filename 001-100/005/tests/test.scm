(load "test-utils.scm")
(load "lib/essentials.scm")
(load "001-100/005/src/main.scm")

(initialize-test "005 test suite")

; Should compute simple smallest multiple results.
(assert-equal 1 (smallest-multiple '(1)))
(assert-equal 2 (smallest-multiple '(1 2)))
(assert-equal 4 (smallest-multiple '(2 4)))
(assert-equal 2520 (smallest-multiple (range 1 11)))

; Should compute the correct Euler Project result.
; (assert-equal 232792560 (smallest-multiple (range 1 21)))

(end-test)
