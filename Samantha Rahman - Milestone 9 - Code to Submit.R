library(readr)
babies <- read_table("babies.csv")
View(babies)
#Hypothesis 1
gestation_data <- na.omit(babies$gestation)
alpha <- 0.01
alpha
ht1 <- t.test(gestation_data, mu = 4.0, alternative = "two.sided")
df <- ht1$parameter
df
test_statistic <- ht1$statistic
test_statistic
p_value <- ht1$p.value
p_value
c_value <- qt(1 - alpha/2, df)
c_value
#Hypothesis 2
h0 <- na.omit(babies$gestation[babies$height <= 60])
h0
h0_mean <- mean(h0)
h0_mean
h1 <- na.omit(babies$gestation[babies$height > 60])
h1
h1_mean <- mean(h1)
h1_mean
alpha <- 0.01
alpha
ht2 <- t.test(h0, h1, alternative = "two.sided", var.equal = FALSE)
ht2
df <- ht2$parameter
df
test_statistic2 <- ht2$statistic
test_statistic2
p_value2 <- ht2$p.value
p_value2
c_value2 <- qt(1 - alpha/2, df)
c_value2
savehistory("~/Milestones/Samantha Rahman - Milestone 9 - Code to Submit.R")
