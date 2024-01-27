# Estatistica de inferencia
# Elmar de Oliveira Uhl

n = 10000
x = rnorm(n) # Distribuição normal com 1000 valores

# populacao
me = sum(x)/length(x) # Média dos valores
variance = sum(x**2)/length(x) - (sum(x)/length(x))**2 
print("Populacao -----------------------------")
print(me)
print(variance)

# amostra
i1 = sample(1:n, 10, replace=F)
x1 = x[i1]
me1 = sum(x1)/length(x1)
variance1 = sum(x1**2)/length(x1) - (sum(x1)/length(x1))**2
variance2 = sum((x1 - me1)**2)/(length(x1) - 1)

i2 = sample(1:n, 10, replace=F)
x2 = x[i2]
me2 = sum(x2)/length(x2)
variance3 = sum((x2 - me2)**2)/(length(x2) - 1)

print("Amostra -----------------------")
print(me1)
print(variance1)
print(variance2)

print(me2)
print(variance3)

#print(mean(x))
#print(var(x))

#plot(1:length(i), x[i])

#hist(x)
