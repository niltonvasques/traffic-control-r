source("traffic-base-frbs.r")

## Set the method and its parameters. In this case we use WM algorithm
method.type <- "GFS.LT.RS"


control <- list(popu.size = 10, num.labels = 5, persen_mutant = 0.5, max.gen = 10,
     mode.tuning = "LOCAL", type.tnorm = "MIN", type.snorm = "MAX", type.implication.func = "MIN",
     type.defuz = "COG", rule.selection = TRUE, name = "Traffic")



## Learning step: Generate fuzzy model
object.cls <- frbs.learn(traffic.train, traffic.data.range, method.type, control)

### Predicting step: Predict newdata
res.test <- predict(object.cls, traffic.tst)

source("output.r")


