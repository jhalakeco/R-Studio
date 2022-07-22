# loading packages ----
library(tidyverse) #loading dplyr
library(hflights) #loading dataset

data("hflights")
head(hflights)

# now we will be creating the "tbl_df" which creates a local data frame (tibble data frame)+

# local data frame is simply a wrapper for a data frame that prints nicely


flights <- tbl_df(hflights) # changing the normal dataframe into a dplyr Tibble

print(flights, n=20) # only showing 20 rows
data.frame(head(flights)) # showing the tibble again as a data frame

# Data manipulation ----
?msleep
glimpse(msleep)
colnames(msleep)

# Renaming a variable
msleep %>% 
  rename("conserv" = "conservation") %>% 
  glimpse() # first argument before the equal is the new name and the second one is the existing one

# Reordering variables
msleep %>% 
  select(vore, name, everything()) # inside the select function, the data frame will be created, will be as in the order of select function. and everything() will put rest everything there

# changing a variable type
msleep %>% 
  mutate(vore=as.factor(vore)) %>% 
  glimpse()

msleep %>% 
  mutate(vore=as.character(vore)) %>% 
  glimpse() # changing the variable again

# select variables to work with
names(msleep)
msleep %>% 
  select(2:4,
         awake,
         starts_with("sleep"),
         contains("wt")) %>% 
  names()
