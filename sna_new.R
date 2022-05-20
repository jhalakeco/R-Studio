# Network analysis using R ----

library(igraph)

# Data Framework ----
s_data <- data.frame(ID = 1:4,
                          FirstName = c("John","Jim","Jane", "Jill"),
                          Female = c(F,F,T,T),
                          Age = c(22,33,44,55)) # created a dataframe
s_data

s_edges <- read.csv(file.choose(), header = T, sep = ";") # chosing the csv file for the edges
s_vertices <- read.csv(file.choose(), header = T, sep = ";") # chosing the csv file for the vertices or nodes


s_graph <- graph.data.frame(vertices = s_vertices, d = s_edges, directed = T)
summary(s_graph)
