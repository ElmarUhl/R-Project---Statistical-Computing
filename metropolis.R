# Autor: Elmar de Oliveira Uhl
# Recozimento simulado

# Gera os pontos
#n = 30
#x = runif(n)
#y = runif(n)
# Escreve os dados gerados no disco
#l = matrix(c(x,y),ncol=2)
#write.table(l,"dados-simulated-annealing-2.dat",row.names=F,col.names=F)

# Le os dados do arquivo
table <- read.table("dados-simulated-annealing-2.dat", sep=" ")
x = table[,1]
y = table[,2]

# Temperatura de recozimento
T = 1
distance = c()
n = length(x)

order = c(1:n) # ordenamento inicial

for (i in 1:50000) {
   plot(y~x)
   lines(y[order]~x[order],col="red")
   
   xnew = x[order]
   ynew = y[order]
   d = sqrt(sum((xnew - c(xnew[2:n],0))^2 + (ynew - c(ynew[2:n],0))^2))

   ordernew = sample(1:n,n) 

   xnew = x[ordernew]
   ynew = y[ordernew]
   dnew = sqrt(sum((xnew - c(xnew[2:n],0))^2 + (ynew - c(ynew[2:n],0))^2))

   if (dnew < d) {
     order = ordernew
   }
   else {
      if (exp(-(dnew-d)/T) > runif(1)) {
         order = ordernew
         T = 0.6*T
      }
   }

   print(c("interaction", i, d))
   distance = c(distance, d)
#   Sys.sleep(0.1)
}

l = length(distance)
interaction = 1:l
plot(distance~interaction)
