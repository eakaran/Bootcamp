# Elizabeth Karan
# Bootcamp Exercise 1

# Exercise 1) Write a for loop statements so that it runs from 1:9 and prints the following output to your screen:
for (j in 1:10){
  cat("\n")
  if(j==10){
    cat("*")
  }
}

# Exercise 2) Modify your for loop so that it prints 10 asterisks, with each asterisk separated by exactly one ampersand sign (&), with no spaces or new line characters.
for (j in 1:9){
  cat("*&")
  if(j==9){
    cat("*")
  }
}

# Exercise 3) by hand, figure out the initial values of these variables and values at the the start and end of each iteration of the loop
dogs <- 10;
for (i in 1:5){
  dogs <- dogs + 1; 
}
# start = 11 
# end =15

###
meatloaf <- 0; 
for (i in 5:9){
  meatloaf <- meatloaf - i + 1;
  cat(meatloaf) 
}
# start = -4
# end = -30

###
bubbles <- 12;
for (i in -1:-4){
  bubbles <- i;
}
# start = -1
# end = -4

# Exercise 4) modify this code so that it will print out a message during presidential as well as congressional election years
###you can use the if statement with the modulus operator to conditionally perform operations
years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
  if((years[ii] %% 2 == 0) && (years[ii] %% 4 != 0)){
    cat(years[ii], 'Hooray, congressional elections!', sep = '\t', fill = T)
  }
  if((years[ii] %% 2 == 0) && (years[ii] %% 4 == 0)){
    cat(years[ii], 'Hooray, presidential elections!', sep = '\t', fill = T)
  }
  
}

# Exercise 5
bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);

# Now look at the error message the following lines of code produce. Can you think of a way to modify this loop so that the loop will compund the interest?

interestRate <- 0.0125;
compounded <- rep(c(), bankAccounts) #create an empty vector the same length as bankAccounts
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }

# HINT: variables must be initialized before you can perform operations on them
# HINT 2: look at the rep() function and see if you can use that to initialize a variable that will help you.
