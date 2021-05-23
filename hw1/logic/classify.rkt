#lang rosette

(require rackunit)

(provide (all-defined-out))

; Takes as input a propositional formula and returns
; * 'TAUTOLOGY if every interpretation I satisfies F;
; * 'CONTRADICTION if no interpretation I satisfies F;
; * 'CONTINGENCY if there are two interpretations I and I′ such that I satisfies F and I' does not.
(define (classify F)
  (let ([m (solve (assert F))])
    (cond
      [(and (symbol? m) (symbol=? m 'CONTRADICTION)) 'CONTRADICTION]
      [(unsat? m) 'CONTRADICTION]
      [(= (length (hash-keys (model m))) 0) 'TAUTOLOGY]
      [(sat? m) 'CONTINGENCY]
      [else m])))

(define-symbolic* p q r boolean?)

; (p → (q → r)) → (¬r → (¬q → ¬p))
(define f0 (=> (=> p (=> q r)) (=> (! r) (=> (! q) (! p)))))

; (p ∧ q) → (p → q)
(define f1 (=> (&& p q) (=> p q)))

; (p ↔ q) ∧ (q → r) ∧ ¬(¬r → ¬p)
(define f2 (&& (<=> p q) (=> q r) (! (=> (! r) (! q)))))

(define f3 (|| p (! p)))

(check-eq? (classify f0) 'CONTINGENCY)
(check-eq? (classify f1) 'CONTINGENCY)
(check-eq? (classify f2) 'CONTRADICTION)
(check-eq? (classify f3) 'TAUTOLOGY)
