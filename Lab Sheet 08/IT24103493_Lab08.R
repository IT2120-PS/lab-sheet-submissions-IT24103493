setwd("C:\\Users\\user\\Desktop\\IT24103493PsLab08")

# 1. Calculate the population mean and population standard deviation of the laptop
# bag weights.
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)
popmn <- mean(Weight.kg.)
popsd <- sd(Weight.kg.)

#2. Draw 25 random samples of size 6 (with replacement) and calculate the sample
# mean and sample standard deviation for each sample.
#First null vector to store sample data sets.
samples <- c()
n <- c()
for(i in 1:25){
  s <- sample(Weight.kg., 6, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('S', i))
}
#Assign column names for each sample created
colnames(samples) = n

s.means <- apply(samples, 2, mean)
s.stds <- apply(samples, 2, sd)

# 3. Calculate the mean and standard deviation of the 25 sample means and state the
# relationship of them with true mean and true standard deviation.

samplemean <- mean(s.means)
samplestd <- sd(s.means)

popmn
samplemean

#compare the population std and std of sample means.
truesd = popsd/6
samplestd
