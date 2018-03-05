library(tidyverse)
library(knitr)
set.seed(87)
dat <- tibble(x = c(rnorm(100), rnorm(100)+5)-3,
              y = sin(x^2/5)/x + rnorm(200)/10 + exp(1))
kable(head(dat))
dat
dat$d <- sqrt((dat$x)^2)
dat
dat.knn <- arrange(dat,dat$d)
dat.knn
subset.dat.knn <- dat.knn[1:5,]
kable(head(subset.dat))
(knn.pred <- mean(subset.dat$d))
# [1] 0.186035

#loess
subset.dat.loess <- filter(dat, dat$d<.5)
(loess.pred <- mean(subset.dat.loess$d))
# [1] 0.2539724

# Q3
# for loess biased OR may not have any predictions
subset.dat.loess <- filter(dat, dat$d<.001)
(loess.pred <- mean(subset.dat.loess$d))
# NaN - no prediction 

# Q4
# biased vs over generalized
subset.dat.loess <- filter(dat, dat$d<10)
(loess.pred <- mean(subset.dat.loess$d))
# 2.564186 - equal to the mean of the data 
mean(dat$d)



