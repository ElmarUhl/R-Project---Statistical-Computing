# Grafico dos niveis de energia de uma particula na caixa
# Elmar de Oliveira Uhl - 2023

n_min <- 1 	    # n do minimo de energia Obs: 0 não é um nivel permitido
n_max <- 5         # n do maior nivel de energia
#units <- "MKS"
units <- "other"
text_on <- TRUE
#text_on <- FALSE

# Calcula os niveis de energia
energy <- function(n, units) {

  # Ajusta o valor das constantes ao sistema de unidades escolhido
  if (units == "MKS") {		     	       # Valores das constantes no MKS
    npi <- pi
    hbar <- 1.05457182E-34
    m <- 9.109E-31			       # massa do eletron
    l <- 1 			  	       # largura da caixa
  } else { 			  	       # Outro sistema de unidades
    ncpi <- hbar <- m <- l <- 1
  }
  E <- (pi**2 * hbar**2)/(2 * m * l**2) * n**2 # Calcula a energia do nivel
  return(E)
}

if (text_on) {
  lNivel <- c(0,1)			       # largura do nivel de energia
} else {
  lNivel <- c(0,2)
}

# Ajusta o valor do rotulo da ordenada para o sistema de unidades escolhido
if (units == "MKS") {
  E_units <- "(MKS)"
} else {
  E_units <- "(Other)"
}
# Cria um grafico vazio para inicio do preenchimento dos valores
E_min <- energy(n_min, units) # valor minimo de energia
E_max <- energy(n_max, units) # valor maximo de energia
plot(1, type='n', main="Energy Levels of Particle in Box", xaxt='n', xlab='', ylab=paste("Energy ",E_units), xlim=c(0,2), ylim=c(E_min,E_max))

# Desenha os niveis de energia no grafico
for (n in n_min:n_max) {
  E <- rep(energy(n,units),2)
  lines(E~lNivel, col='red', lwd=2)
  if (text_on)
    text(1, E, paste("n = ",n, " E = ", signif(E,digits=3)),pos=4,offset=0.5)
}
