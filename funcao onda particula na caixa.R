# Graficos de funçao de onda e densidade de probabilidade de partículas na caixa
# Elmar de Oliveira Uhl - 2023

n <- 100 # n do estado Obs: n = 0 não é um estado permitido
l <- 1 # largura da caixa

x <- seq(0,l,0.01) # valores da abscissa

# Calcula a função de onda
psi <- function(x){
  y <- sqrt(2/l)*sin(n*pi*x/l)
  return(y)
}
# Calcula a densidade de probabilidade
probability <- function(x) {
  y <- (psi(x))**2
  return(y)
}

plot(1, type='n', xlim=c(0,1), ylim=c(-2,2),xlab="x",ylab="psi") # Cria o grafico vazio
abline(h=0,col="gray", lty=2)                                    # Desenha uma linha horizontal de referencia na origem
lines(psi(x)~x, col="red",lwd=2)                                 # Desenha a função de onda
lines(probability(x)~x, col="blue", lwd=2)                       # Desenha a densidade de probabilidade
text(0, 2, paste("Estado n = ", n),pos=4)
legend(0,-1.5,legend=c("Wave function","Density of probability"), col=c("red","blue"), lty=c(1,1), lwd=c(1,1))

