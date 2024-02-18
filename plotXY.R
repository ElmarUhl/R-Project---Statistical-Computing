# Creates a random points to train a perceptron
# Elmar Uhl - 2024

N <- 500 # number of points

x_random <- runif(N)
y_random <- runif(N)

plot(x_random,y_random)

# Defines a function to divide points in two regions
line <- function(x) {
    return(x * 1.2 + 0.3)
}

# Inputs to plot a function
x_line <- seq(min(x_random), max(x_random), length=100)
y_line <- line(x_line)
lines(x_line, y_line, col="red")

# Do selection of above the line
select_points <-c()
for (i in 1:N) {
    if (line(x_random[i]) < y_random[i]) {
        select_points <- c(select_points,1)
    }
    else {
        select_points <- c(select_points,0)
    }
}

# Plots in red the selected points
for (i in 1:N) {
    if (select_points[i]) points(x_random[i],y_random[i], col="red")
}

perceptron <- function(n,learningRate=0.0001) {
    weigths <- c()
    bias <- 1
    for (i in 1:n) {
        weigths <- c(weigths, runif(1,min=-1,max=1))
    }
    return(weigths)
}

weigths <- perceptron(10)
print(weigths)

inp <- rep(1,10)
activate <- function(inputs) {
    temp <- inputs*weigths
    temp2 <- sum(temp)
    
    print(temp2)
    
    if (temp2 > 0) {
        return(1)
    }
    else {
        return(0)
    }
}

active <- activate(inp)
print(active)

treino <- function(inputs, desired) {
    guess <- activate(inputs)
    error <- desired - inputs
}