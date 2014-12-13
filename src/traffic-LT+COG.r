source("traffic-base.r")

## Set the method and its parameters. In this case we use WM algorithm
method.type <- "GFS.THRIFT"


control <- list(popu.size = 10, num.labels = 7, persen_mutant = 0.3, max.gen = 10,
     mode.tuning = "GLOBAL", type.tnorm = "MIN", type.snorm = "MAX", type.implication.func = "ZADEH",
     type.defuz = "WAM", rule.selection = TRUE, name = "Traffic")



## Learning step: Generate fuzzy model
object.cls <- frbs.learn(traffic.train, traffic.data.range, method.type, control)

### Predicting step: Predict newdata
res.test <- predict(object.cls, traffic.tst)

source("output.r")

