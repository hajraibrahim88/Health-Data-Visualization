#create a scatterplot

set.seed(123)
patient_data <- data.frame( Age = sample(20:80, 100, replace =TRUE),
                            Recovery_Time = sample(2:15, 100, replace =TRUE))

plot(patient_data$Age, patient_data$Recovery_Time,
     main = "Scatter Plot: Age vs Recovery Time",
     xlab = "Age(years)",
     ylab = "Recovery Time (days)",
     pch = 16, #filled circles
     col = "steelblue",
     xlim = c(0,100),
     ylim = c(0,20))

#Add a trend line
abline(lm(Recovery_Time ~ Age, data = patient_data), col = "red", lwd =2)