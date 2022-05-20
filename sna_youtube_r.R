### Social Network Analysis ----

#calling the libraries
library(igraph)
#creating a normal graph with numbers
g <- graph(c(1,2,2,3,3,4,4,1), #delcaring "g", which has 4 elements and they are connected from 1 to 2, 2 to 3 and so on.
           directed = FALSE, #undirected means the edges are not showing the lines
           n=7) #although there are 4 elements, there are total 7 nodes and as we did not mention rest three nodes, they will be isolated from other nodes.

plot(g, #dataset
     vertex.color = "green", #node color
     vertex.size = 40, #node size
     edge.color = "red") #arrow/line color

g[] #this will show the martix formation of variable g

#creating a normal graph with characters
g_char <- graph(c("Amy", "Ram", "Ram", "Li", "Li", "Amy", "Amy", "Li", "Kate", "Li"))