(load "test-utils.scm")
(load "001-100/004/src/main.scm")

(initialize-test "004 test suite")

; Should output palindromes based on input.
(assert-equal 123321 (make-palindrome 123))

; Should make all 6-digit palindromes.
(define palindromes (make-palindromes))
(assert-equal 900 (length palindromes))
(assert-equal 999999 (first palindromes))
(assert-equal 100001 (last palindromes))

; Should make factor pairs.
(assert-equal '((1 19)) (factor-pairs 19))
(assert-equal '((4 5) (2 10) (1 20)) (factor-pairs 20))

; Should identify three digit pairs.
(assert-true (three-digit-pair? '(100 999)))
(assert-false (three-digit-pair? '(99 200)))
(assert-false (three-digit-pair? '(200 1000)))

; Should compute the correct Euler Project result.
; (assert-equal '(906609 (913 993)) (find-greatest-palindrome))

; Fast algorithm should work as well.
(assert-equal 906609 (fast-find-greatest-palindrome))

(end-test)
