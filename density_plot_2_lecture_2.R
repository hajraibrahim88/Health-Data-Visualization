#second density plot 
data("BJsales")

plot(density(BJsales),
     main = "Density Plot of Bjsales Data",
     xlab = "Sales",
     ylab = "Density",
     col = "steelblue",
     lwd = 2,
     bty = "l")

polygon(density(BJsales),
        col = "lightblue",
        border = "steelblue")

#add a vertical line for the mena
abline(v = mean(BJsales),
       col = "red",
       lwd = 2,
       #add a legend
       legend = c("Density Curve", "Mean"),
       col = c("steelblue","red"), 
       lwd = 2, 
       lty = c(1,2))
