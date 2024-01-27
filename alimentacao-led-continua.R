# Calcula resitor para alimentacao de leds
# Autor: Elmar Uhl - 2023

#Infravermelho 1,5 V
#Infravermelho 1,7 V
#Infravermelho 1,7 V
#Vermelho 1,8 V
#Vermelho (alta eficiência) 2,0 V
#Super Vermelho 2,2 V
#Super Laranja 2,2 V
#Laranja 2,2 V
#Laranja (2) 2,1 V
#Super Amarelo 2,2 V
#Amarelo 2,1 V
#Branco incandescente 3,3 V
#Amarelo pálido 3,6 V
#Branco quente 3,6 V
#Amarelo “Lime” 2,4 V
#Verde “lime” 2,0 V
#Verde Alta Eficiência 2,1 V
#Verde super puro 2,1 V
#Verde Puro 2,1 V
#Ver Água 3,5 V
#Azul-Verde 3,5 V
#Super Azul 3,6 V
#Ultra Azul 3,8 V

# numero de leds
n = 1
# Corrente nos leds (A)
I = 0.02
# Voltagem de entrada (V)
V = 9
# Voltagem dos leds
Vl = 2.0

# Calculo
R = (V - n*Vl)/I
P = R * I**2

print(paste("Valor da resistencia = ",R,"Ohms"))
print(paste("Potencia dissipada no resitor = ", P,"Watts"))

