# Loading necessary libraries
library(tidyverse)

# Reading rawdata file ----
EUvax <- read.csv("C:/Users/jhala/OneDrive/Documents/My_projects/EUvaccine.csv")
View(EUvax)

# Preparing coordinates ----
mapdata <- map_data("world")
View(mapdata)



# Combining mapdata and EUvax ----
mapdata <- left_join(mapdata, EUvax, by = "region")
View(mapdata)


# filtering EU countries ----
mapdata_eu <- (mapdata %>%
                 filter(!is.na(mapdata$Perc_vaccinated)))
View(mapdata_eu)
# making a map ----
map1 <- ggplot(mapdata_eu, aes(x=long, 
                               y=lat, 
                               group=group)) +
  geom_polygon(aes(fill=Perc_vaccinated), color = "black") # ploygon for mapping, color is the border color between the countries

map1


# making a new map to get rid of the axes and making it more coherent ----
map2 <- map1 +
  scale_fill_gradient(name= "% vaccinated",
                      low = "#b5bde3",
                      high = "#0b2183",
                      na.value = "gray50") +
  theme(axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        rect = element_blank())+
  labs(title = "Percentage of vaccination in EU countries")

map2





