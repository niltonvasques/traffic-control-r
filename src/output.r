
## Display the FRBS model
summary(object.cls)

## Plot the membership functions
#plotMF(object.cls)

traffic.class.denorm <- denorm.data(traffic.class, matrix(traffic.data.range.desnorm[,4],ncol=1,byrow = TRUE), min.scale = 0, max.scale = 1)
res.test.denorm <- denorm.data(res.test, matrix(traffic.data.range.desnorm[,4],ncol=1,byrow = TRUE), min.scale = 0, max.scale = 1)
res.test.denorm <- round(res.test.denorm)

print("Comparando os valores estimados com os reais")
print(cbind(res.test.denorm, traffic.class.denorm))

## Calculo do erro

y.pred <- res.test
y.real <- traffic.class 
bench <- cbind(y.pred, y.real)
colnames(bench) <- c("pred. val.", "real. val.")
residuals <- (y.real - y.pred)
MSE <- mean(residuals^2)
RMSE <- sqrt(mean(residuals^2))
SMAPE <- mean(abs(residuals)/(abs(y.real) + abs(y.pred))/2)*100
err <- c(MSE, RMSE, SMAPE)
names(err) <- c("MSE", "RMSE", "SMAPE")
print("WM: Avaliacao do erro: ")
print(err) 


result.test <- cbind(traffic.class , res.test)
x2 <- seq(from = 1, to = nrow(result.test))
plot(x2, result.test[, 1], col="red", main = "Em vermelho: Os resultados reais. Em azul: os resultados preditos", type = "l", ylab = "MG")
lines(x2, result.test[, 2], col="blue", type = "l")

par(op)