# Elizabeth Karan
# Plotting exercise 2: data manipulation

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
exp_pvals <- seq(1, num_pval)


