(load "test-utils.scm")
(load "my-project/src/logic.scm")

(initialize-test "My-Project test suite")

(assert-equal 4 (plus 2 2))
(assert-equal 6 (plus 3 3))
(assert-equal 8 (plus 4 4))
(assert-equal 10 (plus 5 5))

(end-test)
