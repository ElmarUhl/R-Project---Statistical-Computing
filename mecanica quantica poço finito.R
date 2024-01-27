# Grafico dos niveis de energia de uma particula na caixa
# Elmar de Oliveira Uhl - 2023

l <- 1
m <- 1
V0 <- 2
E <- 0.044
hbar <- 1

c1 <- sqrt((2*m*(V0 - E))/hbar^2)
c2 <- sqrt((2*m*E)/hbar^2)

A <- 1
C <- A
B <- c1/c2*C
G <- A*cos(c2*l)+B*sin(c2*l)*exp(c1*l)

x1 <- seq(-10, 0, 0.01)
psi1 <- C*exp(c1*x1)

x2 <- seq(0,10, 0.01)
psi2 <- A*cos(c2*x2) + B*sin(c2*x2)

x3 <- seq(10,20, 0.01)
psi3 <- G*exp(-c1*x3)

x <- c(x1,x2,x3)
y <- c(psi1,psi2,psi3)


plot(y~x,type='l',col="red")

