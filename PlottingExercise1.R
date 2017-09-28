# Elizabeth Karan
# Plotting Exercise 1

# 1
get_heights <- function(sample_size){
  heights <- rnorm(sample_size, mean = 69, sd = 10)
  return(heights)
}
heights<- get_heights(1000)

# 2
get_heights <- function(sample_size){
  heights <- rnorm(sample_size, mean = 69, sd = 10)
  avg.height <- mean(heights)
  return(heights)
}

#3
get_heights <- function(sample_size){
  heights <- rnorm(sample_size, mean = 69, sd = 10)
  avg.height <- mean(heights)
  return(avg.height)
}
avg.height<- get_heights(1000)

#4
get_heights <- function(sample_size){
  heights <- rnorm(sample_size, mean = 69, sd = 10)
  avg.height <- mean(heights)
  return(avg.height)
}

mean_heights_100 <- c()
for(j in 1:1000){
  mean_heights_100[j] <- get_heights(100)
}

#5
mean_heights_1000 <- c()
for(k in 1:1000){
  mean_heights_1000[k] <- get_heights(1000)
}

# 6
bins<-seq(65,75,by=0.5)
hist100 <- hist(mean_heights_100,breaks=bins)$counts
hist1000<- hist(mean_heights_1000,breaks=bins)$counts
#counts_100<-hist(mean_heights_100,breaks=bins)$counts
#counts_1000<-hist(mean_heights_1000,breaks=bins)$counts

pdf(file="heights_barplot.pdf", width=6,height=6)
par(mfrow=c(1,1), mar=c(4, 4, 3, 2)) 

# bars go between the bins
bin.names <- bins[-21]
bin.names

bind.plots <- rbind(hist100,hist1000)

barplot(bind.plots,col=c(2,4),beside=T,names.arg= bin.names,xlab="Avgerage Height (inches)", ylab="Count")

legend(x=0,y=400,c("n=100", "n=1000"),col=c(2,4),pch = 19)

dev.off()
