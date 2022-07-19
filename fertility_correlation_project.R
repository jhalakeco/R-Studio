library(readr)
library(tidyverse)
f_gdp_raw <- read_csv("fertility_gdp.csv", col_names = T)
View(fertility_gdp)
colnames(f_gdp_raw)
# for south east asia

fertility_sea <- (f_gdp_raw %>% 
                filter(`Country Name` == "Germany"))
View(fertility_sea)
