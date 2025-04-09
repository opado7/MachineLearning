x <- 10 * c(138, 312, 352, 113, 103, 172, 392, 149, 186, 343, 200, 366, 250, 122, 139) # 집 면적
y <- c(76, 216, 238, 69, 50, 119, 282, 81, 132, 228, 145, 251, 170, 71, 29)# 집 가격
house <- data.frame(x,y)
lm(y ~ x, data = house)
plot(house, pch=16, cex = 2)

reg <- lm(y ~ x, data = house)
abline(reg, lwd=2,col="red")
abline(v=2227, lty=2)
predict(reg, newdata = data.frame(x=2227))
predict(reg, newdata = data.frame(x=c(2227, 3000)))
