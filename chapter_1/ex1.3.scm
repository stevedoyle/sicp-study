(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sosol x y z)
  (cond ((and (< z x) (< z y)) (sum-of-squares x y))
        ((and (< y x) (< y z)) (sum-of-squares x z))
        (else (sum-of-squares y z)))) 

; Example usage
(sosol 2 3 4) ; Expected answer: 25













