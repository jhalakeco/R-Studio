library(tidyverse)
library(readxl)

# Data cleaning ----
forbes_data <-  read_excel("Forbes Global 2000  - 2020 (1).xlsx") #reading the file into dataframe
forbes_data <- (forbes_data %>% 
                  rename("Country" = `Country/Territory`)) #renaming the column name for simplicity
forbes_data <- (forbes_data %>% 
                  rename("Market_Value" = `Market Value`)) #renaming the column name for simplicity




forbes_data$Sales <-gsub(".B$"," ", as.character(forbes_data$Sales))

colnames(forbes_data)

str(forbes_data)
