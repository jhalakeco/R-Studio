# Chapter 1 ----

# creating an object
die <- 1:6

ls() # ls() is basically to see the  object names (already created, from the environment)

die - 1
die * die

# in normal object multiplications, R does not follow the rules of matrix multiplication, rather R follows element-wise multiplications.

sum(die *die)
max(die)

die * 1:2

die + 1:4
die + 5:0

die %*% die # matrix multiplication or inner multiplication
die %o% die # outer multiplication

det(die %*% die)

## Functions

round(3.1415) # anything with the (), is a function. And anything goes inside the () is called argument


factorial(3)


# sampling

sample(1:100, 10, replace = F) # random sampling method

sample( x = die, size = 2, replace = TRUE) # replacing TRUE means, the first value has the probability to get selected again

args(sample) # to see what arguments it (sample function) takes using args()

# The function constructor ----

roll <- function() {
  die <- 1:6
  dice <- sample(die, 2, T)
  sum(dice)
}
roll # printing only this will print the structure of the function
roll() # this will print the function output


# Adding argument to the custom function

roll2 <- function(bones = 1:6) { # inside the () the argument is added
  dice <- sample(bones, 2, T)
  sum(dice)
} 
roll2() # function with integer



t_xt <- c("Apple", "Banana", "Fig", "Kiwi", "Plam", "Grape", "Orange")

t_roll <- function(){
  st <- sample(t_xt, 2, F)
  st
}

t_roll() # function with text/string
