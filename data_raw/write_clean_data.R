library(tidyverse)
library(usethis)
library(devtools)
library(MMWRweek)

nndss_water <- read_csv("data_raw/health_state_data.csv")

state_nndss_data <- nndss_water %>%
  mutate(pathogen = case_when(
    pathogen == 'stec' ~ 'ecoli_infection',
    pathogen == 'lgn' ~ 'legionnaires_disease',
    pathogen == 'crypto' ~ 'cryptosporidiosis',
    pathogen == 'salm' ~ 'salmonellosis',
    pathogen == 'ecoli' ~ 'ecoli_infection',
    pathogen == 'shig' ~ 'shigellosis',
    pathogen == 'grd' ~ 'giardiasis'
  )) %>%
  mutate(date = MMWRweek2Date(year, week)) %>%
  rename(
    annual_cumulative_cases = num_cases,
    current_week_cases = current_week
  )

use_data(state_nndss_data, overwrite = TRUE)

