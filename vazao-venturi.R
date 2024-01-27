# Calculo da vazao utilizando um venturi
# Elmar de Oliveira Uhl

# fluido no venturi
A1 = 1 # Area da secao 1
A2 = 2 # Area da secao 2
rho = 1.0 # Densidade do fluido

# fluido tubo U
rho2 = 1.0 #Densidade
g = 9.8 # Aceleracao da gravidade
h = 1.0 # altura

# medida de pressao no tubo U
dP = rho2*g*h

# calculo da velocidade no venturi
v1 = sqrt(2*dP/(rho*(1 - (A1/A2)^2)))

# calculo da vazao do fluido
Vz = A1 * v1


