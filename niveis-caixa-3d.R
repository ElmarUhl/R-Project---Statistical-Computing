# Makes a plot for Energy levels for a particle in a 3d box
# Elmar Uhl - 2024
 
# valor do xlim em plot deve ser melhorado porque não faz o ajuste automaticamente

# Constants
hbar <- 1
m <- 1
pi <- 1

hbar <- 1.05457182E-34 # J x s
m <- 9.109E-31 # kg

text_OnOff <- 1 # turn on/off nx, ny and nz quantum number text labels levels

# Value of sum from quantum numbers nx, ny and nz
n <- 6

a <- 1e-10 # length of box in x
b <- 1e-10 # width of box in y
c <- 1e-10 # height of box in z

# Function to calculate energy from nx, ny, nz values
energy <- function(nx,ny,nz) {
    A = (hbar**2*pi**2)/(2*m)
    y = A*(nx**2/a**2 + ny**2/b**2 + nz**2/c**2)
    return(y)
}

nx <- ny <- nz <- seq(1,n-2) # Vector with values that quantum numbers can be assignment
soma <- c() # Storage nx + ny + nz values

nx2 <- ny2 <- nz2 <- c() # Will storage permitted values of nx + ny + nz = n
for (i in nx) {
  for (ii in ny) {
    for (iii in nz) {
      s = i + ii + iii
      if (s <= n) { # Verify if nx + ny + nz <= n and storage nx2, ny2, nz2 in afirmative case
        nx2 <- c(nx2,i)
        ny2 <- c(ny2,ii)
        nz2 <- c(nz2,iii)
        soma <- c(soma, s)
      }
    }
  }
}

values_length <- length(soma)
print(paste("Length of sequence: ", values_length))
value_max <- max(soma)
print(paste("Maximum value of sum sequence (nx + ny + nz): ", value_max))
value_min <- min(soma)
print(paste("Minimum value of sum sequence (nx + ny + nz): ", value_min))

nx3 <- ny3 <- nz3 <- c() # Storage ascending order
soma3 <- c() # Storage sum values in ascending order

for (i in seq(value_min, value_max)) {
  for(ii in seq(1,values_length)){
    if (soma[ii] == i) {
      nx3 <- c(nx3, nx2[ii])
      ny3 <- c(ny3, ny2[ii])
      nz3 <- c(nz3, nz2[ii])
      soma3 <- c(soma3, soma[ii])
    }
  }
}

energia <- c() # Storage energy values
for (i in seq(1, values_length) ){
  energia <- c(energia, energy(nx3[i],ny3[i],nz3[i]))
}

cat("Values of nx: ")
print(nx3)
cat("Values of ny: ")
print(ny3)
cat("Values of nz: ")
print(nz3)
cat("Values of nx + ny + nz")
print(soma3)
cat("Values of energy: ")
print(energia)
cat("Minimum value of energy: ")
print(min(energia))
cat("Maximum value of energy: ")
print(max(energia))
cat("Sum of all energy levels:")
print(sum(energia))

# Empty plot to receive values of energy levels
plot(1,type='n',main="Energy Levels for a Particle in a Box",xaxt='n', xlab='', xlim=c(0,35),ylim=c(0,max(energia)),ylab="Energy")

for (i in seq(value_min,value_max)) {
  x <- c(1,3)
  for (ii in seq(1, values_length)) {
    if (soma3[ii] == i) {
      y <- rep(energia[ii], 2)
      lines(x,y, col="red", lwd=2)
      if (text_OnOff)
        text(x[1],y[1],paste('(',nx3[ii],',',ny3[ii], ',', nz3[ii], ')'),adj=c(0,-0.5),cex=1)
      x <- x + 3
    }
  }
}

