setwd("C:\\Users\\user\\Desktop\\IT24103493PsLab09")

# Exercise

#  1. Assume that the time taken to bake a batch of cookies is normally distributed with
#  mean 45 minutes and standard deviation 2 minutes.

# i. Generate a random sample of size 25 for the baking time.

bake <- rnorm(25, mean=45, sd=2)

#  ii. Test whether the average baking time is less than 46 minutes at a 5% level of
#      significance.

t.test(bake, mu=46, alternative="less")
