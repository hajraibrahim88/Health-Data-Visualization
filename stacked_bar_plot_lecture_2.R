#stacked bar plot
barplot(height = rbind(hospital_data$Male,
                       hospital_data$Female),
        names.arg = hospital_data$Department,
        col = c("blue","pink"),
        legend.text = c("Male","Female"),
        main = "Admissions by Gender(Stacked Bar Plot)",
        xlab = "Department",
        ylab = "Number of Admissions")
