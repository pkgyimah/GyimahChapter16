# GyimahChapter16
Historical Flagstaff Weather data 

## To install the R package 
```r
##install.packages('devtools')
devtools::install_github('https://github.com/pkgyimah/GyimahChapter16') 
```

## Getting Started

```r
library(GyimahChapter16)
library(ggplot2)
library(lubridate)
library(tidyverse
Flagstaff_Weather.2 <- Flagstaff_Weather %>% mutate(Year =year(DATE), Day =day(DATE), Month =month(DATE))

Flagstaff_Weather.2 %>% group_by(Year) %>%
  summarise(Year.SNOW =mean(SNOWFALL) , .groups='drop') %>%
  ggplot(aes(x=Year, y=Year.SNOW)) +geom_line() +
labs(x='Yearly', y='SNOW', title = 'Average Snowfall per year')
```
