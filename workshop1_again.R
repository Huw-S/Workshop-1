chaff <- read.table("data/chaff.txt", header = T)

library(tidyr)

chaff2 <- chaff%>%
  pivot_longer(names_to = "sex", values_to = "mass",
               cols = everything())

mod <- lm(data = chaff2, mass ~ sex)
mod=
summary(mod)

ggplot(data = chaff2, aes(x = sex, y = mass, fill = sex))+
  geom_boxplot()+
  theme_classic()
