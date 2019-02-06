library(tidyverse)

# Assing mpg data to our data variable
fuel_economy_data <- mpg

# 1. What’s gone wrong with this code? Why are the points not blue?
ggplot(data = fuel_economy_data) +
  geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))

## Its trying to set the color aesthetic manually, hence it should go outside of the aes function,
## color being aesthetic should map to a variable


# 2. Which variables in mpg are categorical? Which variables are continuous?
?mpg

## Categorical -> manufacturer, model, cyl, trans, drv, fl, class
## Continous   -> displ, year, cty, hwy,


# 3. Map a continuous variable to color, size, and shape.
#    How do these aesthetics behave differently for categorical vs. continuous variables?
ggplot(data = fuel_economy_data) +
  geom_point(mapping = aes(x = displ, y = hwy, color=year))

ggplot(data = fuel_economy_data) +
  geom_point(mapping = aes(x = displ, y = hwy, size=year))

ggplot(data = fuel_economy_data) +
  geom_point(mapping = aes(x = displ, y = hwy, shape=year))

ggplot(data = fuel_economy_data) +
  geom_point(mapping = aes(x = displ, y = hwy, color=class))

## For categorical data, visualized output is split into various categories belonging to the variable
## Continous data, visualized output is on a single color spectrum with varying gradient, failed for the
## shape aesthetic with error "A continuous variable can not be mapped to shape"


# 4. What happens if you map the same variable to multiple aesthetics?
ggplot(data = fuel_economy_data) +
  geom_point(mapping = aes(x=displ, y=hwy, color=year, size=year))

## All aesthetics are implemented but with different output patterns


# 5. What does the stroke aesthetic do?
ggplot(data = fuel_economy_data) +
  geom_point(mapping = aes(x = displ, y = hwy))
## It adjusts the width of shape of the point on the plot


# 6. What happens if you map an aesthetic to something other than a variable name, like aes(colour = displ < 5)?
ggplot(data = fuel_economy_data) +
  geom_point(mapping = aes(x = displ, y = hwy, color = displ < 5))
## It split the aesthetic category into two parts mapping to (True or False), the plot then shows
## the points on map using the split mapping (<5 to True) (>5 to false) with different colors for the 
## two.


