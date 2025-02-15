#Sample data : Percentage of patients by department

hospital_data <- data.frame( Department= c("Emergency", "Cardiology", "Orthopedics",
                                           "Pediatrics", "Oncology"), Patients = c(120,85,60,40,35))
#calculate proportions
hospital_data$Percentage <- round(hospital_data$Patients /sum(hospital_data$Patients)*100,1)

#use pie chart and overlay a whote circle to create the hole
pie(hospital_data$Patients, labels =
      paste(hospital_data$Department,"(",
            hospital_data$Percentage, "%)", sep = ""),
    col = c("lightblue","lightgreen","lightpink","lightyellow","lightgray"),
    main = "Doughnut Chart: Patient Distribution by Department", border = "white")

#Add the hole
par(new=TRUE)
symbols(0,0,circles = 0.5, inches = FALSE, add = TRUE, bg = "white"