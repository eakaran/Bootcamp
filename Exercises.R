# Elizabeth Karan
# Pre-bootcamp exercises

# 9.1.0.0.1 Exercise 
5%%2
# this is the modulus function that returns a remainder of a division operation
5%/%2
# this is integer division returns the whole integer resulting from a division operation

# 9.1.1.0.1
x <- c(1, 2, 3)
y <- c(1, 2, 3, 4, 5)
x + y
# when the length of the longer vector is not a multiple of the shorter it returns a warning message

# 9.1.2.0.1
v<- seq(1, 13, 4)
v
k <- seq(1, 5, 0.2)
k

# 9.1.2.0.2
seq(10,1)
3:1
# making the "to" less than the "from" displays the sequence in descending order
# 3:1 displays 3 2 1

# 9.1.3.0.1
z <- c(1, 3, 5, 7, 9, 11)
v <- z[seq(1, 5, 2)]
# vector v contains 1 5 9 because it extracts every two values going from positions 1 to 5 from vector z

# 9.1.3.0.2
w <- c(z[2], z[1], z[3]); w

# 9.1.3.0.3
z[9] <- 11
# setting a value for and element that doesn't exist adds the element at the specified index with NA values in between

# 9.1.3.0.4
x <- 1:10
y <- (x-1)/(x+1)
plot(y~x)
lines(x, y)
