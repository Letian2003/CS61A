(define (my-filter func lst) 
    (if (null? lst) nil
        (if (func (car lst)) (cons (car lst) (my-filter func (cdr lst) ) )
            (my-filter func (cdr lst))
        )
    )
)

(define (interleave s1 s2) 
    (if (null? s1) s2
        (if (null? s2) s1
            (cons (car s1) (interleave s2 (cdr s1)))           
        )

    )
)

(define (accumulate merger start n term)
    (if (= n 1) (merger start (term 1))
        (accumulate merger (merger start (term n) ) (- n 1) term)
    )
)

(define (no-repeats lst) 
    (my-filter     
        
    lst)
)
