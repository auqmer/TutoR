#************************************************************************
# Title: clean_weather
# Author: William Murrah
# Description: Clean weather data from:
# https://assets.datacamp.com/production/repositories/34/datasets/
# b3c1036d9a60a9dfe0f99051d2474a54f76055ea/weather.rds
# Created: Wednesday, 04 November 2020
# R version: R version 4.0.3 (2020-10-10)
# Project(working) directory: /Users/wmm0017/Projects/Courses/ERMA7300R/data
#************************************************************************
library(tidyr)
weather <- readRDS("data/weather.rds")

str(weather)
names(weather)[names(weather) == "X"] <- "id"

timevar_nms <- paste("X", 1:31, sep = "")

weatherlong <- gather(data = weather, key = day, value = value, X1:X31, 
                      na.rm = TRUE)

weatherlong <- spread(data = weatherlong[ ,-1], key = "measure", value = "value")

weatherlong <- reshape(data = weather, 
                       varying = timevar_nms, 
                       v.names = "day", 
                       timevar = "value", 
                       direction = "long")

weatherlong