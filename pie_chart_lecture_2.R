#pie chart

hospital_data <- data.frame(Department = c("Emergency, Cardiology","Orthopedics","Pediatrics",
                                           "Oncology"), Patients = c(120,85,60,40))

#Calculate proportions
hospital_data$Percentage <- round((hospital_data$Patients/sum(hospital_data$Patients))*100,1)

#Pie Chart
pie(hospital_data$Patients,
    lables = paste(hospital_data$Department,"(",
                   hospital_data$Percentage,"%)",
                   sep = ""),
    col = c("lightblue", "lightgreen","lightpink","lightyellow","lightgray"),
    main = "Patient Distribution by Department")