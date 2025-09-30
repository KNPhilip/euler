(define (range start end . optional)
  (let ((step (if (null? optional) 1 (car optional))))
    (define (loop n)
      (if (>= n end)
          '()
          (cons n (loop (+ n step)))
      ))
    (loop start)))

(define (delete-duplicates xs)
  (let ((seen (make-hash-table equal?)))
    (let loop ((xs xs) (new-list '()))
      (if (null? xs)
          (reverse new-list)
          (loop (cdr xs)
                (let ((x (car xs)))
                  (if (hash-table-contains? seen x)
                      new-list
                      (begin (hash-table-set! seen x #t)
                             (cons x new-list)))))))))

(define (string-reverse str)
  (define (reverse-helper lst acc)
    (if (null? lst)
        acc
        (reverse-helper (cdr lst) (cons (car lst) acc))))
  (list->string (reverse-helper (string->list str) '())))

(define (inc n)
  (+ n 1))

(define (dec n)
  (- n 1))

(define (sum lst)
  (apply + lst))

(define (square n)
  (* n n))
