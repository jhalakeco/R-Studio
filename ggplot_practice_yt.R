### Data visualization----


# We will be discussing----

# data
# mapping (aesthetics)
# geometric representation
# statistics
# facet
# coordinate space
# labels
# theme


## installing packages----
suppressMessages(library(tidyverse))

BOD #using built in BOD data

ggplot(data = BOD, #declaring the data
       mapping = aes(x = Time, 
                     y = demand)) + #assigning axes
  geom_point(size=3) + #adding points/bars/other aesthetic elements
  geom_line(colour="lightblue", size=2) #adding trend line and associated color 

# same graph as above, without writing down the parameters
ggplot(BOD, aes(Time, demand)) +
  geom_point(size = 3) +
  geom_line(colour = "red")


## working with C02 data
data(CO2)

CO2 %>%
  ggplot(aes(conc, uptake,
             color = Treatment)) +
  geom_point(size=3, alpha =.5) + #alpha for opacity
  geom_smooth(method = lm, se =F) + #geom_smooth for trend line
  facet_wrap(~Type) +
  labs(title ="Concentration of CO2") + #adding labels
  theme_bw() #applying theme

CO2 %>% 
  ggplot(aes(Treatment, uptake)) +
  geom_boxplot() + #here, adding the boxplot first
  geom_point(alpha = .5,aes(size=conc, #then adding geom_point as a layer 
                            colour = Plant)) +
  coord_flip() + #to flip the coordination
  theme_classic() +
  facet_wrap(~Type) +
  labs(title = "Chilled vs Non-chilled")

View(mpg)

mpg %>% 
  filter(cty < 25) %>% #to get rid of the outliers
  ggplot(aes(displ, cty))+
  geom_point(alpha=.5,
             aes(colour = drv,
                 size = trans)) +
  geom_smooth(method = lm) +
  facet_wrap(~year, nrow = 1) +
  labs(x = "Engine size",
       y = "MPG in the city",
       title = "Fuel efficiency") +
  theme_bw()
