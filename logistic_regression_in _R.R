## Loading the libraries
library(tidyverse)


## Loading Data
x_scan <- scan() #scan() is to enter values manually

product_data <- read.table("C:/Users/jhala/OneDrive/Documents/My_projects/Product.txt", header = TRUE, sep = "\t") #loading the dataset (text file: read.table)
str(product_data) #checking the structure of the dataframe

customer_data <- read.csv("C:/Users/jhala/OneDrive/Documents/My_projects/Customer.csv", header = TRUE) #loading the dataset (csv file: read.csv)
str(customer_data)

## creating the dataframe consisting the rank of the regions
cust_region <- customer_data %>% 
  group_by(Region) %>% 
  count(Region) %>%
  rename(`Total count` = n) %>% 
  arrange(-`Total count`)

## Creating an ordered bar plot of the regions from customer_data 
ggplot(cust_region, (aes(reorder(Region, -`Total count`), `Total count`, fill_color = "darkgray"))) + 
         geom_bar(stat = "identity") +
  labs(main ="Number of customers in each regions",
       x = "Regions",
       y = "Total Number of customers")
