library(tidyverse)

# Assing mpg data to our data variable
fuel_economy_data <- mpg

# 2. What do the empty cells in plot with facet_grid(drv ~ cyl) mean? How do they relate to this plot?

ggplot(data = fuel_economy_data) + 
  geom_point(mapping = aes(x = drv, y = cyl))
### Empty cells in the plot imply that their are no observations for the data

ggplot(data = fuel_economy_data) + 
  geom_point(mapping = aes(x = drv, y = cyl)) +
  facet_grid(drv ~ cyl)
### The above compare with previous plot as both have same observations but here each facets represents
### a single data point

# 3. What plots does the following code make? What does . do?
ggplot(data = fuel_economy_data) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(data = fuel_economy_data) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

### the . acts an indicator of no variable to map to,
### hence ignores the axis(x or y) during the split

### facet_grid(drv ~ .), this facets by values of drv on x axis
### facet_grid(. ~ cyl), facets by valuse of cyl on the y axis

# 4. What are the advantages to using faceting instead of the colour aesthetic? 
# What are the disadvantages? How might the balance change if you had a larger dataset?

ggplot(data = fuel_economy_data) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)

### Facets split into individual plots, thus easier visualization within each facet, 
### With large datasets faceting is a better choice as you may have many points that cross over one another
### and splitting may help.
### Facetting makes it hard to figure the existing relationship due to different grid items.


# 5. Read ?facet_wrap. What does nrow do? What does ncol do?
# What other options control the layout of the individual panels? Why doesn’t facet_grid()
# have nrow and ncol arguments?

### nrow sets how many rows the faceted plot will have.
### ncol sets how many columns the faceted plot will have.
### facet_grid has no nrow nor ncol since it forms a matrix of panels defined by row and column faceting variables,
### hence it expects variables but not number of columns not rows


# 6. When using facet_grid() you should usually put the variable with more unique levels in the columns. Why?

### It allows easier to read points on the grid  since it has more space






