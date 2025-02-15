#dot plot
dotchart(hospital_data$Admissions,
         labels= hospital_data$Admissions,
         cex = 1,
         pch = 16,
         col = "blue",
         main = "Dot Plot of Admissions by Department",
         xlab = "Number of Admissions")
