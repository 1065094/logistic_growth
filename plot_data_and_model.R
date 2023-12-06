#Script to plot data and model

growth_data <- read.csv("/cloud/project/experiment2.csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- 1000 #
  
r <- 0.0301937 #
  
K <- 1000000000 #

ggplot(aes(x = t,y = N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

  #scale_y_continuous(trans='log10')


