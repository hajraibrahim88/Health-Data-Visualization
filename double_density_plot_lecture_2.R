#double density plot

ages_male <-sample(30:80, size = 100, replace = TRUE)
ages_female <- sample(30:80, size = 100, replace = TRUE)

plot(density(ages_male),
     col = "blue",
     lwd = 2,
     main = "Density Plot: Male vs Female",
     xlab = "Age (years)",
     ylim = c(0, 0.05))
lines(density(ages_female), col = "pink", lwd = 2)
legend("topright", legend = c("Male","Female"),
       col = c("blue","pink"),
       lwd =2)
