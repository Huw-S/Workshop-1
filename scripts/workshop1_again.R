chaff <- read.table("data/chaff.txt", header = T)

library(tidyr)

chaff2 <- chaff%>%
  pivot_longer(names_to = "sex", values_to = "mass",
               cols = everything())
