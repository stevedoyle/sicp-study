; Because new-if is a function, both of its parameters are evaluated 
; before the operation is performed. Since one of the parameters is 
; a call to sqrt-iter, the first operation of which is a call to 
; new-if, an endless loop is formed and the function never completes. 


