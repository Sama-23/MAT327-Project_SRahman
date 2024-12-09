library(readr)
babies <- read_table("babies.csv")
View(babies)
data_babies <- lm(babies$height ~ babies$weight, data = babies)
data_babies
plot(babies$height, babies$weight, main = "Babies Height and Weight", xlab = "Height", ylab = "Weight")
abline(data_babies, col = "green")
coef(data_babies)
intercept <- coef(data_babies)
intercept
slope <- coef(data_babies)
slope
intercept <- coef(data_babies)[1]
intercept
slope <- coef(data_babies)[2]
slope
predictions <- predict(data_babies)
predictions
residuals <- resid(data_babies)
residuals
hist(resid(data_babies))
plot(babies$weight, resid(data_babies))
savehistory("~/Milestones/Samantha Rahman - Milestone 8 - Code to Submit.R")
