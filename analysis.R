d <- read.csv("london_weather.csv")
colnames(d)

df <- d[!is.na(d$global_radiation), ]

# Perform Spearman correlation test
spearman_test <- cor.test(df$global_radiation, df$sunshine, method = "spearman")

# Print the results
print(spearman_test)