# Ajustando ao nosso problema

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
