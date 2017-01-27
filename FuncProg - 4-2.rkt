(DEFINE (new-list L);thisfunctions makes a new list with atoms as elements
        (COND
         ((number? (CAR L)) (append (LIST (CAR L)) (new-list (CDR L)) ));if a number add to a new list
         ((NOT(number? (CAR L))) new-list(CDR L));if not check the rest of the list
        )
)

(DEFINE (min-above-min L1 L2)
        (LET
         (
          (L1a (LIST (CAR (new-list L1))));assigns the first number to new list: L1a
          (L2a (LIST (CAR (new-list L2))))
          )
         )
        (COND
         ((NULL? L1) #F)
         ((AND (NULL? L2) (NOT (NULL? L1))) (COND ;if L2 is null then find the minimum of L1
                                            ((< (CAR (new-list L1)) (CAR L1a)) CONS (CAR (new-list L1)) (L1a));use new list to compare to the first element in L1a; if the elements are less than that in L1a then they are added to that list. This way the least value will be the first element in L1a
                                            (ELSE min-above-min (CDR(new-list L1)) L1a);else, check rest if new list for a smaller value
                                            )
         )
         ((NOT (NULL? (CAR L2))) (COND
                                  ((< (CAR (new-list L2)) (CAR L2a)) (< (CAR (CONS (CAR (new-list L2)) (L2a))) (CAR (new-list L1)) );the smallest value in the new L2 list is looked for and that usedto find the value smalledt in new L1 that is larger than the minimum in L2(CAR (L2a))
                                  (ELSE min-above-min (CDR(new-list L1)) (CAR (L2a)));else, check the rest of L1 with the smalles in L2a.
                                  )
                                 )
                                 )
                                            

        )
)