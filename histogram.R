data <- read.csv("london_weather.csv")

radiation <- as.numeric(data$radiation)

# Create Hsitogram

hist(radiation,
     breaks=50,
     col="lightblue",
     main="Histogram of Radiation",
     xlab="Radiation",
     ylab="Frequency",
     probability=TRUE) # makes density rather than frequency

# Create Normal Distribution Bell Curve

mean <- mean(radiation, na.rm = TRUE) # 
sd <- sd(radiation, na.rm = TRUE)

curve(dnorm(x, mean=mean, sd=sd),
      col="red",
      lwd=2, # line width
      add=TRUE)