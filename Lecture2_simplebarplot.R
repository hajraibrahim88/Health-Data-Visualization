hospital_data <- data.frame(
  Department = c("Emergency", "Cardiology", "Orthopedics", "Pediatrics",
                 "Oncology"),
  Admissions = c(120, 85, 60, 40, 35),
  Male = c(70, 50, 35, 20, 15),
  Female = c(50, 35, 25, 20, 20))

print(hospital_data)

#Simple Bar Plot
barplot(
  height = hospital_data$Admissions,
  names.arg = hospital_data$Department,
  col = "steelblue",
  main = "Total Admissions by Department",
  xlab = "Department",
  ylab = "Number of Admissions")