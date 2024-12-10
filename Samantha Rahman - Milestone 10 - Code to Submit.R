library(readr)
babies <- read_table("babies.csv")
View(babies)
#Hypothesis 3
bwt_data <- na.omit(babies$bwt)
alpha <- 0.01
alpha
ht3 <- t.test(bwt_data, mu = 0, alternative = "two.sided")
ht3
df <- ht3$parameter
df
test_statistic3 <- ht3$statistic
test_statistic3
p_value3 <- ht3$p.value
p_value3
c_value3 <- qt(1 - 0.01/2, df)
c_value3
savehistory("~/Milestones/Samantha Rahman - Milestone 10 - Code to Submit.R")
