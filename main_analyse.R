library(tidyverse)
library(here)

tv_hours_tabil <- gss_cat %>% 
  filter(age <30) %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours = mean(tvhours, na.rm = T))

write_csv(tv_hours_tabil, here("tv_hours_by_marital.csv"))
