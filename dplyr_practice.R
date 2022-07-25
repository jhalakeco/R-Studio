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

data("msleep")

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

# filter and arrange
unique(msleep$order)


 # option 1
msleep %>% 
  filter((order=="Carnivora"|
          order=="Primates") & # this is using | (or) and by writing two arguments
           sleep_total > 8) %>% 
  select(name, order, sleep_total) %>% 
  arrange(-sleep_total) %>% # this minus sign will show sleep total from less to more
  View

msleep %>% 
  filter(order %in% c("Carnivora","Primates") & # this is another way of combining the arguments inside the dplyr functions
           sleep_total > 8) %>% 
  select(name, order, sleep_total) %>% 
  arrange(order) %>% # here we are arranging order alphabetically
  View

# Changing the content of the observations (***VERY IMPORTANT TO LOG THE OBSERVATIONS****)
msleep %>% 
  mutate(brainwt = brainwt*1000) %>% 
  View

# conditional change (if_else)
## logical vector based on a condition

msleep$brainwt
msleep$brainwt > 0.1 # let's say we want to find the numbers where the brain weight is higher than 0.01, so we ran this code and this will provide us only the logical output (T/F). But we are looking for the actual observations.

size_of_brain <- msleep %>% 
  select(name, brainwt) %>%
  drop_na(brainwt) %>%
  mutate(brain_size = if_else(brainwt > 0.01, "large", "small")) %>% 
  View()


# recoding the data
## let's say, we want to get 1 instead of large and 2 instead of small in that tibble

size_of_brain %>% 
  mutate(brain_size = recode(brain_size,
                             "large"=1,
                             "small"=2))

#reshaping the data from wide to long or vice versa
# for this example, msleep data isn't useful. So we use a different data source named gapminder
library(gapminder)
View(gapminder)

data <- select(gapminder, country, year, lifeExp)

#converting the long data to a wide data
wide_data <- data %>% 
  pivot_wider(names_from = year, values_from = lifeExp) #names_from is the column names I want and the values_from is the row values

# now, changing the wide data from the long data
long_data <- wide_data %>% 
  pivot_longer(2:13,
    names_to = "year",
    values_to = "lifeExp") # "to" for converting into long data, "from" for converting into wide data
