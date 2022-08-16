# Time Series Analysis in R----

# TIme series data
data("AirPassengers")
ap <- AirPassengers #giving it a short name
str(ap) #checking th structure of the dataframe
head(ap)
ts(ap, frequency = 12, start = c(1949,1)) #ts is for time series, where frequencey is 12, that means it is monthly data, starting from the year 1949, and 1 is for January
attributes(ap)
plot(ap)
