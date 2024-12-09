library(readr)
babies <- read_table("babies.csv")
View(babies)
babies_data = c(babies$gestation)
babies_data = mean(babies_data)
babies_data
babies_data = sd(babies_data)
babies_data
babies_data = length(babies$gestation)
babies_data
babies_data = qt(0.05/2, (n - 1))
babies_data = qt(0.05/2, (8 - 1))
babies_data
babies_data = -qt(0.05/2, (8 - 1))
babies_data
babies_data - 4*2/sqrt(4)
babies_data + 4*2/sqrt(4)
babies_data = c(babies$bwt)
babies_data = mean(babies_data, trim = 0.1)
babies_data
babies_data = length(babies$bwt)
babies_data
babies_data = qt(0.05/2, (6-1))
babies_data
babies_data = -qt(0.05/2, (6-1))
babies_data
babies_data - 3*2/sqrt(6)
babies_data + 3*2/sqrt(6)
babies_data = mean(babies_data, trim = 0.1)
babies_data
babies_data - 3*2/sqrt(6)
babies_data + 3*2/sqrt(6)
savehistory("~/Milestones/Samantha Rahman - Milestone 7 - Code to Submit.R")
