combined <- prod_long %>%
  inner_join(income_long, by = c("Region", "Year"))