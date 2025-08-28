setwd("C:\\Users\\user\\Desktop\\IT24103493")

# Q1

Delivery_Times<-read.table("Exercise - Lab 05.txt",header=TRUE,sep=",")

# Q2

attach(Delivery_Times)
names(Delivery_Times)<-c("X1")
histogram<-hist(X1,main="Histogram for Delivery Times"
,breaks = seq(20, 70, length = 10), right = FALSE
,xlab = "Delivery Time (minutes)", ylab = "Frequency")

# Q3

#The distribution appears to be roughly symmetric around the center

# Q4

h <- hist(X1, breaks = seq(20, 70, length = 10), right = FALSE, plot = FALSE)
freq <- h$counts
cum_freq <- cumsum(freq)
breaks <- h$breaks
new <- numeric(length(breaks))
new[1] <- 0
for (i in 2:length(breaks)) {
  new[i] <- cum_freq[i - 1]
}
plot(breaks, new, type = "o", main = "Cumulative Frequency Polygon (Ogive) for Delivery Times",
xlab = "Delivery Time (minutes)", ylab = "Cumulative Frequency", ylim = c(0, max(cum_freq)))
