library(fivethirtyeight)
library(dplyr)
library(tidyr)
library(stringr)
drinks_tidy <- drinks %>%
  pivot_longer(cols = ends_with("servings"), names_to = "type", values_to = "servings") %>%
  # Do text manipulation: only characters 1 thru 10. this trims off "_servings"
  mutate(type = str_sub(type, start=1, end=-10)) %>%
  arrange(country, type)

ggplot(drinks_tidy, aes(x = type, y = servings)) +
  geom_boxplot() +
  labs(x = "Alcohol type", y = "Number of servings")


