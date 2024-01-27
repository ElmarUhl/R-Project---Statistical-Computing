# Autor: Elmar de Oliveira Uhl
# Dados de temperatura máxima e mínima, precipitação acumulada, umidade relativa, evaporação

# Le os dados do arquivo
table <- read.csv("V15(3)-051.csv")

x = table[,1]
y = table[,2]

y2 = 25.4*y

svg('precipitacao-media.svg')

#plot(Tmax~x,type='l')
plot(y2~x,type='l',ylim=c(30,150), col='red',xlab="meses",ylab='Precipitação média (mm)')
axis(1,seq(1,12,1))

dev.off()

#lines(Tmin~x, type='o', col='red')


