# Calcula a resistencia de um fio

d = 0.73  # mm
l = 0.35  # m
V = 12    # volts
rho = 1.37 # ohms x mm²/m

resistencia_fio <- function(diametro, comprimento, resistividade)
{
  r = diametro/2
  A = pi*r**2
  resistencia = resistividade*comprimento/A  # ohms
  return (resistencia)
}

potencia <- function(voltagem, resistencia)
{
  P = voltagem**2/resistencia
  return(P)
}

R = resistencia_fio(d, l, rho)
P = potencia(V,R)    # Watts

