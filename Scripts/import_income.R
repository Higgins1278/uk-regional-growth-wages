income <- read_excel("data/regionalgrossdisposablehouseholdincomeallitlregions2024.xlsx", sheet = "Table 4", skip = 3)

income_itl1 <- income %>%
  filter(ITL == "ITL1")

income_long <- income_itl1 %>%
  select(-ITL, -`ITL code`) %>%
  pivot_longer(cols = -`Region name`, names_to = "Year", values_to = "Income") %>%
  rename(Region = `Region name`)

income_long$Year <- as.numeric(income_long$Year)