(load "test-utils.scm")
(load "lib/essentials.scm")

(initialize-test "Essentials test suite")

; Standard range function works.
(assert-equal '(1 2 3 4 5 6 7 8 9) (range 1 10))
(assert-equal '(7 8 9 10 11 12 13 14) (range 7 15))

; Range works with steps.
(assert-equal '(3 6 9 12 15 18 21 24 27) (range 3 30 3))
(assert-equal '(4 7 10 13 16 19) (range 4 20 3))
(assert-equal '(5 10 15 20 25) (range 5 30 5))

; Range doesn't process invalid inputs.
(assert-equal '() (range 7 3))

; Remove-duplicates can remove repeated values.
(assert-equal '(3 2 4) (delete-duplicates '(3 2 3 4 3)))
(assert-equal '(2 7) (delete-duplicates '(2 2 2 2 7 7 2 7)))

; Can reverse a string.
(assert-equal "" (string-reverse ""))
(assert-equal "cba" (string-reverse "abc"))
(assert-equal "!dlroW olleH" (string-reverse "Hello World!"))

; Can increment and decrement.
(assert-equal 5 (inc 4))
(assert-equal 46 (inc 45))
(assert-equal 7 (dec 8))
(assert-equal 21 (dec 22))

(end-test)
