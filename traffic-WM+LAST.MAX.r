source("traffic-base.r")

## Set the method and its parameters. In this case we use WM algorithm
method.type <- "WM"
control <- list(num.labels = 5, type.mf = "GAUSSIAN", type.defuz = "LAST.MAX", type.tnorm = "MIN", type.snorm = "MAX", type.implication.func = "ZADEH", name = "Traffic")

## Learning step: Generate fuzzy model
object.cls <- frbs.learn(traffic.train, traffic.data.range, method.type, control)

### Predicting step: Predict newdata
res.test <- predict(object.cls, traffic.tst)

source( "adjust.r")
source("output.r")
