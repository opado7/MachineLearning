# 잔차 구하기
x <- 10 * c(138, 312, 352, 113, 103, 172, 392, 149, 186, 343, 200, 366, 250, 122, 139) # 집 면적
y <- c(76, 216, 238, 69, 50, 119, 282, 81, 132, 228, 145, 251, 170, 71, 29)# 집 가격

house <- data.frame(x,y)
plot(house, pch=16, cex = 2)
reg1 <- lm(y ~ x, data = house) # 회귀직선
abline(reg1, lwd=2,col="red")

# 잔차 구하기
house$잔차 <- reg1$residuals
house$예측값 <- reg1$fitted.values
house

sum(house$잔차) # 잔차의 합 = 0
