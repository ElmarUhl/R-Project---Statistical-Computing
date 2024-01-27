# fases RST com frequencia de 60Hz

t = seq(0, 0.1, 0.0001)

f = 60

V0 = 127
R = V0*sin(2*pi*f*t)
S = V0*sin(2*pi*f*t+2*pi/3)
T = V0*sin(2*pi*f*t+4*pi/3)

#180 - pi
#120 - x
#x = 2/3 pi


plot((R-S)~t,type='l')
#lines((R-T)~t,col='gray')
#lines((T-S)~t,col='gray')

lines(R~t,col='red')
lines(S~t,col='green')
lines(T~t,col='blue')


