install.packages("palmerpenguins")

library(palmerpenguins)

library(ggplot2)

ggplot(data=penguins,
       aes(
         x=flipper_length_mm,
         y=body_mass_g)) + # till this point, we are specifying the graph's mechanism
  geom_point() # how I want to represent my data? (scatter plot, so we use geom_point())


###
ggplot(data=penguins,
       aes(
         x=flipper_length_mm,
         y=body_mass_g)) + 
  geom_point(color="purple") # I want the scatter points in purple


###
ggplot(data=penguins,
       aes(
         x=flipper_length_mm,
         y=body_mass_g)) + 
  geom_point(aes(color=species)) # I want to color the points according to the species, I brought an aes (aesthetics) and declared that the color of the points will be according to the species

###
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + 
  geom_point(aes(shape=species)) # declaring shapes for each species


###
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + 
  geom_point(aes(shape=species, color= species)) # declaring color and shapes for each species


###
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + 
  geom_point(aes(shape=species, color= species)) +
  facet_wrap(~species) # declaring different plots for each species with keeping all the previous arguments (facet_wrap makes it possible)

###
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + 
  geom_point(aes(shape=species, color= species)) +
  facet_wrap(~species) +
  labs(title = "Body mass and flipper length of the penguins")# adding a title with keeping all the previous arguments (facet_wrap makes it possible)


