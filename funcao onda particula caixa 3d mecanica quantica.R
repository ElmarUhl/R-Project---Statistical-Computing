# Isosurfaces of a particle in a 3d box
# Elmar Uhl - 2024

library(misc3d) # library to create isosurface

pi = 3.14

# Quantum number nx, ny and nz
nx = 1
ny = 1
nz = 1

a = 1 # Length of box in x
b = 1 # length of box in y
c = 1 # length of box in z

# Wavefunction in a 3d box
psi <- function(x,y,z) {
    A = 2*sqrt(2)/sqrt(a*b*c)
    y = A*sin(nx*pi*x/a)*sin(ny*pi*y/b)*sin(nz*pi*z/c)
    abs(y) # Foi inserido para a visualização de isosurfaces 
}

# Gera os valores de entrada em x, y, z
x <- y <- z <- seq(0.0,1.0,length=100)

# Gera a isosurface
contour3d(psi,0.5, x, y, z, color='red')
