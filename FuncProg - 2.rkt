(DEFINE (sum-up-numbers-general L)
	(COND
		(NOT(LIST? L) 0)
		(NULL? L) 0)
		(ELSE (IF
			(number? (CAR L)) 
			(LET
				(adder (CAR L))
			)
			(LET
				(sum (+ 0 adder))
			)
		)
	)
)