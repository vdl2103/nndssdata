library(tidyverse)
library(usethis)
library(devtools)

nndss_water <- read_csv("data_raw/health_state_data.csv")

use_data(nndss_water, overwrite = TRUE)
