;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex1.19) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

(define (fib n) 
  (fib-iter 1 0 0 1 n)) 
(define (fib-iter a b p q count) 
  (cond ((= count 0) b) 
        ((even? count) 
         (fib-iter a 
                   b 
                   (+ (square p) (square q)) 
                   (+ (* 2 p q) (square q)) 
                   (/ count 2))) 
        (else (fib-iter (+ (* b q) (* a q) (* a p)) 
                        (+ (* b p) (* a q)) 
                        p 
                        q 
                        (- count 1))))) 
  
(define (square x) (* x x)) 
  
;; Testing 
(fib 0) 
(fib 1) 
(fib 2) 
(fib 3) 
(fib 4) 
(fib 5) 
(fib 6) 
(fib 7) 
(fib 8) 
(fib 9) 
(fib 10) 
  
