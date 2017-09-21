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

# 9.1.3.0.6
n <- 1:10
r <- 0.5
G <- r^n
sum(G)
1/(1-r)
# the sum of the series where n = 10 is 0.9990234, a little less than 1. this is less than the limit 1/(1-r)
n <- 1:50
r <- 0.5
G <- r^n
sum(G)
# the sum of the series wherew n = 50 is rounded up to 1 and this is still less than the limit 1/(1-r)

# 9.1.5.0.1
lowLight <- Light[Light < 50]
Light <- Light[Light < 50]
# the second example is incorrect because you are rededfining the value of the vector and checking
# a logical operator from that vector at the same time

# 9.1.5.0.2
random <- runif(20)
random_mean <- mean(random)
random_less <- random[random < random_mean]

# 9.1.5.0.3
test_vector <- random < random_mean
indices <- which(test_vector == TRUE); indices

# 9.1.5.0.4
arbitrary <- 1:20
arbitrary[(arbitrary%%2 == 0) == FALSE]

arbitrary[(arbitrary%%2 != 0)]

# 9.2.1.0.1
v <- rep(c(1, 2), c(4, 4))
X <- matrix(v, nrow = 2, ncol = 4, byrow = TRUE); X

# 9.2.1.0.2
random_numbers <- rnorm(35, mean = 1, sd = 2)
random_matrix <- matrix(random_numbers, nrow = 5, ncol = 7); random_matrix

# 9.2.2.0.1
C <- cbind(1:3, 4:6, 5:7); C
D <- rbind(1:3, 4:6); D
rbind(C, D)
cbind(C, C)
# cbind(C, D) does not work because C and D have a different number of rows, so the length of collumns differ

# 9.3.0.0.1
x <- seq(1, 27)
dim(x) <- c(3, 9)
is.array(x)
is.matrix(x)
# setting a dimension attribute on a vector turns it into a matrix and an array

