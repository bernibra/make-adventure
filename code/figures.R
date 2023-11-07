library(ggplot2)
library(dplyr)
source("./code/utility.R")

data <- readRDS("./data/processed/data.rds")
correlation <- readRDS("./data/processed/correlation.rds") 

dColor <- "#69b3a2"
fColor <- "#bf812d"
coef <- 40

p <- data %>% ggplot(aes(x=year)) +
  geom_line( aes(y=deaths), size=1.5, color=dColor) +
  geom_line( aes(y=films*10 + 80), size=1.5, color=fColor) +
  scale_y_continuous(name = "Swimming pool drownings", limits = c(80, 140),
                     sec.axis = dup_axis(name="Nicolas Cage films", breaks = c(80, 100, 120, 140), labels = c(0,2,4,6))
  ) +
  ggtitle(label = "Drowned by falling into a pool vs Nicolas Cage movies", subtitle = paste0("Presents a correlation of: ", round(correlation, 2))) +
  theme_bw() +
  theme(
    text = element_text(size = 12),
    axis.title.y = element_text(color = dColor, size=12),
    axis.text.y = element_text(color = dColor),
    axis.title.y.right = element_text(color = fColor, size=12),
    axis.text.y.right = element_text(color = fColor),
  )

make_time(4, "Generate figures")

ggsave(plot = p, filename = "./results/figure.png", device = "png", units = "cm", width = 16, height=10)
