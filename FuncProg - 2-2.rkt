(DEFINE (sum-up-numbers-general L)
	(COND
		((NOT(LIST? L)) 0)
		((NULL? L) 0)
		((number? (CAR L))(+ (CAR L) (sum-up-numbers-general(CDR L)))) 
                (ELSE (sum-up-numbers-general(CDR l)))
         )
)

