library(rvest)
library(dplyr)

link <- "https://en.wikipedia.org/wiki/List_of_Nobel_laureates_in_Physics"
page <- read_html(link)

name <- page %>% 
  html_nodes("tbody th a") %>%
  html_text()
country <- page %>% 
  html_nodes("tr~ tr+ tr .flagicon+ a , tbody tr:nth-child(1) th a") %>%
  html_text()


de_country <- (country %>% 
                 recode("West Germany" = "Germany"))
de_country <- (country %>% 
                 recode("Weimar Republic" = "Germany",
                        "West Germany" = "Germany"))
de <- de_country %>% 
  filter(de_country,"Germany")
