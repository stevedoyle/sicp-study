;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex1.16) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

(define (fast-expt b n)
  (iter 1 b n))

;; ab^n = a(b^2)^(n/2)  ... if n is even
;; ab^n = ab(b^(n-1))   ... if n is odd
;; ab^n = a             ... if n is zero
;;
;; Through each iteration, a increases while b and n decrease. However the
;; value of ab^n remains the same for each iteration.
;;
(define (iter a b n)
  (cond ((= n 0) a)
        ((even? n) (iter a (square b) (/ n 2)))
        (else (iter (* a b) b (- n 1)))))

(define (square x) (* x x))

;; testing
(fast-expt 2 0) 
(fast-expt 2 1) 
(fast-expt 2 2) 
(fast-expt 2 3) 
(fast-expt 2 4) 
(fast-expt 2 5) 
(fast-expt 2 8) 
(fast-expt 2 16) 
(fast-expt 2 20) 

