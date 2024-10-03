#Codigo para problema 2

mis_dades <- iris
mis_dades

x <- mis_dades$Petal.Length
x

y <- mis_dades$Sepal.Length
y

plot(x,y)

x_bar <- mean(x)
x_bar

y_bar <- mean(y)
y_bar

m <- sum((x-x_bar)*(y-y_bar))/sum((x-x_bar)^2)
m

b <- y_bar - m*x_bar
b

m*1.5+b

#perdiccio sobre les observacions
y_pred <- m*x+b

plot(x, y)
lines(x, y_pred)

R_sq <- sum((y_pred-y_bar)^2)/sum((y-y_bar)^2)
R_sq

######Usando las funciones de R
#~ == ALT GR + 4 + ESPAI

mod <- lm(y~x)
mod

summary(mod)

cor.test(x,y)
