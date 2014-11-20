library(frbs)                       # Importando biblioteca

rm(list=ls(all=TRUE))               # Comando que limpa todos os objetos antigos

traffic.data.numlinvar.in <- 3      # Quantidade de antecedentes

traffic.data.numlinvar.out <- 1     # Quantidade de consequentes

traffic.data.length <- 120          # Tamanho da base de dados

traffic.data <- matrix(,traffic.data.length, traffic.data.numlinvar.out + traffic.data.numlinvar.in )

#                FLUXO | QTD_PED |SIZE_F|TEMPO_VERDE

traffic.data[1,] 	 <- 	c( 	0.02,   0.0, 	0.0, 	1000 	)
traffic.data[2,] 	 <- 	c( 	0.5, 	0.0, 	0.0, 	1000 	)
traffic.data[3,] 	 <- 	c( 	1.0, 	0.0, 	0.0, 	1000 	)
traffic.data[4,] 	 <- 	c( 	1.5, 	0.0, 	0.0, 	1000 	)
traffic.data[5,] 	 <- 	c( 	2.0, 	0.0, 	0.0, 	1000 	)
traffic.data[6,] 	 <- 	c( 	2.5, 	0.0, 	0.0, 	1000 	)
traffic.data[7,] 	 <- 	c( 	3.0, 	0.0, 	0.0, 	1000 	)
traffic.data[8,] 	 <- 	c( 	3.5, 	0.0, 	0.0, 	1000 	)
traffic.data[9,] 	 <- 	c( 	4.0, 	0.0, 	0.0, 	1000 	)
traffic.data[10,]	 <- 	c( 	4.5, 	0.0, 	0.0, 	1000 	)
traffic.data[11,]	 <- 	c( 	5.0, 	0.0, 	0.0, 	1000 	)
traffic.data[12,]	 <- 	c( 	5.5, 	0.0, 	0.0, 	1000 	)
traffic.data[13,]	 <- 	c( 	6.0, 	0.0, 	0.0, 	1000 	)
traffic.data[14,]	 <- 	c( 	6.5, 	0.0, 	0.0, 	1000 	)
traffic.data[15,]	 <- 	c( 	7.0, 	0.0, 	0.0, 	1000 	)
traffic.data[16,]	 <- 	c( 	7.5, 	0.0, 	0.0, 	1000 	)
traffic.data[17,]	 <- 	c( 	0.0, 	1.0, 	0.0, 	0 	)
traffic.data[18,]	 <- 	c( 	0.0, 	6.0, 	0.0, 	0 	)
traffic.data[19,]	 <- 	c( 	0.0, 	11.0, 	0.0, 	0	)
traffic.data[20,]	 <- 	c( 	0.0, 	16.0, 	0.0, 	0	)
traffic.data[21,]	 <- 	c( 	0.0, 	21.0, 	0.0, 	0	)
traffic.data[22,]	 <- 	c( 	0.0, 	26.0, 	0.0, 	0	)
traffic.data[23,]	 <- 	c( 	0.0, 	31.0, 	0.0, 	0	)
traffic.data[24,]	 <- 	c( 	0.0, 	36.0, 	0.0, 	0	)
traffic.data[25,]	 <- 	c( 	0.0, 	41.0, 	0.0, 	0	)
traffic.data[26,]	 <- 	c( 	0.0, 	46.0, 	0.0, 	0	)
traffic.data[27,]	 <- 	c( 	0.0, 	51.0, 	0.0, 	0	)
traffic.data[28,]	 <- 	c( 	0.0, 	56.0, 	0.0, 	0	)
traffic.data[29,]	 <- 	c( 	0.0, 	61.0, 	0.0, 	0	)
traffic.data[30,]	 <- 	c( 	0.0, 	66.0, 	0.0, 	0	)
traffic.data[31,]	 <- 	c( 	0.0, 	71.0, 	0.0, 	0	)
traffic.data[32,]	 <- 	c( 	0.0, 	76.0, 	0.0, 	0	)
traffic.data[33,]	 <- 	c( 	0.0, 	81.0, 	0.0, 	0	)
traffic.data[34,]	 <- 	c( 	0.0, 	86.0, 	0.0, 	0	)
traffic.data[35,]	 <- 	c( 	0.0, 	91.0, 	0.0, 	0	)
traffic.data[36,]	 <- 	c( 	0.0, 	96.0, 	0.0, 	0	)
traffic.data[37,]	 <- 	c( 	0.0, 	101.0, 	0.0, 	0 	)
traffic.data[38,]	 <- 	c( 	0.0,    1000.0,	0.0, 	0	)
traffic.data[39,]	 <- 	c( 	0.0, 	0.0, 	1.0, 	0 	)
traffic.data[40,]	 <- 	c( 	0.0, 	0.0, 	6.0, 	0 	)
traffic.data[41,]	 <- 	c( 	0.0, 	0.0, 	11.0, 	0 	)
traffic.data[42,]	 <- 	c( 	0.0, 	0.0, 	16.0, 	0 	)
traffic.data[43,]	 <- 	c( 	0.0, 	0.0, 	21.0, 	0 	)
traffic.data[44,]	 <- 	c( 	0.0, 	0.0, 	26.0, 	0 	)
traffic.data[45,]	 <- 	c( 	0.0, 	0.0, 	31.0, 	0 	)
traffic.data[46,]	 <- 	c( 	0.0, 	0.0, 	36.0, 	0 	)
traffic.data[47,]	 <- 	c( 	0.0, 	0.0, 	41.0, 	0 	)
traffic.data[48,]	 <- 	c( 	0.0, 	0.0, 	46.0, 	0 	)
traffic.data[49,]	 <- 	c( 	0.0, 	0.0, 	51.0, 	0 	)
traffic.data[50,]	 <- 	c( 	0.0, 	0.0, 	56.0, 	0 	)
traffic.data[51,]	 <- 	c( 	0.0, 	0.0, 	61.0, 	0 	)
traffic.data[52,]	 <- 	c( 	0.0, 	0.0, 	66.0, 	0 	)
traffic.data[53,]	 <- 	c( 	0.0, 	0.0, 	71.0, 	0 	)
traffic.data[54,]	 <- 	c( 	0.0, 	0.0, 	76.0, 	0 	)
traffic.data[55,]	 <- 	c( 	0.0, 	0.0, 	81.0, 	0 	)
traffic.data[56,]	 <- 	c( 	0.0, 	0.0, 	86.0, 	0 	)
traffic.data[57,]	 <- 	c( 	0.0, 	0.0, 	91.0, 	0 	)
traffic.data[58,]	 <- 	c( 	0.0, 	0.0, 	96.0, 	0 	)
traffic.data[59,]	 <- 	c( 	0.0, 	0.0, 	1000, 	0  	)
traffic.data[60,]	 <- 	c( 	0.0, 	0.0, 	0.0, 	0  	)
traffic.data[61,]	 <- 	c( 	0.5, 	1.0, 	0.0, 	70  	)
traffic.data[62,]	 <- 	c( 	0.5, 	5.0, 	0.0, 	65  	)
traffic.data[63,]	 <- 	c( 	0.5, 	10.0, 	0.0, 	60 	)
traffic.data[64,]	 <- 	c( 	0.5, 	15.0, 	0.0, 	55 	)
traffic.data[65,]	 <- 	c( 	0.5, 	20.0, 	0.0, 	50 	)
traffic.data[66,]	 <- 	c( 	0.5, 	25.0, 	0.0, 	50 	)
traffic.data[67,]	 <- 	c( 	0.5, 	30.0, 	0.0, 	50 	)
traffic.data[68,]	 <- 	c( 	0.5, 	35.0, 	0.0, 	50 	)
traffic.data[69,]	 <- 	c( 	0.5, 	40.0, 	0.0, 	50 	)
traffic.data[70,]	 <- 	c( 	0.5, 	45.0, 	0.0, 	50 	)
traffic.data[71,]	 <- 	c( 	0.5, 	50.0, 	0.0, 	50 	)
traffic.data[72,]	 <- 	c( 	0.5, 	55.0, 	0.0, 	50 	)
traffic.data[73,]	 <- 	c( 	0.5, 	60.0, 	0.0, 	50 	)
traffic.data[74,]	 <- 	c( 	0.5, 	65.0, 	0.0, 	50 	)
traffic.data[75,]	 <- 	c( 	0.5, 	70.0, 	0.0, 	50 	)
traffic.data[76,]	 <- 	c( 	0.5, 	75.0, 	0.0, 	50 	)
traffic.data[77,]	 <- 	c( 	0.5, 	80.0, 	0.0, 	50 	)
traffic.data[78,]	 <- 	c( 	0.5, 	85.0, 	0.0, 	50 	)
traffic.data[79,]	 <- 	c( 	0.5, 	90.0, 	0.0, 	50 	)
traffic.data[80,]	 <- 	c( 	0.5, 	95.0, 	0.0, 	50 	)
traffic.data[81,]	 <- 	c( 	0.5, 	100, 	0.0, 	50 	)
traffic.data[82,]	 <- 	c( 	0.5, 	0.0, 	1.0, 	115  	)
traffic.data[83,]	 <- 	c( 	0.5, 	0.0, 	5.0, 	83   	)
traffic.data[84,]	 <- 	c( 	0.5, 	0.0, 	10.0, 	60 	)
traffic.data[85,]	 <- 	c( 	0.5, 	0.0, 	15.0, 	50 	)
traffic.data[86,]	 <- 	c( 	0.5, 	0.0, 	20.0, 	50 	)
traffic.data[87,]	 <- 	c( 	0.5, 	0.0, 	25.0, 	50 	)
traffic.data[88,]	 <- 	c( 	0.5, 	0.0, 	30.0, 	50 	)
traffic.data[89,]	 <- 	c( 	0.5, 	0.0, 	35.0, 	50 	)
traffic.data[90,]	 <- 	c( 	0.5, 	0.0, 	40.0, 	50 	)
traffic.data[91,]	 <- 	c( 	0.5, 	0.0, 	45.0, 	50 	)
traffic.data[92,]	 <- 	c( 	0.5, 	0.0, 	50.0, 	50 	)
traffic.data[93,]	 <- 	c( 	0.5, 	0.0, 	55.0, 	50 	)
traffic.data[94,]	 <- 	c( 	0.5, 	0.0, 	60.0, 	50 	)
traffic.data[95,]	 <- 	c( 	0.5, 	0.0, 	65.0, 	50 	)
traffic.data[96,]	 <- 	c( 	0.5, 	0.0, 	70.0, 	50 	)
traffic.data[97,]	 <- 	c( 	0.5, 	0.0, 	75.0, 	50 	)
traffic.data[98,]	 <- 	c( 	0.5, 	0.0, 	80.0, 	50 	)
traffic.data[99,]	 <- 	c( 	0.5, 	0.0, 	85.0, 	50 	)
traffic.data[100,] 	 <- 	c( 	0.02, 	1.0, 	0.0, 	10 	)
traffic.data[101,] 	 <- 	c( 	0.1, 	1.0, 	0.0, 	15  	)
traffic.data[102,] 	 <- 	c( 	0.2, 	1.0, 	0.0, 	20  	)
traffic.data[103,] 	 <- 	c( 	0.4, 	1.0, 	0.0, 	56  	)
traffic.data[104,] 	 <- 	c( 	0.7, 	1.0, 	0.0, 	98  	)
traffic.data[105,] 	 <- 	c( 	1.0, 	1.0, 	0.0, 	150 	)
traffic.data[106,] 	 <- 	c( 	2.0, 	1.0, 	0.0, 	150 	)
traffic.data[107,] 	 <- 	c( 	3.0, 	1.0, 	0.0, 	150 	)
traffic.data[108,] 	 <- 	c( 	4.0, 	1.0, 	0.0, 	150 	)
traffic.data[109,] 	 <- 	c( 	5.0, 	1.0, 	0.0, 	150 	)
traffic.data[110,] 	 <- 	c( 	6.0, 	1.0, 	0.0, 	150 	)
traffic.data[111,] 	 <- 	c( 	7.0, 	1.0, 	0.0, 	150 	)
traffic.data[112,] 	 <- 	c( 	8.0, 	1.0, 	0.0, 	150 	)
traffic.data[113,] 	 <- 	c( 	1.0, 	5.0, 	0.0, 	100 	)
traffic.data[114,] 	 <- 	c( 	2.0, 	5.0, 	0.0, 	100 	)
traffic.data[115,] 	 <- 	c( 	3.0, 	5.0, 	0.0, 	100 	)
traffic.data[116,] 	 <- 	c( 	4.0, 	5.0, 	0.0, 	100 	)
traffic.data[117,] 	 <- 	c( 	5.0, 	5.0, 	0.0, 	100 	)
traffic.data[118,] 	 <- 	c( 	6.0, 	5.0, 	0.0, 	100 	)
traffic.data[119,] 	 <- 	c( 	7.0, 	5.0, 	0.0, 	100 	)
traffic.data[120,] 	 <- 	c( 	8.0, 	5.0, 	0.0, 	100 	)



