#boxplot

set.seed(123)

hospital_data <- data.frame( Department=
                               rep(c("Emergency", "Cardiology", "Orthopedics",
                                     "Pediatrics", "Oncology"), each = 20),
                             Recovery_Days = c( sample(3:10, 20, replace = TRUE),  # Emergency
                                                sample(4:12, 20, replace = TRUE),  # Cardiology
                                                sample(1:6, 20, replace = TRUE),   # Orthopedics
                                                sample(5:15, 20, replace = TRUE),  # Pediatrics
                                                sample(6:20, 20, replace = TRUE)   # Oncology
                             ))

# Now create the boxplot
boxplot( Recovery_Days ~ Department,
         data = hospital_data, 
         main = "Patient Recovery Days by Department",
         xlab = "Department",
         ylab = "Recovery Days",
         col = c("lightblue", "lightgreen", "lightpink", "lightyellow", "lightgray"), 
         border = "black")


  