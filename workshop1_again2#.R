chaff <- read.table("data/chaff.txt", header = T)

library(tidyr)

chaff2 <- chaff%>%
  pivot_longer(names_to = "sex", values_to = "mass",
               cols = everything())

mod <- lm(data = chaff2, mass ~ sex)
mod=
summary(mod)

fig2 <- ggplot(data = chaff2, aes(x = sex, y = mass, fill = sex))+
  geom_boxplot()+
  theme_classic()

# figure saving settings
units <- "in"  
fig_w <- 3.5
fig_h <- fig_w
dpi <- 300
device <- "tiff" 

ggsave("../figures/fig1.tiff",
       plot = fig2,
       device = device,
       width = fig_w,
       height = fig_h,
       units = units,
       dpi = dpi)

