; Recursive:
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1)) 
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))

; Iterative:
(define (fi n)
  (if (< n 3)
      n
      (f-iter 3 2 1 0 n)))
      
(define (f-iter i f-i-1 f-i-2 f-i-3 n)
  (if (> i n)
      f-i-1
      (f-iter (+ i 1)
              (+ f-i-1 (* 2 f-i-2) (* 3 f-i-3))
              f-i-1
              f-i-2 n))) 