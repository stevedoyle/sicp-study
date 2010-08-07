(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; When b>0: a+b, otherwise a - b

; Example:
(a-plus-abs-b 1 2)  ; Ans: 3
(a-plus-abs-b 1 -2) ; Ans: 3
