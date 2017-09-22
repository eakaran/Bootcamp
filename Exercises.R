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
n <- 0:10
r <- 0.5
G <- r^n
sum(G)
1/(1-r)
# the sum of the series where n = 10 is 1.9990234, a little less than 2. this is less than the limit 1/(1-r)
n <- 0:50
r <- 0.5
G <- r^n
sum(G)
# the sum of the series wherew n = 50 is rounded up to 2 and this is equal to the limit 1/(1-r)

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

odds <- seq(1, 20, 2); odds

# 9.2.1.0.1
v <- rep(c(1, 2), c(4, 4))
X <- matrix(v, nrow = 2, ncol = 4, byrow = TRUE); X

# 9.2.1.0.2
random_numbers <- rnorm(35, mean = 1, sd = 2)
random_matrix <- matrix(random_numbers, nrow = 5, ncol = 7); random_matrix

# 9.2.2.0.3
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

# 9.6.0.0.1
data.url <- "http://kingaa.github.io/R_Tutorial/hurricanes.csv"
hurricane.dat <- read.csv(data.url, comment.char = '#'); hurricane.dat
str(hurricane.dat)
# there are 14 variables in this data frame

# Section 11
setwd("~/Desktop/Bootcamp")
course.url <- "http://kingaa.github.io/R_Tutorial/"
download.file(paste0(course.url,"Intro1.R"),destfile="Intro1.R",mode="w")
source("Intro1.R")

download.file(paste0(course.url,"Intro2.R"),destfile="Intro2.R",mode="w")
download.file(paste0(course.url,"ChlorellaGrowth.csv"),destfile="ChlorellaGrowth.csv",mode="w")
X <- read.csv("ChlorellaGrowth.csv",comment.char='#')
Light <- X[,1]
rmax <- X[,2]

# 11.0.0.0.1
source("Intro2edit.R")

# 11.0.0.0.2
source("Intro2.R")
plot(fit)
?plot.lm

# 11.0.0.0.3
plot(Light, rmax, xlim = c(0, 120), ylim = c(1, 4))

# 11.0.0.0.4
source("Intro2edit2.R")

# 11.0.0.0.5
x <- 3:8
y <- c(5*x + 3)

colors <- c("red", "green", "blue", "purple")
par(x, mfcol=c(2,2),col="red", lty=1)
plot(y~x)
fit <- lm(y~x)
abline(fit)
par(x, col="blue", lty=2)
plot(y~x)
fit <- lm(y~x)
abline(fit)
par(x, col="green", lty=3)
plot(y~x)
fit <- lm(y~x)
abline(fit)
par(x, col="purple", lty=4)
plot(y~x)
fit <- lm(y~x)
abline(fit)

# 11.0.0.0.6
dev.print(file = "graphs.png", device=png, width = 600)

# Section 12.1
phi <- 1
for (k in 1:100) {
  phi <- 1+1/phi
  print(c(k,phi))
}

a <- 1.1
b <- 0.001
T <- seq(from=1,to=200,by=1)
N <- numeric(length(T))
n <- 2
for (t in T) {
  n <- a*n/(1+b*n)
  N[t] <- n
}
plot(T, N)

# 12.1.0.0.1
N <- numeric(length(T))
for (t in 1:length(T)) {
  n <- a*n/(1+b*n)
  N[t] <- n
}

# 12.1.0.0.2
T <- 1
T <- 0
# when T=1, N=100
# if T=0 the same thing happens

# Section 12.2
phi <- 20
k <- 1
while (k <= 100) {
  phi <- 1+1/phi
  print(c(k,phi))
  k <- k+1
}

# 12.2.0.0.1
count <- 0
phi <- 20
conv <- FALSE
while (!conv) {
  phi.new <- 1+1/phi
  conv <- phi==phi.new
  phi <- phi.new
  count<- count +1
}
# it takes 40 iterations

phi <- 20
while (TRUE) {
  phi.new <- 1+1/phi
  if (phi==phi.new) break
  phi <- phi.new
}

phi <- 3
for (k in seq_len(1000)) {
  phi.new <- 1+1/phi
  if (phi==phi.new) break
  phi <- phi.new
}

# 12.2.0.0.2
a <- 1.1
b <- 0.001
t <- 1
N <- numeric(length(T))
n <- 2
while (t <= 200) {
  n <- a*n/(1+b*n)
  N[t] <- n
  t <- t+1
}

# 12.3
phi <- 12
repeat {
  phi.new <- 1/(1+phi)
  if (phi==phi.new) break
  phi <- phi.new
}