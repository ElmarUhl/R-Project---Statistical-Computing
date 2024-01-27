# ajuste polinomial da funcao arc sin

x <- seq(0, 1, 0.01)
y <- asin(x)
y <- 180*y/pi
plot(x,y)

y2 <- x + (x^3)/6 + 3*(x^5)/40 + 5*(x^7)/112

y2 <- 180*y2/pi

lines(x,y2, col="red")

# f1 1/cos(x)=cos(x)^-1 = sec x
# f2 sin(x)^-2
# f3 -2 cos(x)^-3
# f4 -6 sin(x)^-4
# f5 24 cos(x)^-5
# f6 120 sin(x)^-6
# f7 -720 cos(x)^-7
# f8 -720*7 sin(x)^-8
# f9 720*7*8 cos(x)^-9

# f' 0 f'' 0 f''' 2

