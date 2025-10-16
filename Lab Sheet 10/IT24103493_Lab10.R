setwd("C:\\Users\\user\\Desktop\\IT24103493")

# Exercise

# 1. A vending machine owner claims that customers choose the four snack types (A, B,
#   C, D) with equal probability. To test this claim, a researcher records the number
#   of purchases for each snack type during one week and results are given below

# i. State the null and alternative hypotheses for the test.

# H0: probability that customer choose each snack will be (0.25)
# H1: at least one snack is chosen with different probability


# ii. Perform a suitable chi-squared test to test the null hypothesis

observed <- c(120, 95, 85, 100)
prob <- c(.25,.25,.25,.25)
chisq.test(x=observed,p=prob)

# iii. Give your conclusions based on the results.

# consider 5% level of significance for the test
# p value for the test got 0.08966
# conclusion : Since the p value (0.08966) is greater than 0.05,
#             do not reject null hypothesis at 5% level of
#             significance.Therefore We can conclude that
#             probability that customer choosing each snack
#             will be same which is 0.25
