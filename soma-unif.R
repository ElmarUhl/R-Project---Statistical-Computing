# Autor: Elmar de Oliveira Uhl
# Soma distribuicoes uniformes

for (i in 1:100) {
  x = runif(1000)
  

  y = y+x
  hist(y)
  Sys.sleep(1)

}

