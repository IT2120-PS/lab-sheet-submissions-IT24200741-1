setwd("D:\\SLIIT\\Y2 S1\\PS\\IT24200741")

data <- read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
attach(data)

# Question 01

p_mean <- mean(Weight.kg.)
p_sd   <- sd(Weight.kg.)

print("Population Mean:")
print(p_mean)

print("Population SD:")
print(p_sd)

# Question 02

samples<- c()
n <- c()

for (i in 1:25) {
  s <- sample(Weight.kg.,6, replace = TRUE)
  samples <- cbind(samples,s)
  n <- c(n,paste('S',i))
}

colnames(samples) = n

s.means <- apply(samples,2,mean)
s.sd <- apply(samples,2,sd)

print(s.means)
print(s.sd)

# Question 03

mean_of_means <- mean(s.means)
sd_of_means   <- sd(s.means)

print("Mean of Sample Means:")
print(mean_of_means)

print("SD of Sample Means:")
print(sd_of_means)

##Comparison

print("Population Mean vs Mean of Sample Means:")
print(c(p_mean, mean_of_means))

print("Population SD vs SD of Sample Means:")
print(c(p_sd, sd_of_means))

