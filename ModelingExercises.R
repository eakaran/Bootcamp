# Elizabeth Karan
# Modeling exercises

# Write a function that runs the Ricker model, plots the result, and returns the time series as 
# an output. 
# At minimum, your function should take all parameter values and initial conditions as input 
# arguments.
ricker_model <- function(RR, K, N0, ttMax){
  NN<- matrix(NA, nrow = 1, ncol = ttMax+1)
  NN[1] <- N0
  for (tt in 1:ttMax){
    NN[tt + 1] <- NN[tt] * exp(RR*(1-(NN[tt]/K)))
    tt<- tt +1
  }
  plot(1:(ttMax+1), NN, main = RR, xlab = "time (years)", ylab = "Population size", col = 'blue')
  return(NN)
}

# Explore the dynamics of the model. Try to find combinations of parameter values that yield 
# the following patterns:

# Population decreases to n = 0.
ricker_model(-1.05, 1000, 100, 20)
# Population approaches stable equilibrium at n∗ = K, without oscillations.
ricker_model(1.05, 1000, 100, 20)
# Decaying oscillations around n∗ = K.
ricker_model(1.75, 1000, 100, 20)
# Persistent, regular oscillations.
ricker_model(2.5, 1000, 100, 20)
# Crazy, random-looking fluctuations (chaos).
ricker_model(3.5, 1000, 100, 20)
# r is the key driver of these patterns

# Choose six interesting values of this parameter. 
# Write a script that makes an array of six plots showing the model dynamics for each of these values
par(mfrow = c(2, 3))
ricker_model(-1.05, 1000, 100, 20)
ricker_model(1.05, 1000, 100, 20)
ricker_model(1.75, 1000, 100, 20)
ricker_model(2.5, 1000, 100, 20)
ricker_model(3.5, 1000, 100, 20)
ricker_model(-2, 1000, 100, 20)

# Imagine n0 = 20 and K = 1000 for a certain population of deer that is growing according to the Ricker model.
# you want to know tK/2, the first year that nt ≥ K/2
# your output time series is called nVec
# determine the index of the first element of nVec that is ≥ K/2
nVec <- ricker_model(1.05, 1000, 20, 100)
index_first <- min(which(nVec >= 500)); index_first

# Write a script that runs the necessary simulations and collects the necessary data to plot how 
# tK/2 depends on r, for the range of r from 0.1 to 0.9.
r_values <- seq(0.1, 0.9, by = .1)
halfK <- seq(1, length(r_values))
for(rr in 1:length(r_values)){
  tempT <- ricker_model(r_values[rr], 1000, 20, 100)
  halfK[rr] <- min(which(tempT >= 500))
}

plot(r_values, halfK, xlab = "r value", ylab = "First year that n >= K/2")

# Write pseudo-code to do a joint sensitivity analysis for two parameters.
# choose a vector of values you’d like to consider for both r and K
# choose a simple output from your model (e.g. population size at t = 10)
# un the model for all possible combinaioins of these values and 
# collect the results in a matrix with appropriate dimensions
# Plot the results in some way

# Pseudo-code:
# set conistent values for variables not being tested: N0 and t
# initialize vector matching number of tested values
# initialize null vector to be filled with test results; in length to previous vector
# outer for loop iterates through r values
# inner for loop iterates through all K values against the r value (that way each pair of r and k is ivestigated)
# inside the inner for loop, run the model with both K and r at specific pair of values
# store result of function in the second vector

# set conistent values for variables not being tested: N0 and t
N0 <- 100
t <- 10
# initialize vector matching number of tested values
rVec <- seq(-0.5, 0.5, by=0.1)
kVec <- seq(100, 1000, by=100)
# initialize null vector to be filled with test results; in length to previous vector
nnVec <- matrix(NA, length(rVec), length(kVec))
# outer for loop iterates through r values
for(ff in 1:length(rVec)){
  # inner for loop iterates through all K values against the r value (that way each pair of r and k is ivestigated)
  for(gg in 1:length(kVec)){
    # inside the inner for loop, run the model with both K and r at specific pair of values
    output <- ricker_model(rVec[ff], kVec[gg], N0, t)
    nnVec[ff, gg] <- output[5]
  }
}
nnVec
contour(nnVec)
image(nnVec)
  
