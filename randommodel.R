#install.packages("ggplot2")
#install.packages("gridExtra")

library(ggplot2)
library(gridExtra)

brownian_motion  <- function (n_particles, seed) {
# Here I set a seed I can edit to have two different plots that will be produced the same each time.
  set.seed(seed)  
  df <- data.frame(x = rep(NA, n_particles), y = rep(NA, n_particles), time = 1:n_particles)
  
  df[1,] <- c(0,0,1)
  
  for (i in 2:n_particles) {
    
    sigma <- 0.006
  # Justification for this is that we are using sigma as usually used in Brownian motion. 
  # This is the standard deviation of the mean squared displacement (MSD), which is based on theories of particle movement in physics.
  # I used the equation for MSD, which considers the diffusion coefficient and how particles move overtime to accurately model movement.
  # However, this is based on my assumption that these particles are moving in air.
    
    angle <- runif(1, min = 0, max = 2*pi)
    
    df[i,1] <- df[i-1,1] + cos(angle)*sigma
    
    df[i,2] <- df[i-1,2] + sin(angle)*sigma
    
    df[i,3] <- i
    
  }
  
  return(df)
  
}

# Below I chose 1440, since I thought it would be better for this experiment to run for longer to gather sufficient data.
# This is just 24 hours, provided time is in minutes. A longer time implies more iterations and therefore increased reliability to some extent.

data1 <- brownian_motion(1440, seed = 250)

plot1 <- ggplot(aes(x = x, y = y), data = data1) +
  
  geom_path(aes(colour = time)) + 
  
  theme_classic() +
  
  xlab("x-coordinate") +
  
  ylab("y-coordinate")

data2 <- brownian_motion(1440, seed = 786)

plot2 <- ggplot(aes(x = x, y = y), data = data2) +
  
  geom_path(aes(colour = time)) +
  
  theme_classic() +
  
  xlab("x-coordinate") +
  
  ylab("y-coordinate")

grid.arrange(plot1, plot2, ncol=2)

# There are other ways you can make this model more realistic, for example: by introducing a new iterator.
# This could be used to understand how particles move in different environments due to changes in trajectory.
# Additionally, you can make use of the cumsum() function to understand how stochastisity accumulates.
# This will tell us about displacement trends but also is more reproducible.
