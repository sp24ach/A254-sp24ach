# Extract variables for convenience
x <- london_weather$sunshine
y <- london_weather$`radiation in london`

# Plot with enhanced colors and styles
plot(
  x = x,
  y = y,
  main = "Sunshine vs Radiation in London",
  xlab = "Sunshine (hours)",
  ylab = "Radiation in London (W/m^2)",
  pch = 16,                        # Filled circle
  col = "#1E90FF",                 # Dodger blue color for points
  cex = 1.3,                       # Increase point size
  frame = TRUE,
  col.axis = "darkgreen",          # Dark green axis labels
  col.lab = "purple",              # Purple for axis titles
  col.main = "darkred",            # Dark red for main title
  font.main = 2                    # Bold main title
)

# Fit linear model and add regression line
model <- lm(y ~ x, data = london_weather)
abline(model, col = "#FF4500", lwd = 2, lty = 2)   # Orange red, thicker, dashed line

# Add legend
legend("topright",
       legend = c("Data points", "Regression line"),
       col = c("#1E90FF", "#FF4500"),
       pch = c(16, NA),
       lty = c(NA, 2),
       lwd = c(NA, 2),
       pt.cex = 1.3,
       bty = "n")

