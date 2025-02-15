#line plot

hospital_data <- data.frame( Month = 1:12, #months from january to december
                             Admissions = c(100,120,130,125,140,160,180,175,170,160,150,140))

plot(hospital_data$Month, hospital_data$Admissions,
     type = "o", #o combines both points and lines
     main = "Monthly Hospital Admissions",
     xlab = "Month", ylab = "Number of Admissions", col = "blue",
     pch = 16,
     lwd = 2,
     xaxt = "n")
     axis (1, at= hospital_data$Month, labels = month.abb)
     
#add grid lines
grid()
     
     