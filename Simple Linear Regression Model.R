library(tidyverse)
data()
head(cars,10)

cars %>%
  lm(dist ~ speed , data = .) %>%
  summary()

mod <- lm(dist ~ speed , data = cars)
mod
summary(mod)

attributes(mod)
mod$residuals
hist(mod$residuals)

new_speeds <- data.frame(speed = c(10,15,20))
predict(mod , new_speeds) %>% round(1)

