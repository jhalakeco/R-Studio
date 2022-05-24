# Loading necessary libraries
library(ggplot2)
library(tidyverse)

# Reading rawdata file
EUvax <- read.csv("C:/Users/jhala/OneDrive/Documents/My_projects/EUvaccine.csv")
View(EUvax)

# Preparing coordinates
mapdata <- map_data("world")
View(mapdata)

# Combining mapdata and EUvax

