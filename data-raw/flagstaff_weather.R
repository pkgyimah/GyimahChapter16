library(tidyverse)

# Read in the data.  Do some cleaning/verification
Flagstaff_Weather <- read.csv('data-raw/Pulliam_Airport_Weather_Station.csv') %>%
  select(DATE,PRCP,SNOW,TMAX,TMIN) %>% drop_na()
Flagstaff_Weather <-  Flagstaff_Weather %>% mutate(DATE=ymd(Flagstaff_Weather$DATE))

## Rename the SNOW column as SNOWFALL
Flagstaff_Weather <- Flagstaff_Weather%>%
  rename(`SNOWFALL`=`SNOW`)

# Save the data frame to the data/ directory as Flagstaff_Weather.rda
usethis::use_data(Flagstaff_Weather,overwrite = TRUE)
