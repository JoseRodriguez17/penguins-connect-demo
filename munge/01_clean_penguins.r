# munge/01_clean_penguins.R
# Goal: create a clean analysis-ready table without NAs

penguins_clean <- penguins %>% 
  filter(complete.cases(.)) %>% 
  mutate(
    body_mass_kg = body_mass_g / 1000
  ) %>% 
  select(species, island, sex, bill_length_mm, bill_depth_mm, 
         flipper_length_mm, body_mass_g, body_mass_kg)
