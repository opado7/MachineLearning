x <- 1:10
y <- c(3, 3, 3, 6, 6, 9, 9, 9, 10, 11)

df <- data.frame(x, y)
lm_model <- lm(y ~ x)

predict(lm_model, newdata = data.frame(x = 11))
