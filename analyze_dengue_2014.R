ghp_r13459013
install.packages("dplyr")
setwd("/Users/moure/Documents/Fac cours/AgrobioMed/Master 1/Taïwan/Principle and application in health research methods/Assignment /Dengue/ghp_R1345901/analyze_dengue_2014.R3")
if (!file.exists("dengue_assignment.csv"))
  df <- read.csv("dengue_assignment.csv")
total_cases_2014 <- df %>%
  filter(year == 2014) %>%
  summarise(total = sum(case_number, na.rm = TRUE)) %>%
  pull(total)
cat("Nombre total de cas de dengue en 2014 :", total_cases_2014, "\n")