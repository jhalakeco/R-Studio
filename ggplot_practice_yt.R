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

ggplot(data = BOD,
       mapping = aes(x = Time, 
                     y = demand)) +
  geom_point(size=3) +
  geom_line(colour="red")

# same graph as above, without writing down the parameters
ggplot(BOD, aes(Time, demand)) +
  geom_point(size = 3) +
  geom_line(colour = "red")


