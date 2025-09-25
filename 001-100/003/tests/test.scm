(load "test-utils.scm")
(load "001-100/003/src/main.scm")

(initialize-test "003 test suite")

; Should compute trivial prime factors.
(assert-equal '() (factors-of 0))
(assert-equal '(2) (factors-of 2))
(assert-equal '(3) (factors-of 3))
(assert-equal '(2 2) (factors-of 4))
(assert-equal '(5) (factors-of 5))
(assert-equal '(2 3) (factors-of 6))
(assert-equal '(7) (factors-of 7))
(assert-equal '(2 2 2) (factors-of 8))
(assert-equal '(3 3) (factors-of 9))

; Should compute big prime factors.
(assert-equal '(2 2 3 3 5 7 11 11 13) 
    (factors-of (* 2 2 3 3 5 7 11 11 13)))

; Should compute the correct Euler Project result.
; (assert-equal 6857 (largest-prime-up-to 600851475143))

(end-test)
