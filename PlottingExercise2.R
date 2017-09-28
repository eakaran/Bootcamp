# Elizabeth Karan
# Plotting exercise 2: data manipulation

# Question 1
# pvals come from code from class
# in file: "AnalyzeSNPdata.2017.student.R"
source("AnalyzeSNPdata.2017.student.R")

# calculate proportion of pvalues < 0.05
pvals05 <- subset(pvals, pvals < 0.05)
prop05 <- length(pvals05)/length(pvals); prop05
# calculate proportion of pvalues < 0.01
pvals01 <- subset(pvals, pvals < 0.01)
prop01 <- length(pvals01)/length(pvals); prop01
# check to see if the there are any pvalues less than 0.001
pvals001 <- subset(pvals, pvals < 0.001)
prop001 <- length(pvals001)/length(pvals); prop001

# How many SNPs were tested for departures from Hardy-Weinberg equilibrium?
num_pval <- length(pvals); num_pval

# Calculate the vector of expected P-values for the chi-square test
# the smallest P-values is expected to be 1/num_pval
# the second smallest P-value is expected to be 2/num_pval
# the largest P-value is expected to be num_pval/num_pval (or 1)
exp_pvals <- seq(1, num_pval, by=1)

for(pp in 1:num_pval){
  exp_pvals[pp] <- pp/num_pval
}

# The observed P-values in the “pvals” vector are in the order that they SNPs appear across the chromosome
# sort them smallest to largest
# Use the “sort” function to sort the P-values. Store them in the vector “sort_pvals”
sort_pvals <- sort(pvals)

# Find the –log10 of the observed and expected P-values.
# Store these in the vector “log_sort_pvals” and “log_exp_pvals”.
log_sort_pvals <- log10(sort_pvals)
log_exp_pvals <- log10(exp_pvals)

qqplot(log_sort_pvals,log_exp_pvals, plot.it = TRUE, xlab = deparse(substitute(log_sort_pvals)), ylab = deparse(substitute(log_exp_pvals)))

qqline(log_exp_pvals, col = "red", lty=2)

# Question 2
# Loadthefile“pheno.sim.2014.txt”.Store the phenotypes in a data frame called “zz”.
zz <- read.table('pheno.sim.2014-2.txt', header = TRUE)

# Find the value of the phenotype such that 25% of the individuals have a phenotype 
# LESS than this value.
# create a vector storing quantile cutoff values for ZZ
quantilesZZ <- quantile(zz[, 2], probs = seq(0, 1, 0.25), names = FALSE)
quantilesZZ[2]
# returns 4.768756

# Find the value of the phenotype such that 25% of the individuals have a phenotype 
# GREATER than this value (i.e. 75% of the individuals have a phenotype LESS than this value).
quantilesZZ[4]
# returns 7.354975

# Make a density plot of the distribution of phenotypes(i.e.the blood glucose levels). 
plot(density(zz[, 2]), main = "Glucose mmol/L", lwd = 2)
# Add vertical lines to the plot to denote the 25% and 75% tails of the distribution.
abline(v = quantile(zz[, 2], 0.25), lwd = 2, col = 2)
abline(v = quantile(zz[, 2], 0.75), lwd = 2, col = 4)
