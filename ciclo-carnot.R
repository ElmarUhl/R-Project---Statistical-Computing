# Grafico do ciclo de carnot

# Constante dos gases ideais
R = 8.3

clayperon <- function(T,V) {
P = n*R*T/V
return (P)
}

# temperaturas isotermas oC
T1 = 0.0
T2 = 35.0
# mols de gas
n = 1.0
# Intervalo de volume
V1 = 0.14
V2 = 0.25
# Graus de liberdade do gas
f = 3

T1 = T1 + 273
T2 = T2 + 273
V = seq(V1,V2, 0.01)

# Calculo das isotermas
P1 = clayperon(T1,V)
P2 = clayperon(T2,V)

# Calculo das adiabaticas
Va = 0.16
Vb = 0.20
gamma = (f + 2)/f
k = clayperon(T2,Va)*Va**(gamma)
P3 = k/V**(gamma)
k = clayperon(T2,Vb)*Vb**(gamma)
P4 = k/V**(gamma)

#svg('ciclo-carnot.svg')

plot(P1~V,type='l',col='red')
lines(P2~V,col='red')
lines(P3~V,col='blue')
lines(P4~V,col='blue')

#dev.off()
