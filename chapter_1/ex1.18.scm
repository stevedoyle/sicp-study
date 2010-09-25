;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex1.18) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; Assume double and halve are available
(define (double x) (+ x x)) 
(define (halve x) (/ x 2)) 
  
(define (fast-mul a b) 
  (iter 0 a b))   

;; x + a*b = x + (2a * b/2)     ... if b is even
;; x + a*b = x+a + a*(b-1)      ... if b is odd
;; x + a*b = x                  ... if b is zero
;; The value of x+ab remains invariant for each iteration
;;
(define (iter accumulator a b) 
  (cond ((= b 0) accumulator) 
        ((even? b) (iter accumulator (double a) (halve b))) 
        (else (iter (+ accumulator a) a (- b 1))))) 
    
;; Testing 
(* 2 4) 
(* 4 0) 
(* 5 1) 
(* 7 10) 
