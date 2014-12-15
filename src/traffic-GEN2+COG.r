source("traffic-base.r")

## Set the method and its parameters. In this case we use WM algorithm
method.type <- "GFS.THRIFT"

control <- list(popu.size = 5, num.labels = 7, persen_cross = 0.8,
     max.gen = 5, persen_mutant = 0.3, type.tnorm = "MIN", type.snorm = "MAX", type.defuz = "COG",
     type.implication.func = "ZADEH", name = "Traffic")


## Learning step: Generate fuzzy model
object.cls <- frbs.learn(traffic.train, traffic.data.range, method.type, control)

### Predicting step: Predict newdata
res.test <- predict(object.cls, traffic.tst)

source("output.r")

