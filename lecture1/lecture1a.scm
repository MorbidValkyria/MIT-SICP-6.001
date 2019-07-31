;; Lecture 1A | MIT 6.001 Structure and Interpretation (1986)
;; This code is taken from the lectures by MIT to some HP employees
;; All the code from Lecture 1A will be displayed here and some
;; comments explaining the procedures




;; LINEAR CONVINATION:
;; (* x (+ a1 a2))

(* 2 (+ 1 2))  ;; -> 8


;; CONVENTIONAL INTERFACES, BASIC MEANS OF COMBINATION:
(+ 3 17.4 5)   ;; ->24.4

;; (operator operands)-> combination

(+ 3 (* 5 6) 8 2) ;; -> 43
;; Lisp uses PREFIX-NOTATION

;; IMPORTANT: IN LISP YOU CANNOT LEAVE OUT PARENTHESIS OR ADD EXTRA PARENTHESIS
;; parenthesis means this is a combination

(+ 3 4 8) ;; -> 15
(+ (* 3 (+ 7 19.5)) 4) ;; -> 83.5

;; PRETTY PRINTING:
(+ (* 3 5)
   (* 47
      (- 20 6.8))
   12) ;; -> 647.4

;; PROCEDURES

(define A (* 5 5))

(* A A) ;; -> 625

(define B (+ A (* 5 8)))

B ;; -> 150

(+ A (/ B 5)) ;; -> 55

(* 5 5)
(* 6 6)
(* 1001.7 1001.7)

(define (SQUARE X) (* X X))
(SQUARE 10) ;; -> 100

(define SQUARE (lambda X) (* X X))


(SQUARE 1001) ;; -> 1002001
(SQUARE (+ 5 7)) ;; -> 144
(+ (SQUARE 3) (SQUARE 4)) ;; -> 25
(SQUARE (SQUARE ( SQUARE 1001)))

SQUARE ;; -> COMPOUND PROCEDURE SQUARE

(define (average x y)
  (/ (+ x y) 2))

(define (mean-square x y)
  (average (square x)
           (square y)))

(mean-square 2 3) ;; -> 6.5

+ ;; COMPOUND-PROCEDURE +

(define (ABS x)
  (cond ((< x 0) (- x))
        ((= x 0) 0)
        ((> x 0) x)))

(define (ABS x)
  (if (< x 0)
      (- x)
      x))

;; Find the square root of x, Heron of Alexandria


(define (improve guess x)
    (average guess (/ x guess)))

  (define (good-enogh? guess x)
    ( < (abs (- ( square guess) x))
         .001))


;; Another example:

(define (SQRT x)
  (define (improve guess)
    (average guess (/ x guess)))
  (define (good-enough? guess)
    (< (abs (- (square guess) x))
       .001))
  (define (try guess)
    (if (good-enogh? guess)
       guess
       (try (improve guess))))
  (try 1))


