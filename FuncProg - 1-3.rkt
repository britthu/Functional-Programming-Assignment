(DEFINE (reverse-general L)
        (COND
         ((NUll? L) '())
         ((LIST? L)
          (append (reverse-general (CDR L)) (LIST (reverse-general (CAR L))))
          )
         (ELSE L)
        )
)