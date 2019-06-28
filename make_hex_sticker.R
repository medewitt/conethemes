library(tidyverse)
library(urbnthemes)
library(hexSticker)

set_urbn_defaults(style = "print")

data <- tibble(x = seq(-20,15, by = .1)) %>%
  mutate(y = 3*cos(pi*x*1)+1.5*x)
(
conethemes <-data %>%
  ggplot(aes(x, y)) +
  geom_line(color = "#9d9d9d", shape = 15, size = 1) +
  geom_point(color = "#9d9d9d", shape = 15, size = 1) +
  annotate("rect", xmin = 3.5, xmax = 7.5, ymin = 2.5, ymax = 5.5, fill = "#f5f5f5") +
  geom_text(aes(3.5, 4.7, label = "Moses Cone"),
            size = 20,
            color = "#00a2b2") +
  geom_text(aes(7, 2.5, label = "themes"),
            size = 10) +
  scale_x_continuous(limits = c(-15, 15)) +
  scale_y_continuous(limits = c(-15, 15)) +
  theme(axis.line.x = element_blank(),
        axis.ticks.x = element_blank(),
        axis.text = element_blank(),
        axis.title = element_blank(),
        panel.grid = element_blank()))

sticker(conethemes,
        package = "",
        filename = "man/figures/hexsticker.png",
        p_size = 8,
        s_x = .85,           # subplot position
        s_y = .85,           # subplot position
        s_width = 2,          # subplot width
        s_height = 2,         # subplot height
        p_color = "#00a2b2",
        h_fill = "#f5f5f5",
        h_size = 2,           # no border
        h_color = "#00a2b2"
)
