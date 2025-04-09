X <- c(36.5, 28.0, 42.9, 52.0, 51.5, 53.8, 25.4, 37.2, 50.9, 29.2) # 광고비(억 원)
Y <- c(14, 9, 15, 20, 21, 25, 9, 13, 20, 10) # 신규고객(100명)

plot(X, Y, pch=16, cex = 2, xlab = "광고비(억 원)", ylab = "신규고객(100명)", col = "yellow")
abline(lm(Y ~ X), lwd=2, col="red") # 회귀직선

lm_model <- lm(X ~ Y)

predict(lm_model, newdata = data.frame(Y = 17)) # 신규고객 1700명 일때 광고비 지출
abline(h=17, lty=2) # 신규고객 1700명 일때 광고비 지출

abline(v = predict(lm_model, newdata = data.frame(Y = 17)), lty=2) # 신규고객 1700명 일때 광고비 지출