library(rvest)
library(dplyr)

link = "https://twitter.com/jhalakgope"
page = read_html(link)

name = page %>% html_nodes()
