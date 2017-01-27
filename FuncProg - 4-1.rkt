(DEFINE (new-list L)
        (COND
         ((number? (CAR L)) (append (LIST (CAR L)) (new-list (CDR L)) ))
         ((NOT(number? (CAR L))) new-list(CDR L))
        )
)
          
(DEFINE (min-above-min L1 L2)
        (LET
         (
          (L1a (LIST (CAR (new-list L1))))
          (L2a (LIST (CAR (new-list L2))))
          )
         )
        (COND
         ((NULL? L1) #F)
         ((AND (NULL? L2) (NOT (NULL? L1))) (COND
                                            ((< (CAR (new-list L1)) (CAR L1a)) (CONS (CAR (new-list L1)) (L1a)))
                                            (ELSE )
                                            )
         )
         ((NOT (NULL? (CAR L2))) )

        )
)