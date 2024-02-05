# Wavefunction of a particle in a 2d box
# Elmar Uhl - 2024

pi = 3.14

# Quantum number nx and ny
nx = 2
ny = 1

a = 1 # Length of box in x
b = 1 # length of box in y

# Wavefunction in a 2d box
psi <- function(x,y) {
    A = 2/sqrt(Lx*Ly)
    A*sin(nx*pi*x/Lx)*sin(ny*pi*y/Ly)
}

x <- seq(0.0,1.0,length=50)
y <- x
z <- outer(x, y, psi)

persp(x,y,z,col="light blue",theta=20,phi=35,shade=0.1,main="Wavefunction of particle in a 2d box",sub=paste("nx = ", nx, ", ny = ", ny))
