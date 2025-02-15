# plot with error bar
hospital_data <- data.frame(
  Department = c("Emergency", "Cardiology", "Orthopedics", "Pediatrics", "Oncology"),
  Mean_Recovery = c(5,7,6,4,8), # mean recovery time
  SE_Recovery = c(0.5,0.7, 0.6, 0.4, 0.8) #Standard error
)

#calculate upper and lower error bars
hospital_data$Upper <- hospital_data$Mean_Recovery + hospital_data$SE_Recovery
hospital_data$Lower <- hospital_data$Mean_Recovery - hospital_data$SE_Recovery

#scatter plot
plot( 1:5, hospital_data$Mean_Recovery,
      ylim = c(min(hospital_data$Lower), max(hospital_data$Upper)+1), #adjust y-limits
      xlab = "Department", ylab = "Mean Recovery Time(days)",
      xaxt = "n", pch = 16, col = "blue")

#add department names as x-axis labels
axis(1, at =1:5, labels = hospital_data$Department)

#Add error bars

arrows(1:5, hospital_data$Lower, 1:5, hospital_data$Upper, angle = 90,
       code = 3, length = 0.1, col = "red" #error bars with caps
)
      