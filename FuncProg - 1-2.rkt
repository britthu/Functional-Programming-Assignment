(DEFINE (reverse-general L)
        (COND
         ((NUll? L) '())
         ((LIST? L)
          (CONS (reverse-general (CDR L)) (reverse-general (CAR L)))
          )
         (ELSE L)
        )
)