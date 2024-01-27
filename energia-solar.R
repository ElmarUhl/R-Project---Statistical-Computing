# Inserindo valores de consumos mensais kWh
meses <- c("Fev22","Jan22","Dez21","Nov21", "Out21", "Set21", "Ago21", "Jul21", "Jun21", "Mai21", "Abr21", "Mar21", "Fev21")
kWh <- c(340,500,250,320,380,370,350,360,340,350,420,350)

# Calculando a media de consumo mensal
result.mean <- mean(kWh)
print(paste("Média mesal: ",result.mean, "kWh"))
# Calculando a media diaria
result.day <- result.mean/30
print(paste("Média diária: ", result.day,"kWh/dia"))
# Irradiacao da maior media anual (-22.825848S,-43.293260) http://www.cresesb.cepel.br/index.php?section=sundata
inclinacao <- 20
irradiacao <- 4.93
print(paste("Inclinação: ", inclinacao, " Irradiação: ", irradiacao))
# Calculo kWp
result.kWp <- result.day/irradiacao
print(paste("kWp: ", result.kWp))
# Calculo do kWp com perda de 25%
result.kWp <- result.kWp/0.75
print(paste("kWp necessárior considerando perdas de 25%: ", result.kWp))
# no. de placas
print(paste("Placas 400W: ", result.kWp/0.4))
print(paste("Placas 590W: ", result.kWp/0.59))





