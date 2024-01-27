# Calcula capacitor para alimentacao de leds
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
# Frequencia da tensao de entrada (Hz)
f = 60

# Calculo
Z = V/I
R = n*Vl/I
Xc = sqrt(Z**2 - R**2)
C = 1/(2*pi*f*Xc)

print(paste("Valor da impedancia do circuito = ",Z,"Ohms "))
print(paste("Valor da resistencia da carga = ", R, "Ohms"))
print(paste("Valor da reatancia capacitiva = ",Xc,"Ohms "))
print(paste("Valor da capacitancia = ", C, "Farads"))


