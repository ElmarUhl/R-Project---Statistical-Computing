#Autor: Elmar de Oliveira Uhl - 2021
#Gera uma distribuição Chi2 a partir de n distribuições normal padrao

n = 10 #Numero de distribuiçoes normais padrao a serem geradas

n_normal = 1000 #Numero de valores em cada distribuição normal
x = rnorm(n_normal)
Z2 = x*x

for (i in 1:(n-1)) {
x = rnorm(n_normal)
Z2 = Z2 + x*x
}

hist(Z2)

# limpeza da memoria
rm('Z2')
rm('x')
