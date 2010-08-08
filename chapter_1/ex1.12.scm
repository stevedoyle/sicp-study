(define (pascal row col)
  (cond ((or (= 0 col) (= row col)) 1)
        (else (+ (pascal (- row 1) (- col 1))
                 (pascal (- row 1) col))))) 
