;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex1.17) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

(define (double x) (+ x x))
(define (halve x) (/ x 2))

;; a*b = a*b/2 + a*b/2 ... if b is even
;; a*b = a + a*(b-1)   ... if a is odd
;; a*b = 0             ... if b is zero

(define (fast-mul a b)
  (cond ((= b 0) 0)
        ((even? b) (double (fast-mul a (halve b))))
        (else (+ a (fast-mul a (- b 1))))))

;; Testing
(* 2 4) 
(* 4 0) 
(* 5 1) 
(* 7 10)

