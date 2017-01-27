(DEFINE (reverse-general L);output a list in the reverse order including elements in nested lists
        (COND
         ((NUll? L) '());if list is empty, output empty brackets
         ((LIST? L)
          (append (reverse-general (CDR L)) (LIST (reverse-general (CAR L))));if a list is found, it taken back into the function. The function takes the rest of the list as parameter first so whenever it returns, it appends the last element/s first. eg[(c (a b)) =>((append b a))=>((append (b a) c))  
          )
         (ELSE L);if no list is found, then the element is returned
        )
)