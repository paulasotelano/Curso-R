install.packages("tidyr")
install.packages("dplyr")
library("tidyr")
library("dplyr")
gapminder <-read.csv("Data/gapminder-FiveYearData.csv")
str(gapminder)
library(ggplot2)
library(GGally)
install.packages("GGally")
library(GGally)
ggpairs(gapminder, columns = c(3, 5, 6), colour = "continent")
gap_wide <- read.csv("http://bit.ly/gap_wide", stringsAsFactors = FALSE)
gap_wide
str(gap_wide)
head(gap_wide)
view(gap_wide)
View(gap_wide)
gap_long <- gap_wide %>%
  gather(obstype_year,obs_values, starts_with('pop'),
         starts_with('lifeExp'), starts_with('gdpPercap'))
str(gap_long)
gap_long <- gap_wide %>% gather(obstype_year,obs_values,-continent,-country)
str(gap_long)
gap_long <- gap_long %>% 
  separate(obstype_year,
           into = c('obs_type','year'), sep = "_")
gap_long$year <- as.integer(gap_long$year)
head(gap_long)
tail(gap_long)
unique(gap_long$obs_type)
ej2
gap_aov <- gap_long %>% 
  group_by(obs_type) %>% 
  summerize(aov(obs_values ~ continent, data = .))
library(plyr)
gap_aov <- gap_long %>% 
  group_by(obstype) %>% 
  do(aov = aov(obs_value ~ continent, data = . ))
gap_aov_plyr <- dlply(gap_long, .(obstype), function(x) 
  aov(obs_value ~ continent * year, data = x))#para hacer el anova ver Slack
head(gapminder)
gap_temp <- gap_long %>% 
  unite(var_ID, continent, country, sep = "_")
gap_ridiculamente_ancho <-gap_long %>% 
  unite(var_names, country, obs_type, year, sep = "_") %>% 
  spread(var_names, obs_values)
gap_ridiculamente_ancho
dim(gap_ridiculamente_ancho)
con separate()

gap_wide_betterID <- separate(gap_wide_new, ID_var, 
                              c("continent","country"), sep = "_")
gap_wide_betterID <- gap_long %>%
  unite(ID_var, continent, country, sep = "_") %>%
  unite(var_names, obs_type, year, sep = "_") %>%
  spread(var_names, obs_values) %>%
  separate(ID_var, c("continent", "country"), sep = "_")
