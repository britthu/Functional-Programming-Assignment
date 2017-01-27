(DEFINE (sum-up-numbers-general L);add every numerical value in a list and each sublist together
	(COND
		((NOT(LIST? L)) 0);if no list is found or list id empy then a zero is returned
		((NULL? L) 0)
		((number? (CAR L))(+ (CAR L) (sum-up-numbers-general(CDR L))));if a number is found then it is added to the result of the function called of the remaining list; recursion
                ((LIST? (CAR L)) (+ (sum-up-numbers-general (CAR L))(sum-up-numbers-general (CDR L))));if element in list is another list, the function is called again to compute the sum of those values in addition to the rest of the original list
                (ELSE (sum-up-numbers-general(CDR L)));if no list of number is found, move on to rest of list
         )