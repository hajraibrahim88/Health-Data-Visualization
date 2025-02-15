#create a histogram
set.seed(123)

#generate 100 random ages between 30 and 80
patient_ages <- sample(30:80, size = 100,replace = TRUE)

hist( patient_ages,
      breaks = 10, #number of bins
      col = "steelblue",
      main = "Age Distribution of Patients",
      xlab = "Age (years)",
      ylab = "Frequency",
      border = "black")

      