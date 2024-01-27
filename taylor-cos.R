# Autor: Elmar de Oliveira Uhl
# polinomio de Taylor do cos(x)

x <- seq(0,2*pi,0.01)

y <- cos(x)

plot(x,y)

y2 <- 1 - (x^2)/2 + (x^4)/24 #- (x^6)/720 + (x^8)/40320 - (x^10)/3628800 + (x^12)/479001600 - (x^14)/87178291200 + (x^16)/20922789888000

lines(x,y2, col="red")

