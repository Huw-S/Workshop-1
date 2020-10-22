chaff2 <- read.table("processed_data/chaff2.txt", header= TRUE)

library(tidyverse)

shapiro.test(chaff2$mass)

mod <- lm(data = chaff2, mass ~ sex)
mod
summary(mod)

fig1 <- ggplot(data = chaff2, aes(x = sex, y = mass, fill = sex))+
  geom_boxplot()+
  theme_classic()

units <- "in"  
fig_w <- 3.5
fig_h <- fig_w
dpi <- 300
device <- "tiff" 

ggsave("figures/fig1.tiff",
       plot = fig1,
       device = device,
       width = fig_w,
       height = fig_h,
       units = units,
       dpi = dpi)
