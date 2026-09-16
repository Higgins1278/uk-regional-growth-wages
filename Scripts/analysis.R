model <- lm(Income ~ Productivity, data = combined)
summary(model)

ggplot(combined, aes(x = Productivity, y = Income)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Regional Productivity vs Household Income (1998–2023)",
       x = "Productivity (UK = 100)",
       y = "GDHI per head (UK = 100)")