(load "lib/essentials")

(define (make-palindrome n)
  (let ((str (number->string n)))
    (string->number (string-append str 
      (string-reverse (substring str 0 (string-length str))))
    )))

(define (make-palindromes)
  (define palindromes '())
  (do ((i 100 (inc i)))
      ((= i 1000) palindromes)
    (let ((palindrome (make-palindrome i)))
      (set! palindromes (cons palindrome palindromes)))
  ))

(define (factor-pairs n)
  (define (find-pairs x acc)
    (if (> x (floor (sqrt n)))
        acc
        (if (zero? (modulo n x))
            (find-pairs (inc x) (cons (list x (/ n x)) acc))
            (find-pairs (inc x) acc))))
  (find-pairs 1 '()))

(define (three-digit-pair? pair)
  (let ((a (car pair))
        (b (cadr pair)))
    (and (> a 99)
         (< a 1000)
         (> b 99)
         (< b 1000))))

(define (find-greatest-palindrome)
  (let loop ((palindromes (make-palindromes)))
    (if (null? palindromes)
        #f
        (let* ((current-palindrome (car palindromes))
               (pairs (factor-pairs current-palindrome))
               (good-pairs (filter three-digit-pair? pairs)))
          (if (null? good-pairs)
              (loop (cdr palindromes))
              (list current-palindrome (car good-pairs)))
        ))))

(define (fast-find-greatest-palindrome)
  (define (loop seed palindrome factor)
    (if (and (zero? (modulo palindrome factor))
             (> 999 (quotient palindrome factor)))
        palindrome
        (if (> 999 (quotient palindrome factor))
            (loop seed palindrome (dec factor))
            (loop (dec seed) (make-palindrome (dec seed)) 999))))
  (loop 999 999999 999))
