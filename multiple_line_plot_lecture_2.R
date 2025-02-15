#multiple line plot
data("Theoph")

#unique objects
unique_subjects <- unique(Theoph$Subject)

#define colors for each subject
subject_colors <- rainbow(length(unique_subjects))

#create an empty plot
plot ( NA,
       xlim = range(Theoph$Time),
       ylim = range(Theoph$conc),
       xlab = "Time(hours)",
       ylab = "Concentration (mg/L)",
       main = "Drug Concentration Over Time for Multiple Subjects")

#Add lines for each subject
for( i in seq_along(unique_subjects)) {
  subject_data <- subset(Theoph, Subject == unique_subjects[i])
    lines(subject_data$Time, subject_data$conc,
          col = subject_colors[i],
          lwd = 2,
          type = "o",
          pch = 16)}

#Add a legend
legend("topright", legend = paste("Subject", unique_subjects), pch = 16, col = subject_colors, cex = 0.5)