#density plot
data("BJsales")

plot( density(BJsales),
      main = "Density Plot of BJsales Data", 
      xlab = "Sales", 
      ylab = "Density",
      col = "steelblue",
      lwd =2, # line width
      bty = "l" #Box type 
)


#add vertical line for the mean
abline(v = mean(BJsales),col = "red",
       lwd =2, lty = 2)

#Add a legend
legend("topright",
       legend = c("Density Curve","Mean"),
       col = c("steelblue","red",lwd = 2, lty = c(1,2) ))
