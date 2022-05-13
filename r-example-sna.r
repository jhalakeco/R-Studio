# R example for SNA course
library(sna)
library(network)

#import textfile
got.edges <- read.csv("got-s8-edges.csv")
got.edges <- got.edges[got.edges$Weight >= 35,1:3]

#- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#Turn edgelist into a network object
#- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
got.nw <- network(got.edges,matrix.type="edgelist",directed=FALSE)
summary.network(got.nw)
print.network(got.nw)

#plot the network
gplot(got.nw)
#plot the network with labels
gplot(got.nw,label = network.vertex.names(got.nw),label.cex=.7)

#plot the network with labels, a title and the node size proportional to degree centrality
gplot(got.nw,label = network.vertex.names(got.nw),displaylabels=T, 
      vertex.cex=.05*degree(got.nw),label.cex=.7, arrowhead.cex = 0)

par(mar = c(0,0,0,0))


