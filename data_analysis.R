chaff2 <- read.table("processed_data/chaff2.txt", header= TRUE)

library(tidyverse)

shapiro.test(chaff2$mass)

mod <- lm(data = chaff2, mass ~ sex)
mod
summary(mod)

ggplot(data)