traffic.shuffled <- traffic.data[sample(nrow(traffic.data)),]

traffic.shuffled <- traffic.shuffled / 1000

train <- round( (66/100)*nrow(traffic.shuffled))        # Método HoldOut -> 66% para treinamento e 33% para teste
test <- (train+1)

traffic.train <- traffic.shuffled[1:train,]
traffic.tst <- traffic.shuffled[test:nrow(traffic.shuffled),1:3]
traffic.class <- matrix(traffic.shuffled[test:nrow(traffic.shuffled),4], ncol = 1)

traffic.data.range <- apply(traffic.shuffled[,], 2, range)

## Set the method and its parameters. In this case we use FRBCS.W algorithm
method.type <- "WM"
control <- list(num.labels = 5, max.iter = 10, step.size = 0.01, type.mf = "GAUSSIAN", type.tnorm = "MIN", type.snorm = "MAX", type.implication.func = "ZADEH", name = "Traffic")

## Learning step: Generate fuzzy model
object.cls <- frbs.learn(traffic.train, traffic.data.range, method.type, control)

### Predicting step: Predict newdata
res.test <- predict(object.cls, traffic.tst)

### Display the FRBS model
#summary(object.cls)
#
### Plot the membership functions
#plotMF(object.cls)

print("The result: ")

print(res.test)

## Error calculation
y.pred <- res.test
y.real <- traffic.class 
bench <- cbind(y.pred, y.real)
colnames(bench) <- c("pred. val.", "real. val.")
print("Comparison WM Vs Real Value on Mackey Glass Data Set")
print(bench)
residuals <- (y.real - y.pred)
MSE <- mean(residuals^2)
RMSE <- sqrt(mean(residuals^2))
SMAPE <- mean(abs(residuals)/(abs(y.real) + abs(y.pred))/2)*100
err <- c(MSE, RMSE, SMAPE)
names(err) <- c("MSE", "RMSE", "SMAPE")
print("WM: Error Measurement: ")
print(err) 





