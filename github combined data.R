library(dplyr)
library(stringr)
library(testthat)
library(jsonlite)

national_park_name <- read_csv("info 201/national_parks.csv")
national_ana <- fromJSON("https://query.data.world/s/mfrcsythc5dh53b4dahsm2a37j6rjn?dws=00000") # ana- analysis
View(national_ana)
head(national_park_name)
colnames(national_park_name)

head(national_ana)
colnames(national_ana)

colnames(national_park_name)[colnames(national_park_name) == "Acadia"] <- "title"
View(national_park_name)

combined.dy <- merge(national_park_name, national_ana, by = "title")
