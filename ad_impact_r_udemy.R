# Impact of ad-campaigns on revenues ----

# Recreating the data ----
set.seed(100)
clicks_28 <- round(runif(28,3000,4000))
sales_28 <- seq(from = 100, to = 150, length = 28)
visitors_28 <- runif(28,1000,1100)
discount_28 <- rep(c(1,1,1,0.5),7)
mrp <- 5 # maximum retail price
daily_max_revenue <- sales_28 * mrp
daily_actual_revenue <- daily_max_revenue * discount_28
total_revenue <- sum(daily_actual_revenue)
