(load "lib/essentials.scm")

(define (sum-multiples factors limit)
  (define (range-multiples factor)
    (range factor limit factor))

  (define multiples
    (apply append (map range-multiples factors)))
  
  (apply + (delete-duplicates multiples)))
