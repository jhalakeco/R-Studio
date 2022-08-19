# Programming Basic in R ----

# Set operations
# Conditional statement
# Loops
# Memomy pre allocation

## Set operations ----

# Healthaid Clinic has data for monthly visits of patients who were administered a specific drug

# 0. Data perperation: Patient IDs who visited for checkup in months M1 and M2
M1 <- c(7,4,4,14,8,14,8,1,4,1,13,5,12,13,11,5,15,1,7,4,8,4)
M2 <- c(17,18,7,6,20,9,20,14,5,12,15,20,8,14,14,15,12,7,20,8,8,13,8)
M1
M2

# 1. Get the items of given vector present in another
# Out of the visits from month 1, show the patient IDs who also visisted on month 2
M1_in_M2 <- M1 %in% M2 # masking for the elements of M1 present in M2. Lenght of the output will be the same as it will return the logical output. In simple sentence, it is looking which items of M1 is present in M2
M1_in_M2
M1[M1_in_M2] # here we have some duplicate IDs

# 2. Unique operation, Union and Intersect
# Finding the unique patient IDs whop visited in 1st month
unique(M1)
length(unique(M1))

# Finding the unique patient IDs whop visited either on first or second month
union(M1,M2) # union will give all the IDs without any duplication

# Finding the unique patient IDs who visited both months
intersect(M1,M2) # will return only common IDs in both list 


# 3. Patients who came in month 1 but did not come in month 2
# removing patient IDs from month 1, which were also present in month 2 
setdiff(M1,M2) # remove items from M2, those that are present in M1. setdiff removes all the items present in y from x.


unique(M1[M1_in_M2]) # looking for the unique IDs 
length(unique(M1[M1_in_M2])) # length of the unique IDs



## Minichallenge
source("https://bit.ly/2QRWZU4")
N1 <- c(7,4,4,14,8,14,8,1,4,1,13,5,12,13,11,5,15,1,7,4,8,4)
N2 <- c(17,18,7,6,20,9,20,14,5,12,15,20,8,14,14,15,12,7,20,8,8,13,8)

union(N1,N2)
setdiff(N1,N2)

