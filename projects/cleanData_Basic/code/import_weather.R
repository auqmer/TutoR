# set working directory
setwd("D:/My Documents/DataCamp/Data Cleaning in R")
# download data
if(!file.exists("data/weather.rds")){
  download.file("https://assets.datacamp.com/production/repositories/34/datasets/b3c1036d9a60a9dfe0f99051d2474a54f76055ea/weather.rds", "weather.rds")
  dateDownloaded <- date()}

# load data
weather <- readRDS('weather.rds')
