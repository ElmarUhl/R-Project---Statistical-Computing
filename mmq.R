# Autor: Elmar de Oliveira Uhl
# Faz o ajuste linear de um conjunto de dados lidos de um arquivo texto
table <- read.table("dados-simulados.dat", sep=" ")
x = table[,1]
y = table[,2]

# Gera o valores com desvios
#n <- 1001
#a <- rnorm(n,mean=0, sd=0.5)
#x <- seq(0,10,0.01)
#y <- x
#y <- y + a
# Escreve os dados gerados no disco
#l = matrix(c(x,y),ncol=2)
#write.table(l,"dados-simulados.txt",row.names=F,col.names=F)


# Regressão linear
model <- lm(y~x)

plot(model)

plot(y~x)
abline(model, col="red",lwd=2)
data <- summary(model) # Dados da regressao
# Coeficientes da regressao
#int =  model$coefficient["(Intercept)"]
#slope = model$coefficient["x"]

#y2 = slope*x + int # reta ajustada
#lines(y2~x,col="red")

