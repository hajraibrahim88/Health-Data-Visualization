# create a heatmap
set.seed(123)
hospital_data <- matrix(
  sample(10:100:20, replace = TRUE),
  nrow = 4,
  ncol = 5,
  dimnames = list(
    c("Morning","Afternoon","Evening", "Night"), #Rows : Time of Day
    c("Emergency","Cardiology","Orthopedics","Pediatrics","Oncology") #Columns :Departments
  ))

#View the dataset
print(hospital_data)
heatmap(hospital_data,
        main = "Heatmap of Admissions by Department and Time of Day",
        xlab = "Department", ylab = "Time of Day",
        col = heat.colors(10),
        scale = "none",
        margins = c(5,8))