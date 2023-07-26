#0.Load necessary packages
library(tidyverse)
library(usethis)
library(devtools)
library(MMWRweek)

#1a.Tidy weekly NNDSS state data
weekly_nndss_data_state <- read_csv("data_raw/health_state_data.csv")

state_nndss_data <- weekly_nndss_data_state %>%
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

#1b.Create .rda of weekly state NNDSS data
use_data(state_nndss_data, overwrite = TRUE)

#2a.Tidy weekly NNDSS region data
weekly_nndss_data_region <- read_csv("data_raw/health_region_data.csv")

region_nndss_data <- weekly_nndss_data_region %>%
  mutate(pathogen = case_when(
    pathogen == 'stec' ~ 'ecoli_infection',
    pathogen == 'lgn' ~ 'legionnaires_disease',
    pathogen == 'crypto' ~ 'cryptosporidiosis',
    pathogen == 'salm' ~ 'salmonellosis',
    pathogen == 'ecoli' ~ 'ecoli_infection',
    pathogen == 'shig' ~ 'shigellosis',
    pathogen == 'grd' ~ 'giardiasis'
  )) %>%
  mutate(state = case_when(
    state == 'US' ~ 'usa',
    state == 'NE' ~ 'new_england',
    state == 'MIDATL' ~ 'mid_atlantic',
    state == 'ENC' ~ 'east_north_central',
    state == 'WNC' ~ 'west_north_central',
    state == 'SATL' ~ 'south_atlantic',
    state == 'ESC' ~ 'east_south_central',
    state == 'WSC' ~ 'west_south_central',
    state == 'MTN' ~ 'mountain',
    state == 'PAC' ~ 'pacific'
  )) %>%
mutate(date = MMWRweek2Date(year, week)) %>%
  rename(
    annual_cumulative_cases = num_cases,
    current_week_cases = current_week
  )

#2b.Create .rda of weekly region NNDSS data
use_data(region_nndss_data, overwrite = TRUE)

