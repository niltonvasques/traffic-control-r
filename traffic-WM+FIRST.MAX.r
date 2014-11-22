source("traffic-base.r")

## Set the method and its parameters. In this case we use WM algorithm
method.type <- "WM"
control <- list(num.labels = 5, type.mf = "GAUSSIAN", type.defuz = "FIRST.MAX", type.tnorm = "MIN", type.snorm = "MAX", type.implication.func = "MIN", name = "Traffic")

## Learning step: Generate fuzzy model
object.cls <- frbs.learn(traffic.train, traffic.data.range, method.type, control)

### Predicting step: Predict newdata
res.test <- predict(object.cls, traffic.tst)

source("output.r")

