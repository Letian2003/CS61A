(define (over-or-under num1 num2)
    (cond
        [(< num1 num2) -1]
        [(= num1 num2) 0]
        [(> num1 num2) 1]
    )
)

(define (composed f g) 
    (lambda (x) (f (g x)))
)

(define (make-adder num) 
    (lambda (x) (+ num x))
)


(define lst 'YOUR-CODE-HERE)

(define (remove item lst) 'YOUR-CODE-HERE)
