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
