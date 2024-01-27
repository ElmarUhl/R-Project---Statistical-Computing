# Autor: Elmar de Oliveira Uhl
# calculo de propriedades de pendulo
g = 9.80665 # m/s^2

periodo <- function(l) {
  T = 2*pi*sqrt(l/g) # s
  return(T)
}

comprimento <- function(T) {
  l = g*(T/(2*pi))**2
  return(l)
}
