#Midterm Project

#Read and view the data set
lung_data <- read.csv("~/PUBH 3242/Midterm Project/lung_cancer_data(1).csv")
View(lung_data)
colnames(lung_data)

#Load the libraries
library(ggplot2)
library(RColorBrewer)
library(ggpubr)

#Treatment_Type as factor for statistical test 
lung_data$Treatment_Type <- factor(lung_data$Treatment_Type, 
                                   levels = c("Surgery", "Chemotherapy", "Radiation", "Palliative"))

# Boxplot with survival years and treatment type, faceted by symptom progression
tiff("boxplot_treatment_symptom.tiff", width = 10, height = 8, units = "in", res = 300)  
ggplot(lung_data, aes(x = Treatment_Type, y = Survival_Years, fill = Treatment_Type)) +
  geom_boxplot() +
  scale_fill_brewer(palette = "Set2") +
  labs(title = "Survival Years by Treatment Type", 
       x = "Treatment Type",  
       y = "Survival Years",  
       fill = "Treatment Type") +  
  theme_bw() +
  theme(
    legend.title = element_blank(),  
    axis.text.x = element_blank(),  
    plot.title = element_text(hjust = 0.5, face = "bold", size = 14),  
    legend.position = "top",        
    legend.direction = "horizontal", 
    axis.title.x = element_text(face = "bold", size = 14), 
    axis.title.y = element_text(face = "bold", size = 14)
  ) +
  # Add summary statistics labels to each boxplot-median
  stat_summary(fun = median, geom = "text", aes(label = ..y..), 
               color = "white", fontface = "bold", size = 5, vjust = -0.5) +
  # Facet wrap by Symptom_Progression
  facet_wrap(~ Symptom_Progression) +
  # Adjust y-axis limits to remove gap
  scale_y_continuous(expand = c(0, 0)) 
dev.off()  # Close the TIFF device

# One-Way ANOVA
anova_result <- aov(Survival_Years ~ Treatment_Type, data = lung_data)
summary(anova_result)

# Boxplot with survival years and treatment type, faceted by stage of cancer
tiff("boxplot_treatment_stage.tiff", width = 10, height = 8, units = "in", res = 300)
ggplot(lung_data, aes(x = Treatment_Type, y = Survival_Years, fill = Treatment_Type)) +
  geom_boxplot() +
  scale_fill_brewer(palette = "Set2") +
  labs(title = "Survival Years by Treatment Type and Stage of Cancer", 
       x = "Treatment Type",  
       y = "Survival Years",  
       fill = "Treatment Type") +  
  theme_bw() +
  theme(
    legend.title = element_blank(),  
    axis.text.x = element_blank(),  
    plot.title = element_text(hjust = 0.5, face = "bold", size = 14),  
    legend.position = "top",        
    legend.direction = "horizontal", 
    axis.title.x = element_text(face = "bold", size = 14), 
    axis.title.y = element_text(face = "bold", size = 14)
  ) +
  facet_wrap(~ Stage_of_Cancer)+ 
  scale_y_continuous(expand = c(0, 0)) 
dev.off()
