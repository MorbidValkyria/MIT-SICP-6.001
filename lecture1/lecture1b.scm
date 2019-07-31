;; lecture 1 part b

;; sos = sum of the squares
(define (sos x y)
  (+ (sq x) (sq y)))

(define (sq x)
  (* x x))

(sos 3 4) ;; -> 25



;; KINDS OF EXPRESSIONS:
;;  1- NUMBERS
;;  2- SYMBOLS
;;  3- LAMBDA EXPRESSIONS
;;  4- DEFINITIONS 
;;  5- CONDITIONALS 
;;  6- COMBINATIONS


;; SUBSTITUTION RULE
;; To evaliate an application
;;   Evaluate the operator to get procedure
;;   Evaluate the operands to get arguments
;;   Apply the procedure to the arguments 
;;      Copy the body of the procedure substituting the arguments supplied,
;;      for the formal parameters of the procedure
;;      Evaluate the resulting new body









