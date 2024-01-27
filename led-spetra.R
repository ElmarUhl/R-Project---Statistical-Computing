# grafco de distribuição de espectro de leds

#plot("n",asp=1)

n <- seq(-150, 150, 0.1)

gaussian <- function(sigma)
{
  y = 1.2*exp(-n^2/sigma)
}

# red
x1 = n + 625
y1 = gaussian(400)

# orange
x3 = n + 605
y3 = gaussian(400)

# yellow
x4 = n + 590
y4 = gaussian(400)

# yellow green
x5 = n + 570
y5 = gaussian(400)

# green
x6 = n + 525
y6 = gaussian(400)

# blue
x2 = n + 470
y2 = gaussian(400)

# UV
x7 = n + 380
y7 = gaussian(400)
x8 = n + 400
y8 = gaussian(400)
x9 = n + 410
y9 = gaussian(400)

# IR
x10 = n + 730
y10 = gaussian(400)
x11 = n + 760
y11 = gaussian(400)
x12 = n + 810
y12 = gaussian(400)
x13 = n + 850
y13 = gaussian(400)
x14 = n + 940
y14 = gaussian(400)
x15 = n + 1000
y15 = gaussian(400)

plot(y2 ~ x2,col='blue',xlim=c(300,1100),type="l")
lines(y1~x1,col='red')
lines(y3~x3,col='orange')
lines(y4~x4,col='yellow')
lines(y5~x5,col='lightgreen')
lines(y6~x6,col='green')
lines(y7~x7,col='purple')
lines(y8~x8,col='purple')
lines(y9~x9,col='purple')
lines(y10~x10,col='darkred')
lines(y11~x11,col='darkred')
lines(y12~x12,col='darkred')
lines(y13~x13,col='darkred')
lines(y14~x14,col='darkred')
lines(y15~x15,col='darkred')


