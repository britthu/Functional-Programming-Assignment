(DEFINE (sum-up-numbers-simple L);sums all numeric values excluding those in nested lists.
	(COND
		((NOT(LIST? L)) 0);if a list is not found or the list is null then zero returned
		((NULL? L) 0)
		((number? (CAR L))(+ (CAR L) (sum-up-numbers-simple (CDR L))));if a number is found then it is added to the result of the function called of the remaining list; recursion 
                (ELSE (sum-up-numbers-simple (CDR l)));if no number is found, move on to rest of list
         )
)