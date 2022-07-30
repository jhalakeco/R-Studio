# Loading necessary libraries
library(ggplot2)
library(tidyverse)
library(dplyr)

# Reading rawdata file
EUvax <- read.csv("C:/Users/jhala/OneDrive/Documents/My_projects/EUvaccine.csv")
View(EUvax)

# Preparing coordinates
mapdata <- map_data("world")
View(mapdata)



# Combining mapdata and EUvax

mapdata <- left_join(mapdata, EUvax, by = "region")
View(mapdata)


# filtering EU countries

mapdata_eu <- (mapdata %>%
                 filter(!is.na(mapdata$Perc_vaccinated)))
View(mapdata_eu)


# making a map

map1 <- ggplot(mapdata_eu, aes(x=long, y=lat, group=group)) +
  geom_polygon(aes(fill=Perc_vaccinated), color = "black")
map1
