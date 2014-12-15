source("traffic-base-frbs.r")

## Set the method and its parameters. In this case we use WM algorithm
method.type <- "GFS.LT.RS"


control <- list(popu.size = 20, num.labels = 7, persen_mutant = 0.3, max.gen = 100,
     mode.tuning = "LOCAL", type.tnorm = "MIN", type.snorm = "MAX", type.implication.func = "ZADEH",
     type.defuz = "COG", rule.selection = TRUE, name = "Traffic")



## Learning step: Generate fuzzy model
object.cls <- frbs.learn(traffic.train, traffic.data.range, method.type, control)

### Predicting step: Predict newdata
res.test <- predict(object.cls, traffic.tst)

source("output.r")


