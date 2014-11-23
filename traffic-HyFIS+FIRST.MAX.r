source("traffic-base.r")

## Set the method and its parameters. In this case we use WM algorithm
method.type <- "HYFIS"
control <- list(num.labels = 5, max.iter = 50, step.size = 0.01, type.tnorm = "MIN", type.snorm = "MAX", type.defuz = "FIRST.MAX", type.implication.func = "ZADEH", name = "Traffic-HyFIS")

## Learning step: Generate fuzzy model
object.cls <- frbs.learn(traffic.train, traffic.data.range, method.type, control)

### Predicting step: Predict newdata
res.test <- predict(object.cls, traffic.tst)

source("output.r")
