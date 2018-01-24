##Load Libraries
library(readxl)
library(ggplot2)

##Read in the data
data <- read_excel("/Users/JamesB/Google Drive/Graduate School/Self_JamesTBrown/GitHub/Pipette_training/Data/20161215_Pipette Training.xlsx", sheet = "Sheet1")



##Plot data as a bar graph
ggplot(data, aes(x=volume_ul, y=mass_mg)) +
  geom_point(shape=1) +    # Use hollow circles
  geom_smooth(method=lm)   # Add linear regression line 
#  (by default includes 95% confidence region)