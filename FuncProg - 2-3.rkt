(DEFINE (sum-up-numbers-simple L)
	(COND
		((NOT(LIST? L)) 0)
		((NULL? L) 0)
		((number? (CAR L))(+ (CAR L) (sum-up-numbers-simple (CDR L)))) 
                (ELSE (sum-up-numbers-simple (CDR l)))
         )
)