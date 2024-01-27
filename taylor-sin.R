# Autor: Elmar de Oliveira Uhl
# polinomio de Taylor do sin(x)
x <- seq(0, 2*pi, 0.01)
y <- sin(x)

plot(x,y)

y2 <- x - (x^3)/6 + (x^5)/120 #- (x^7)/5040 + (x^9)/362880 - (x^11)/39916800 + (x^13)/6227020800 - (x^15)/1307674368000 + (x^17)/355687428096000

lines(x,y2,col="red")


