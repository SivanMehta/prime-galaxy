library(ggplot2)
library(dplyr)

dat <- read.csv('primes.txt')
dat.sub <- head(dat, 1000)

plot.spiral <- function(dataset, size = 1) {
  dataset %>%
    ggplot() +
    aes(x = x %% pi, y = x) +
    geom_point(size = size, fill = 'white', color = 'white') +
    coord_polar() +
    theme_void() +
    theme(
      panel.background = element_rect(fill = "black", colour = "black")
    )
}

plot.spiral(dat.sub)
ggsave('1000.png', height = 8, width = 8)

plot.spiral(dat, size = .1)
ggsave('100k.png', height = 12, width = 12)
