source("./code/utility.R")
library(readr)
library(dplyr)

cage <- read_csv("./data/raw/Cage.csv")
drowning <- read_csv("./data/raw/Drowning.csv")

data <- cage %>% left_join(drowning, by = "year")

make_time(4, "processing data")

saveRDS(object = data, file = "./data/processed/data.rds")
