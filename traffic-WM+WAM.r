source("traffic-base.r")

traffic.shuffled.desnormalizado <- traffic.data[sample(nrow(traffic.data)),]

# Não tinha isso de baixo, precisei fazer para encontrar o range.data e usar na função de normalização própria do sistema.
traffic.data.range.desnorm <- apply(traffic.shuffled.desnormalizado[,], 2, range)

# Normalização

# traffic.shuffled <- (traffic.shuffled.desnormalizado/150)
traffic.shuffled <- norm.data(traffic.shuffled.desnormalizado, traffic.data.range.desnorm, min.scale = 0, max.scale = 1)

# Método HoldOut -> 66% para treinamento e 33% para teste

train <- round( (66/100)*nrow(traffic.shuffled) )        
test <- (train+1)

traffic.train <- traffic.shuffled[1:train,]
traffic.tst <- traffic.shuffled[test:nrow(traffic.shuffled),1:3]
traffic.class <- matrix(traffic.shuffled[test:nrow(traffic.shuffled),4], ncol = 1)
 
traffic.data.range <- apply(traffic.shuffled[,], 2, range)

## Set the method and its parameters. In this case we use WM algorithm
method.type <- "WM"
control <- list(num.labels = 5, type.mf = "TRAPEZOID", type.defuz = "WAM", type.tnorm = "MIN", type.snorm = "MAX", type.implication.func = "ZADEH", name = "Traffic")

## Learning step: Generate fuzzy model
object.cls <- frbs.learn(traffic.train, traffic.data.range, method.type, control)


### Predicting step: Predict newdata
res.test <- predict(object.cls, traffic.tst)

## Ajustando ao nosso problema

object.cls$colnames.var = c("Fluxo", "Qtd_pedestres", "Tamanho_fila", "Tempo_verde")

object.cls$rule[,2] <- c("Fluxo")

for (i in 1:length(object.cls$rule[,4])) {if (object.cls$rule[,4][i] == "very.small") object.cls$rule[,4][i] = "Muito Baixo"}
for (i in 1:length(object.cls$rule[,4])) {if (object.cls$rule[,4][i] == "small") object.cls$rule[,4][i] = "Baixo"}
for (i in 1:length(object.cls$rule[,4])) {if (object.cls$rule[,4][i] == "medium") object.cls$rule[,4][i] = "Medio"}
for (i in 1:length(object.cls$rule[,4])) {if (object.cls$rule[,4][i] == "large") object.cls$rule[,4][i] = "Intenso"}
for (i in 1:length(object.cls$rule[,4])) {if (object.cls$rule[,4][i] == "very.large") object.cls$rule[,4][i] = "Muito Intenso"}

object.cls$rule[,6] <- c("Qtd_pedestres")

for (i in 1:length(object.cls$rule[,8])) {if (object.cls$rule[,8][i] == "very.small") object.cls$rule[,8][i] = "Muito Pouca"}
for (i in 1:length(object.cls$rule[,8])) {if (object.cls$rule[,8][i] == "small") object.cls$rule[,8][i] = "Pouca"}
for (i in 1:length(object.cls$rule[,8])) {if (object.cls$rule[,8][i] == "medium") object.cls$rule[,8][i] = "Media"}
for (i in 1:length(object.cls$rule[,8])) {if (object.cls$rule[,8][i] == "large") object.cls$rule[,8][i] = "Muita"}
for (i in 1:length(object.cls$rule[,8])) {if (object.cls$rule[,8][i] == "very.large") object.cls$rule[,8][i] = "Extrema"}

object.cls$rule[,10] <- c("Tamanho_fila")

for (i in 1:length(object.cls$rule[,12])) {if (object.cls$rule[,12][i] == "very.small") object.cls$rule[,12][i] = "Muito Pequeno"}
for (i in 1:length(object.cls$rule[,12])) {if (object.cls$rule[,12][i] == "small") object.cls$rule[,12][i] = "Pequeno"}
for (i in 1:length(object.cls$rule[,12])) {if (object.cls$rule[,12][i] == "medium") object.cls$rule[,12][i] = "Medio"}
for (i in 1:length(object.cls$rule[,12])) {if (object.cls$rule[,12][i] == "large") object.cls$rule[,12][i] = "Grande"}
for (i in 1:length(object.cls$rule[,12])) {if (object.cls$rule[,12][i] == "very.large") object.cls$rule[,12][i] = "Muito Grande"}

object.cls$rule[,14] <- c("Tempo_verde")

for (i in 1:length(object.cls$rule[,16])) {if (object.cls$rule[,16][i] == "very.small") object.cls$rule[,16][i] = "Muito Rapido"}
for (i in 1:length(object.cls$rule[,16])) {if (object.cls$rule[,16][i] == "small") object.cls$rule[,16][i] = "Rapido"}
for (i in 1:length(object.cls$rule[,16])) {if (object.cls$rule[,16][i] == "medium") object.cls$rule[,16][i] = "Tempo Medio"}
for (i in 1:length(object.cls$rule[,16])) {if (object.cls$rule[,16][i] == "large") object.cls$rule[,16][i] = "Demorado"}
for (i in 1:length(object.cls$rule[,16])) {if (object.cls$rule[,16][i] == "very.large") object.cls$rule[,16][i] = "Muito Demorado"}

colnames(object.cls$varinp.mf) <- c("Muito Baixo",   "Baixo",   "Medio", "Intenso", "Muito Intenso",
				    "Muito Pouca",   "Pouca",   "Media", "Muita",   "Extrema",
				    "Muito Pequeno", "Pequeno", "Medio", "Grande",  "Muito Grande")

colnames(object.cls$varout.mf) <- c("Muito Rápido", "Rapido", "Tempo Medio", "Demorado", "Muito Demorado")

object.cls$rule[,1] <- c("Se")
object.cls$rule[,3] <- c("=")
object.cls$rule[,5] <- c("e")
object.cls$rule[,7] <- c("=")
object.cls$rule[,9] <- c("e")
object.cls$rule[,11] <- c("=")
object.cls$rule[,13] <- c("entao")
object.cls$rule[,15] <- c("=")

### Display the FRBS model
#summary(object.cls)
#
### Plot the membership functions
#plotMF(object.cls)

traffic.class.denorm <- denorm.data(traffic.class, matrix(traffic.data.range.desnorm[,4],ncol=1,byrow = TRUE), min.scale = 0, max.scale = 1)
res.test.denorm <- denorm.data(res.test, matrix(traffic.data.range.desnorm[,4],ncol=1,byrow = TRUE), min.scale = 0, max.scale = 1)

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


