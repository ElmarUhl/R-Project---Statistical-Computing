# Impedancia de capacitor e resistor sobre uma entrada AC
# Elmar de Oliveira Uhl

t = seq(0, 0.1, 0.0001)

V0 = 110 # pico da voltagem de entrada
f = 60 # frequencia da voltagem de entrada
Vin = V0*cos(2*pi*f*t) # funcao de onda da voltagem de entrada

C = 0.01 # capacitancia
R = 0.0001 # resistencia
Vout = -C*V0/(2*pi*f*R)*sin(2*pi*f*t)

plot(Vin~t,type='l') # Grafico da voltagem de entrada
lines(Vout~t,col="red") # Grafico da voltagem de saida
