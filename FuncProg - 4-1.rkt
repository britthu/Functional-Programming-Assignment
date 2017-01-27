(DEFINE (new-list L)
        (COND
         ((number? (CAR L)) (append (LIST (CAR L)) (new-list (CDR L)) ))
         ((NOT(number? (CAR L))) new-list(CDR L))
        )
)
          
(DEFINE (min-above-min L1 L2)
        (COND
         ((NULL? L1) #F)
         ((AND (NULL? L2) (NOT (NULL? L1))) (< (CAR(new-list L1)) (CDR (new-list L1))))
         ((NOT (NULL? (CAR L2)))(> (< (CAR(new-list L1)) (CDR (new-list L1))) (< (CAR(new-list L2)) (CDR (new-list L2)))))

        )
)