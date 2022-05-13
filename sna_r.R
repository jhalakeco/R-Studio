library(sna)
library(network)

n <- 5 #declaring the n for the matrix values

# creating an adjacency matrix for n = 5 nodes
ADJ <- matrix(0,n,n) #0 is the elements, row, column. An adjucency matrix has been created

# adding ties
ADJ[1,2] <- 1
ADJ[1,3] <- 1
ADJ[2,3] <- 1
ADJ[3,4] <- 1
ADJ[4,5] <- 1

# to make the network undirected, adding new ties.
# Undirected network: in an undirected network, relationships are non-directional by their nature

ADJ[2,1] <- 1
ADJ[3,1] <- 1
ADJ[3,2] <- 1
ADJ[4,3] <- 1
ADJ[5,4] <- 1

#checking the elements
ADJ[1,5]
ADJ[1,] # this will return the enitre elements of the row
ADJ[,2] # this will return the enitre elements of the column

##Density
# the adjucency matrix already has
dim(ADJ) #checking the dimension of the matrix. this output will show the total rows and columns of the matrix
# this means that there are n*n cells in the adjacency

# now, we will be multiplying the matrix in order to increase the density
dim(ADJ)*dim(ADJ)
length(ADJ)
# The n diagonal elements x1,1,x2,2,…,xn,n are zero by definition, which means that there are n×n−n=n(n−1) variables that can be non-zero, here
dim(ADJ)[1]*dim(ADJ)[2] - n

# counting the non zero entries
sum(ADJ)

# then, the density is
sum(ADJ)/(n*(n-1))

# that means, there are 50% of possible ties are present in the network


##Degree
# how many ties does a node have?
sum(ADJ[1,]) # degree of node i=1
sum(ADJ[2,]) # degree of node i=2


plot(table(colSums(ADJ)))

?"%*%"
ADJ %*% ADJ # %*% is the matrix multiplication

ADJ %*% ADJ %*% ADJ


## Declaring the matrix as a network object
net <- as.network(ADJ, directed = FALSE)
class(net)

net #seeing the net only would show the network attributes of the network variable
plot(net)

plot(net, # the network object
     vertex.cex =degree(net), # how should nodes (vertices) be scaled
     displaylabels = TRUE, # display the labels of vertices
     vertex.col = c("red", "blue", "gray", "green", "yellow"))

