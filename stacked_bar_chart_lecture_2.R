#stacked bar chart

hospital_data <- data.frame( Department = c("Emergency","Cardiology","Orthopedics",
                                            "Pediatrics","Oncology"), 
                             Male = c(70,50,35,20,15), Female = c(50,35,25,20,20))

#calculate proportions for each department
proportional_data <-
  prop.table(as.matrix(hospital_data[,2:3]),margin =1)

#stacked proportional bar plot
barplot(height = t(proportional_data), 
        names.arg = hospital_data$Department,
        col = c("blue", "pink"), legend.text = c("Male","Female"),
        main = "Proportional Admissions by Gender",
        xlab = "Department",
        ylab = "Proportion",
        border = "black")