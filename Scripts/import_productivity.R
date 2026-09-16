library(readxl)
library(tidyverse)

prod <- read_excel("data/prodbyregaccessiblefinal.xlsx", sheet = "Table_2", skip = 5)

prod_clean <- prod[-c(1, 2), ]
names(prod_clean)[1] <- "Year"
prod_clean[-1] <- lapply(prod_clean[-1], as.numeric)
prod_clean$Year <- as.numeric(prod_clean$Year)

prod_long <- prod_clean %>%
  pivot_longer(cols = -Year, names_to = "Region", values_to = "Productivity")