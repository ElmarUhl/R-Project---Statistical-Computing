# Wavefunction of a particle in a 2d box
# Elmar Uhl - 2024

pi = 3.14

# Quantum number nx and ny
nx = 1
ny = 1
nz = 1

a = 1 # Length of box in x
b = 1 # length of box in y
c = 1 # length of box in z

# Wavefunction in a 3d box
psi <- function(x,y,z) {
    A = 2*sqrt(2)/sqrt(Lx*Ly*Lz)
    A*sin(nx*pi*x/Lx)*sin(ny*pi*y/Ly)*sin(nz*pi*z/Lz)
}

x <- y <- z <- seq(0.0,1.0,length=50)
#z <- outer(x, y, psi)

#persp(x,y,z,col="light blue",theta=20,phi=35,shade=0.1,main="Wavefunction of particle in a 2d box",sub=paste("nx = ", nx, ", ny = ", ny))
