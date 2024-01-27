# Programa perceptron in R
threshold <- 1.5
inputs <- c(1, 0, 1, 0, 1)
weights <- c(0.7, 0.6, 0.5, 0.3, 0.4)

soma <- 0.0;
for (i in 1:length(inputs)) {
 soma <- soma + inputs[i] * weights[i]
}

activate = (soma > 1.5)
print(activate)
