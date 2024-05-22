data(mtcars)
head(mtcars)
multiple <- lm(mpg ~ disp+hp+wt , data = mtcars)
multiple
print(summary(multiple))
print(fitted(multiple))
print(predict(multiple))
new <- data.frame(disp = c(200,300,400) , hp = c(100,200,300) , wt = c(3,3.5,4))
predict(multiple , newdata = new)
anova(multiple)
confint(multiple , conf.level = 0.95)
predict(multiple , int = 'c')
e = resid(multiple)
e