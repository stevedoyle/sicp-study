(A 1 10) => 1024
(A 2 4) => 65536
(A 3 3) => 65536

(define (f n) (A 0 n)) => 2n
(define (g n) (A 1 n)) => 2^n for n>0, 0 for y = 0
(define (h n) (A 2 n)) => h(1) = 2, h(n) = 2^h(n-1) 


