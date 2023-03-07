(define (cddr s) (cdr (cdr s)))

(define (cadr s) 
    (car (cdr s))
)

(define (caddr s) 
    (car (cddr s))
)

(define (ordered? s) 
    (if (or (null? s) (null? (cdr s))) #t
        (if (>= (cadr s) (car s)) (ordered? (cdr s)) #f)
    )
)

(define (square x) (* x x))

(define (pow base exp) 
    (if (= exp 1) base
        (if (even? exp) (square (pow base (quotient exp 2)))
            (* (square (pow base (quotient exp 2))) base)
        )
    )
    
)
