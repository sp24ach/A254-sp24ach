d <- read.csv("london_weather.csv")
colnames(d)

df <- d[!is.na(d$global_radiation), ]

plot(df$sunshine, df$global_radiation, 
     xlab = "Sunshine", ylab = 
       "Radiations", main 
     = "Scatterplot of SunShine vs Radations")

abline(lm(df$global_radiation ~ df$sunshine), col = "red")

# Create a Histogram
h <-hist(df$global_radiation, breaks = 30, xlab = "Radiation", ylab = "Frequency", main = "Histogram of Radiation")

# Add a normal distribution line
x <- seq(min(df$global_radiation), max(df$global_radiation), length = 100) 
y <- dnorm(x, mean = mean(df$global_radiation), sd = sd(df$global_radiation)) * length(df$global_radiation)
box.size <- diff(h$mids[1:2])
y <- y * box.size
lines(x, y, col = "red")

