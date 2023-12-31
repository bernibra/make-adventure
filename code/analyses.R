library(dplyr)
source("./code/utility.R")

data <- readRDS("./data/processed/data.rds")
correlation <- cor(data$films, data$deaths,  method = "pearson")

make_time(4, "Calculate correlation")

saveRDS(object = correlation, file = "./data/processed/correlation.rds")
