
library(frbs)

traffic.data.numlinvar.in <- 4

traffic.data.numlinvar.out <- 1

traffic.data.length <- 150

traffic.data <- matrix(,traffic.data.length, traffic.data.numlinvar.out + traffic.data.numlinvar.in )

#Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
traffic.data[1  ,]    <-  c(      5.1    ,     3.5     ,     1.4    ,     0.2 ,    1 )  
traffic.data[2  ,]    <-  c(      4.9    ,     3.0     ,     1.4    ,     0.2 ,    1 )
traffic.data[3  ,]    <-  c(      4.7    ,     3.2     ,     1.3    ,     0.2 ,    1 )
traffic.data[4  ,]    <-  c(      4.6    ,     3.1     ,     1.5    ,     0.2 ,    1 )
traffic.data[5  ,]    <-  c(      5.0    ,     3.6     ,     1.4    ,     0.2 ,    1 )
traffic.data[6  ,]    <-  c(      5.4    ,     3.9     ,     1.7    ,     0.4 ,    1 )
traffic.data[7  ,]    <-  c(      4.6    ,     3.4     ,     1.4    ,     0.3 ,    1 )
traffic.data[8  ,]    <-  c(      5.0    ,     3.4     ,     1.5    ,     0.2 ,    1 )
traffic.data[9  ,]    <-  c(      4.4    ,     2.9     ,     1.4    ,     0.2 ,    1 )
traffic.data[10 ,]    <-  c(      4.9    ,     3.1     ,     1.5    ,     0.1 ,    1 )
traffic.data[11 ,]    <-  c(      5.4    ,     3.7     ,     1.5    ,     0.2 ,    1 )
traffic.data[12 ,]    <-  c(      4.8    ,     3.4     ,     1.6    ,     0.2 ,    1 )
traffic.data[13 ,]    <-  c(      4.8    ,     3.0     ,     1.4    ,     0.1 ,    1 )
traffic.data[14 ,]    <-  c(      4.3    ,     3.0     ,     1.1    ,     0.1 ,    1 )
traffic.data[15 ,]    <-  c(      5.8    ,     4.0     ,     1.2    ,     0.2 ,    1 )
traffic.data[16 ,]    <-  c(      5.7    ,     4.4     ,     1.5    ,     0.4 ,    1 )
traffic.data[17 ,]    <-  c(      5.4    ,     3.9     ,     1.3    ,     0.4 ,    1 )
traffic.data[18 ,]    <-  c(      5.1    ,     3.5     ,     1.4    ,     0.3 ,    1 )
traffic.data[19 ,]    <-  c(      5.7    ,     3.8     ,     1.7    ,     0.3 ,    1 )
traffic.data[20 ,]    <-  c(      5.1    ,     3.8     ,     1.5    ,     0.3 ,    1 )
traffic.data[21 ,]    <-  c(      5.4    ,     3.4     ,     1.7    ,     0.2 ,    1 )
traffic.data[22 ,]    <-  c(      5.1    ,     3.7     ,     1.5    ,     0.4 ,    1 )
traffic.data[23 ,]    <-  c(      4.6    ,     3.6     ,     1.0    ,     0.2 ,    1 )
traffic.data[24 ,]    <-  c(      5.1    ,     3.3     ,     1.7    ,     0.5 ,    1 )
traffic.data[25 ,]    <-  c(      4.8    ,     3.4     ,     1.9    ,     0.2 ,    1 )
traffic.data[26 ,]    <-  c(      5.0    ,     3.0     ,     1.6    ,     0.2 ,    1 )
traffic.data[27 ,]    <-  c(      5.0    ,     3.4     ,     1.6    ,     0.4 ,    1 )
traffic.data[28 ,]    <-  c(      5.2    ,     3.5     ,     1.5    ,     0.2 ,    1 )
traffic.data[29 ,]    <-  c(      5.2    ,     3.4     ,     1.4    ,     0.2 ,    1 )
traffic.data[30 ,]    <-  c(      4.7    ,     3.2     ,     1.6    ,     0.2 ,    1 )
traffic.data[31 ,]    <-  c(      4.8    ,     3.1     ,     1.6    ,     0.2 ,    1 )
traffic.data[32 ,]    <-  c(      5.4    ,     3.4     ,     1.5    ,     0.4 ,    1 )
traffic.data[33 ,]    <-  c(      5.2    ,     4.1     ,     1.5    ,     0.1 ,    1 )
traffic.data[34 ,]    <-  c(      5.5    ,     4.2     ,     1.4    ,     0.2 ,    1 )
traffic.data[35 ,]    <-  c(      4.9    ,     3.1     ,     1.5    ,     0.2 ,    1 )
traffic.data[36 ,]    <-  c(      5.0    ,     3.2     ,     1.2    ,     0.2 ,    1 )
traffic.data[37 ,]    <-  c(      5.5    ,     3.5     ,     1.3    ,     0.2 ,    1 )
traffic.data[38 ,]    <-  c(      4.9    ,     3.6     ,     1.4    ,     0.1 ,    1 )
traffic.data[39 ,]    <-  c(      4.4    ,     3.0     ,     1.3    ,     0.2 ,    1 )
traffic.data[40 ,]    <-  c(      5.1    ,     3.4     ,     1.5    ,     0.2 ,    1 )
traffic.data[41 ,]    <-  c(      5.0    ,     3.5     ,     1.3    ,     0.3 ,    1 )
traffic.data[42 ,]    <-  c(      4.5    ,     2.3     ,     1.3    ,     0.3 ,    1 )
traffic.data[43 ,]    <-  c(      4.4    ,     3.2     ,     1.3    ,     0.2 ,    1 )
traffic.data[44 ,]    <-  c(      5.0    ,     3.5     ,     1.6    ,     0.6 ,    1 )
traffic.data[45 ,]    <-  c(      5.1    ,     3.8     ,     1.9    ,     0.4 ,    1 )
traffic.data[46 ,]    <-  c(      4.8    ,     3.0     ,     1.4    ,     0.3 ,    1 )
traffic.data[47 ,]    <-  c(      5.1    ,     3.8     ,     1.6    ,     0.2 ,    1 )
traffic.data[48 ,]    <-  c(      4.6    ,     3.2     ,     1.4    ,     0.2 ,    1 )
traffic.data[49 ,]    <-  c(      5.3    ,     3.7     ,     1.5    ,     0.2 ,    1 )
traffic.data[50 ,]    <-  c(      5.0    ,     3.3     ,     1.4    ,     0.2 ,    1 )
traffic.data[51 ,]    <-  c(      7.0    ,     3.2     ,     4.7    ,     1.4 ,2 )
traffic.data[52 ,]    <-  c(      6.4    ,     3.2     ,     4.5    ,     1.5 ,2 )
traffic.data[53 ,]    <-  c(      6.9    ,     3.1     ,     4.9    ,     1.5 ,2 )
traffic.data[54 ,]    <-  c(      5.5    ,     2.3     ,     4.0    ,     1.3 ,2 )
traffic.data[55 ,]    <-  c(      6.5    ,     2.8     ,     4.6    ,     1.5 ,2 )
traffic.data[56 ,]    <-  c(      5.7    ,     2.8     ,     4.5    ,     1.3 ,2 )
traffic.data[57 ,]    <-  c(      6.3    ,     3.3     ,     4.7    ,     1.6 ,2 )
traffic.data[58 ,]    <-  c(      4.9    ,     2.4     ,     3.3    ,     1.0 ,2 )
traffic.data[59 ,]    <-  c(      6.6    ,     2.9     ,     4.6    ,     1.3 ,2 )
traffic.data[60 ,]    <-  c(      5.2    ,     2.7     ,     3.9    ,     1.4 ,2 )
traffic.data[61 ,]    <-  c(      5.0    ,     2.0     ,     3.5    ,     1.0 ,2 )
traffic.data[62 ,]    <-  c(      5.9    ,     3.0     ,     4.2    ,     1.5 ,2 )
traffic.data[63 ,]    <-  c(      6.0    ,     2.2     ,     4.0    ,     1.0 ,2 )
traffic.data[64 ,]    <-  c(      6.1    ,     2.9     ,     4.7    ,     1.4 ,2 )
traffic.data[65 ,]    <-  c(      5.6    ,     2.9     ,     3.6    ,     1.3 ,2 )
traffic.data[66 ,]    <-  c(      6.7    ,     3.1     ,     4.4    ,     1.4 ,2 )
traffic.data[67 ,]    <-  c(      5.6    ,     3.0     ,     4.5    ,     1.5 ,2 )
traffic.data[68 ,]    <-  c(      5.8    ,     2.7     ,     4.1    ,     1.0 ,2 )
traffic.data[69 ,]    <-  c(      6.2    ,     2.2     ,     4.5    ,     1.5 ,2 )
traffic.data[70 ,]    <-  c(      5.6    ,     2.5     ,     3.9    ,     1.1 ,2 )
traffic.data[71 ,]    <-  c(      5.9    ,     3.2     ,     4.8    ,     1.8 ,2 )
traffic.data[72 ,]    <-  c(      6.1    ,     2.8     ,     4.0    ,     1.3 ,2 )
traffic.data[73 ,]    <-  c(      6.3    ,     2.5     ,     4.9    ,     1.5 ,2 )
traffic.data[74 ,]    <-  c(      6.1    ,     2.8     ,     4.7    ,     1.2 ,2 )
traffic.data[75 ,]    <-  c(      6.4    ,     2.9     ,     4.3    ,     1.3 ,2 )
traffic.data[76 ,]    <-  c(      6.6    ,     3.0     ,     4.4    ,     1.4 ,2 )
traffic.data[77 ,]    <-  c(      6.8    ,     2.8     ,     4.8    ,     1.4 ,2 )
traffic.data[78 ,]    <-  c(      6.7    ,     3.0     ,     5.0    ,     1.7 ,2 )
traffic.data[79 ,]    <-  c(      6.0    ,     2.9     ,     4.5    ,     1.5 ,2 )
traffic.data[80 ,]    <-  c(      5.7    ,     2.6     ,     3.5    ,     1.0 ,2 )
traffic.data[81 ,]    <-  c(      5.5    ,     2.4     ,     3.8    ,     1.1 ,2 )
traffic.data[82 ,]    <-  c(      5.5    ,     2.4     ,     3.7    ,     1.0 ,2 )
traffic.data[83 ,]    <-  c(      5.8    ,     2.7     ,     3.9    ,     1.2 ,2 )
traffic.data[84 ,]    <-  c(      6.0    ,     2.7     ,     5.1    ,     1.6 ,2 )
traffic.data[85 ,]    <-  c(      5.4    ,     3.0     ,     4.5    ,     1.5 ,2 )
traffic.data[86 ,]    <-  c(      6.0    ,     3.4     ,     4.5    ,     1.6 ,2 )
traffic.data[87 ,]    <-  c(      6.7    ,     3.1     ,     4.7    ,     1.5 ,2 )
traffic.data[88 ,]    <-  c(      6.3    ,     2.3     ,     4.4    ,     1.3 ,2 )
traffic.data[89 ,]    <-  c(      5.6    ,     3.0     ,     4.1    ,     1.3 ,2 )
traffic.data[90 ,]    <-  c(      5.5    ,     2.5     ,     4.0    ,     1.3 ,2 )
traffic.data[91 ,]    <-  c(      5.5    ,     2.6     ,     4.4    ,     1.2 ,2 )
traffic.data[92 ,]    <-  c(      6.1    ,     3.0     ,     4.6    ,     1.4 ,2 )
traffic.data[93 ,]    <-  c(      5.8    ,     2.6     ,     4.0    ,     1.2 ,2 )
traffic.data[94 ,]    <-  c(      5.0    ,     2.3     ,     3.3    ,     1.0 ,2 )
traffic.data[95 ,]    <-  c(      5.6    ,     2.7     ,     4.2    ,     1.3 ,2 )
traffic.data[96 ,]    <-  c(      5.7    ,     3.0     ,     4.2    ,     1.2 ,2 )
traffic.data[97 ,]    <-  c(      5.7    ,     2.9     ,     4.2    ,     1.3 ,2 )
traffic.data[98 ,]    <-  c(      6.2    ,     2.9     ,     4.3    ,     1.3 ,2 )
traffic.data[99 ,]    <-  c(      5.1    ,     2.5     ,     3.0    ,     1.1 ,2 )
traffic.data[100,]    <-  c(      5.7    ,     2.8     ,     4.1    ,     1.3 ,2 )
traffic.data[101,]    <-  c(      6.3    ,     3.3     ,     6.0    ,     2.5 , 3 )
traffic.data[102,]    <-  c(      5.8    ,     2.7     ,     5.1    ,     1.9 , 3 )
traffic.data[103,]    <-  c(      7.1    ,     3.0     ,     5.9    ,     2.1 , 3 )
traffic.data[104,]    <-  c(      6.3    ,     2.9     ,     5.6    ,     1.8 , 3 )
traffic.data[105,]    <-  c(      6.5    ,     3.0     ,     5.8    ,     2.2 , 3 )
traffic.data[106,]    <-  c(      7.6    ,     3.0     ,     6.6    ,     2.1 , 3 )
traffic.data[107,]    <-  c(      4.9    ,     2.5     ,     4.5    ,     1.7 , 3 )
traffic.data[108,]    <-  c(      7.3    ,     2.9     ,     6.3    ,     1.8 , 3 )
traffic.data[109,]    <-  c(      6.7    ,     2.5     ,     5.8    ,     1.8 , 3 )
traffic.data[110,]    <-  c(      7.2    ,     3.6     ,     6.1    ,     2.5 , 3 )
traffic.data[111,]    <-  c(      6.5    ,     3.2     ,     5.1    ,     2.0 , 3 )
traffic.data[112,]    <-  c(      6.4    ,     2.7     ,     5.3    ,     1.9 , 3 )
traffic.data[113,]    <-  c(      6.8    ,     3.0     ,     5.5    ,     2.1 , 3 )
traffic.data[114,]    <-  c(      5.7    ,     2.5     ,     5.0    ,     2.0 , 3 )
traffic.data[115,]    <-  c(      5.8    ,     2.8     ,     5.1    ,     2.4 , 3 )
traffic.data[116,]    <-  c(      6.4    ,     3.2     ,     5.3    ,     2.3 , 3 )
traffic.data[117,]    <-  c(      6.5    ,     3.0     ,     5.5    ,     1.8 , 3 )
traffic.data[118,]    <-  c(      7.7    ,     3.8     ,     6.7    ,     2.2 , 3 )
traffic.data[119,]    <-  c(      7.7    ,     2.6     ,     6.9    ,     2.3 , 3 )
traffic.data[120,]    <-  c(      6.0    ,     2.2     ,     5.0    ,     1.5 , 3 )
traffic.data[121,]    <-  c(      6.9    ,     3.2     ,     5.7    ,     2.3 , 3 )
traffic.data[122,]    <-  c(      5.6    ,     2.8     ,     4.9    ,     2.0 , 3 )
traffic.data[123,]    <-  c(      7.7    ,     2.8     ,     6.7    ,     2.0 , 3 )
traffic.data[124,]    <-  c(      6.3    ,     2.7     ,     4.9    ,     1.8 , 3 )
traffic.data[125,]    <-  c(      6.7    ,     3.3     ,     5.7    ,     2.1 , 3 )
traffic.data[126,]    <-  c(      7.2    ,     3.2     ,     6.0    ,     1.8 , 3 )
traffic.data[127,]    <-  c(      6.2    ,     2.8     ,     4.8    ,     1.8 , 3 )
traffic.data[128,]    <-  c(      6.1    ,     3.0     ,     4.9    ,     1.8 , 3 )
traffic.data[129,]    <-  c(      6.4    ,     2.8     ,     5.6    ,     2.1 , 3 )
traffic.data[130,]    <-  c(      7.2    ,     3.0     ,     5.8    ,     1.6 , 3 )
traffic.data[131,]    <-  c(      7.4    ,     2.8     ,     6.1    ,     1.9 , 3 )
traffic.data[132,]    <-  c(      7.9    ,     3.8     ,     6.4    ,     2.0 , 3 )
traffic.data[133,]    <-  c(      6.4    ,     2.8     ,     5.6    ,     2.2 , 3 )
traffic.data[134,]    <-  c(      6.3    ,     2.8     ,     5.1    ,     1.5 , 3 )
traffic.data[135,]    <-  c(      6.1    ,     2.6     ,     5.6    ,     1.4 , 3 )
traffic.data[136,]    <-  c(      7.7    ,     3.0     ,     6.1    ,     2.3 , 3 )
traffic.data[137,]    <-  c(      6.3    ,     3.4     ,     5.6    ,     2.4 , 3 )
traffic.data[138,]    <-  c(      6.4    ,     3.1     ,     5.5    ,     1.8 , 3 )
traffic.data[139,]    <-  c(      6.0    ,     3.0     ,     4.8    ,     1.8 , 3 )
traffic.data[140,]    <-  c(      6.9    ,     3.1     ,     5.4    ,     2.1 , 3 )
traffic.data[141,]    <-  c(      6.7    ,     3.1     ,     5.6    ,     2.4 , 3 )
traffic.data[142,]    <-  c(      6.9    ,     3.1     ,     5.1    ,     2.3 , 3 )
traffic.data[143,]    <-  c(      5.8    ,     2.7     ,     5.1    ,     1.9 , 3 )
traffic.data[144,]    <-  c(      6.8    ,     3.2     ,     5.9    ,     2.3 , 3 )
traffic.data[145,]    <-  c(      6.7    ,     3.3     ,     5.7    ,     2.5 , 3 )
traffic.data[146,]    <-  c(      6.7    ,     3.0     ,     5.2    ,     2.3 , 3 )
traffic.data[147,]    <-  c(      6.3    ,     2.5     ,     5.0    ,     1.9 , 3 )
traffic.data[148,]    <-  c(      6.5    ,     3.0     ,     5.2    ,     2.0 , 3 )
traffic.data[149,]    <-  c(      6.2    ,     3.4     ,     5.4    ,     2.3 , 3 )
traffic.data[150,]    <-  c(      5.9    ,     3.0     ,     5.1    ,     1.8 , 3 )

