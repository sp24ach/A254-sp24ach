x <-london_weather$sunshine
y <-london_weather$`radiation in london`
plot(x = london_weather$sunshine,
     y = london_weather$`radiation in london`,
     main = "sunshine vs radiation in london",
     xlab = "sunshine",
     ylab =  "radiation in london",
     pch =19,
     frame = T)
model <- lm (y ~ x, data = london_weather)
abline(model, col = "blue")

