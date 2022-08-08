# Impact of ad campaign on revenue ----
# Recreating the data

set.seed(100)
clicks_28 <- round(runif(28, 3000, 4000))
sales_28 <- seq(from=100, to=150, length=28)
visitors_28 <- runif(28, 1000, 1100)
discount_28 <- rep(c(1,1,1,0.5),7)
mrp <- 5 #maximum retail price
daily_max_revenue <- sales_28*mrp #daily maximum revenue
daily_actual_revenue <- daily_max_revenue*discount_28
total_revenue <- round(sum(daily_actual_revenue))

# Plan ads every TUE and FRI to increase clicks by 40% ----
# Finding revenue per click

revenue_per_click <- daily_actual_revenue/clicks_28
revenue_per_click
round(mean(revenue_per_click),2)

# Creating ad data (1 = mo increase in clicks, 1.4 = 40% increase)
ad <- c(1, 1, 1.4, 1, 1, 1.4, 1)

# Calculate new value for clicks after ad campaign
clicks_ad <- clicks_28 * ad
