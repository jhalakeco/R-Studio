# to integrate R and Tableau, we need to install package "Rserve" 

install.packages("Rserve")
library(Rserve)


# Integration process
Rserve()

#
print("Hello world!")




# if else practice
a <- 3
b <- 6
x <- a+b

if (x>=10) 
  {
  print("Great!")
} else {
  print("Please add more!")
}

# installing mvoutlier package for outlier measurement
install.packages("mvoutlier")


## ggmap and geocoding in Tableau
library("ggmap")



