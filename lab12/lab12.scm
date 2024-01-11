(define (if-program condition if-true if-false)
  (list 'if condition if-true if-false)
)

(define (pow-expr n p) 
  (cond ((= p 0) 1)
        ((= p 1) (list '* p n))
        (else (list '* (pow-expr n (- p 1)) n))
  )
)

(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (swap expr)
  (let ((op (car expr))
        (first (car (cdr expr)))
        (second (caddr expr))
        (rest (cdr (cddr expr))))
        (if (> (eval second) (eval first))
            (append (list op second first) rest)
            expr
        )
  )
)
