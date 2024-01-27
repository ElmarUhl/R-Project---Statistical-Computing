# Autor: Elmar de Oliveira Uhl - 2020
# Efetua rotacoes de um ponto por multiplicacao matricial

angleDegree = 1 # Angulo de rotacao
angleRadian = angleDegree*pi/180 # converte para radianos

# Coordenada do ponto
x = 1
y = 0

n = 360 # numero de interacoes
for (i in 1:n) {
a = cos(i*angleRadian)
b = sin(i*angleRadian)

R = matrix(c(a,b,b,-a),nrow=2, ncol=2) # matriz de rotacao
X = matrix(c(x,y),nrow=2, ncol=1) # matriz de coordenada

plot(X[1],X[2],xlim=c(-2,2),ylim=c(-2,2))
arrows(0,0,x,y)

X = R %*% X # multiplicacao matricial
points(X[1],X[2])
arrows(0,0,X[1],X[2], col="red")

Sys.sleep(0.1)
}


