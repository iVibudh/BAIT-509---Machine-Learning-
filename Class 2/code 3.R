gencla <- function(n) {
  x <- rnorm(n) 
  pB <- 0.8/(1+exp(-x))
  y <- map_chr(pB, function(t) 
    sample(LETTERS[1:3], 
           size=1, 
           replace=TRUE,
           prob=c(0.2, t, 1-0.2-t)))
  tibble(x=x, y=y)
}

#X=1
(pA = 0.2)
(pB <- 0.8/(1+exp(-1)))
(pC <- 1-pA - pB)

#X=-2
(pA = 0.2)
(pB <- 0.8/(1+exp(2)))
(pC <- 1-pA - pB)

#X=0
(pA = 0.2)
(pB <- 0.8/(1+exp(0)))
(pC <- 1-pA - pB)

# if x<0, C
# if x>0, B 


dat <- gencla(1000); dat
 


probA
probB
probC
for()
dat$y

dat <- mutate(dat, 
              yhat =0, 
              yhat1 = 5-x1, 
              yhat2 = 5+ 2*x2,
              yhat12 = 5 - x1 + (2*x2))