traffic.shuffled <- traffic.data[sample(nrow(traffic.data)),]

train <- round( (66/100)*nrow(traffic.shuffled))        # Método HoldOut -> 66% para treinamento e 33% para teste
test <- (train+1)

traffic.train <- traffic.shuffled[1:train,]
traffic.tst <- traffic.shuffled[test:nrow(traffic.shuffled),1:4]
traffic.class <- matrix(traffic.shuffled[test:nrow(traffic.shuffled),5], ncol = 1)

traffic.data.range <- apply(traffic.shuffled[,], 2,range)

## Set the method and its parameters. In this case we use FRBCS.W algorithm
method.type <- "GFS.FR.MOGUL"
#control <- list(num.labels = 7, type.mf = "GAUSSIAN", type.tnorm = "MIN", type.snorm = "MAX", type.implication.func = "ZADEH")
#
control <- list(persen_cross = 0.6, max.iter = 10, max.gen = 10, max.tune = 10, persen_mutant = 0.9,
	       	epsilon = 0.4, name = "Traffic")
## Learning step: Generate fuzzy model
object.cls <- frbs.learn(traffic.train, traffic.data.range, method.type, control)

### Predicting step: Predict newdata
res.test <- predict(object.cls, traffic.tst)
#
### Display the FRBS model
summary(object.cls)
#
### Plot the membership functions
plotMF(object.cls)






