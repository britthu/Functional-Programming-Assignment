(DEFINE (min-of-list L)
        (COND
         ((NOT (number? (CAR L))) (min-of-list(CDR L)))
         ((< (CAR L) (min-of-list (CDR L)))(CAR L))
         (ELSE (min-of-list (CDR L)))
         )
)

(Define (highest-min-L1-L2 L1 B)
)

(DEFINE (min-above-min L1 L2)
        (COND
         ((NULL? L1) #F)
         ((NULL? L2) (COND
                      ((NOT (NULL? L1)) then call helper L1 func)
         )
         ((number? (CAR L2))find minimum  )
)