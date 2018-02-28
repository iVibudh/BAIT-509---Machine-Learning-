#Oracle 

library(tidyverse)

genreg <- function(n){
  x1 <- rnorm(n, mean = 0, sd = 1)
  x2 <- rnorm(n, mean = 0, sd = 1)
  eps <- rnorm(n)
  y <- 5-x1+2*x2+eps
  tibble(x1=x1, x2=x2, y=y)
}

dat <- genreg(1000) 
dat <- mutate(dat, 
              yhat =0, 
              yhat1 = 5-x1, 
              yhat2 = 5+ 2*x2,
              yhat12 = 5 - x1 + (2*x2))


mse<-mean((dat$yhat - dat$y)^2)
mse
mse<-mean((dat$yhat1 - dat$y)^2)
mse
mse<-mean((dat$yhat2 - dat$y)^2)
mse
mse<-mean((dat$yhat12 - dat$y)^2)
mse
