time_data <- data.frame( 
  Day = 1:10,
  Mean_Recovery = c(5, 5.2, 5.4, 5.7, 6, 6.2, 6.5, 6.8, 7, 7.2), # Mean recovery time
  SE = c(0.2, 0.25, 0.22, 0.3, 0.28, 0.26, 0.3, 0.25, 0.2, 0.15) # Standard error
)

time_data$Lower_CI <- time_data$Mean_Recovery - 1.96 * time_data$SE
time_data$Upper_CI <- time_data$Mean_Recovery + 1.96 * time_data$SE

# Plot the mean recovery times
plot(time_data$Day, time_data$Mean_Recovery, type = "o", col = "blue", lwd = 2,
     xlab = "Day", ylab = "Mean Recovery Time (days)", 
     main = "Mean Recovery Time with Confidence Intervals",
     ylim = c(min(time_data$Lower_CI), max(time_data$Upper_CI)))

# Add the confidence interval as a shaded area
polygon(
  c(time_data$Day, rev(time_data$Day)),
  c(time_data$Upper_CI, rev(time_data$Lower_CI)),
  col = rgb(0.1, 0.2, 0.8, 0.2), border = NA
  # Shaded area with transparency
)

# Add the mean recovery line again to ensure it stands out
lines(time_data$Day, time_data$Mean_Recovery, col = "blue", lwd = 2)

# Add labels for clarity
legend("topleft", legend = c("Mean Recovery", "95% Confidence Interval"), 
       fill = c("blue", rgb(0.1, 0.2, 0.8, 0.2)), bty = "n")
