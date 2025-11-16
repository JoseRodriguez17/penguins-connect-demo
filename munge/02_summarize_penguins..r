
# Takes the penguins_clean data (from your previous step).
# 
# Calculates, for each species, the mean and standard deviation of body_mass_kg.
# 
# Saves the result into a new object called penguins_summary.
# 
# Use group_by() and summarise() properly.

penguins_summary <- penguins_clean %>% 
  group_by(species) %>% 
  summarize(
    body_mass_kg_mean = mean(body_mass_kg),
    body_mass_kg_sd = sd(body_mass_kg)
  )
