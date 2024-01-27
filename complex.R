# Operacoes com numeros complexos
# Elmar de Oliveira Uhl - 2023

# Entrada dos dois numeros complexos
z1 = 2 + 3i
print(paste("z1 = ", z1))
z2 = 3 + 5i
print(paste("z2 = ", z2))

# Operacoes com numeros complexos
# Real do numero complexo
z = Re(z1)
print(paste("Real is z = ", z))
# Imaginario do numero complexo
z = Im(z1)
print(paste("Imaginary is z = ", z))
# Modulo do numero complexo
r = Mod(z1)
print(paste("Modulus is r = ", r))
# Argumento do numero complexo
theta = Arg(z1)
print(paste("Argument is theta = ", theta))
# Conjugado do numero complexo
z = Conj(z1)
print(paste("Conjugado is z = ", z))

# Soma 2 numeros complexos
z = z1 + z2
print(paste("Sum is z = ", z))
# Subtrai 2 numeros complexos
z = z1 - z2
print(paste("Subtraction is z = ", z))
# Multiplica
z = z1 * z2
print(paste("Multiplication is z = ", z))
# Divide
z = z1 / z2
print(paste("Division is z = ", z))
# Raizes n
n = 10
k = 0:(n - 1)
z = exp(1i*2*pi*k/n)
cat(" ")
cat(paste("The ", n, " roots is z = ", z, "\n"))
plot(z,asp=1)

# calcula as raizes do numero complexo????????????????????
n = 2
k = 0:n-1
z = Mod(z1)*exp(1i*Arg(z1)/(2*pi*k*n))
plot(z, asp=1)
