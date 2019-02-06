library(tidyverse)

# Assing mpg data to our data variable
fuel_economy_data <- mpg

# 1. What’s gone wrong with this code? Why are the points not blue?
ggplot(data = fuel_economy_data) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))
