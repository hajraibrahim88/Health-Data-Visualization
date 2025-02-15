# grouped bar plot
barplot(
  height = rbind(hospital_data$Male,
                 hospital_data$Female),
  beside = TRUE,
  names.arg = hospital_data$Department,
  col = c("blue","pink"),
  legend.text = c("Male", "Female"),
  main = "Admissions by Gender (Grouped Bar Plot)",
  xlab = "Department",
  ylab = "Number of Admissions")
