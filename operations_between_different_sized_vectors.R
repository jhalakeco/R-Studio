# Operations of vector and vector (with different sizes)

# Recap : Earlier vector * single element = All elements of vector 1 was multiplied with the single element
# Revenue increases for increase in shifts from 1 to 2, on every 4th day ----

# Recreating the data ----
set.seed(100)
clicks_28 <- round(runif(28,3000,4000))
sales_28 <- seq(from = 100, to = 150, length = 28)
visitors_28 <- runif(28,1000,1100)
discount_28 <- rep(c(1,1,1,0.,5),7)
mrp <- 5 # maximum retail price
daily_max_revenue <- sales_28 * mrp
daily_actual_revenue <- daily_max_revenue * discount_28
total_revenue <- sum(daily_actual_revenue)



# Create shift data for a 4th day sequence ----
shifts <- c(1,1,1,2) # 1=> 1 shifts, 2=> 2 shifts


# Updated revenue due increase in shifts ----
possible_revenue <- daily_actual_revenue * shifts
possible_revenue


total_revenue_shift <- sum(possible_revenue)


rev_increase_shift <- total_revenue_shift - total_revenue
rev_increase_shift


# Mini Challenge ----
set.seed(100)
mc_clicks_28 <- round(runif(28,3000,4000))
mc_sales_28 <- seq(from = 100, to = 150, length = 28)
mc_visitors_28 <- runif(28,1000,1100)
mc_discount_28 <- rep(c(1,1,1,0.,5),7)
mc_mrp <- 5 # maximum retail price
mc_daily_max_revenue <- mc_sales_28 * mc_mrp
mc_daily_actual_revenue <- mc_daily_max_revenue * mc_discount_28
mc_total_revenue <- sum(mc_daily_actual_revenue)
mc_shifts <-c(1,2)

mc_revenue_shift <- mc_daily_actual_revenue * mc_shifts
mc_rev_increase_shift <- mc_total_revenue_shift - mc_total_revenue
mc_rev_increase_shift
