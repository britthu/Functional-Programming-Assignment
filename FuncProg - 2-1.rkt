(DEFINE (sum-up-numbers-general L)
	(COND
		(NOT(LIST? L) 0)
		((NULL? L) 0)
		(ELSE (COND
			((number? (CAR L)) (LET
                                           (sum (+ (CAR L) (sum-up-numbers-general(CDR L)))))
                                           )
                        (ELSE (sum-up-numbers-general(CDR l)))
                        )
                      )
                )
        (DISPLAY sum)
        )