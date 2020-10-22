chaff <- read.table("data/chaff.txt", header=TRUE)

#tidying data
library(tidyverse)

chaff2<- chaff%>% 
  pivot_longer(names_to = "sex", 
               values_to = "mass",
               cols = everything())

#defining name of file 
file <-  "data/chaff2.txt"

#saving tidied file
write.table(chaff2, 
            file, 
            quote = FALSE,
            row.names = FALSE)
