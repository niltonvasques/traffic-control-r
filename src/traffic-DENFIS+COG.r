source("traffic-base.r")

## Set the method and its parameters. In this case we use WM algorithm
method.type <- "DENFIS"
control <- list(Dthr = 0.1, max.iter = 15, step.size = 0.1, d = 2, name = "Traffic")

## Learning step: Generate fuzzy model
object.cls <- frbs.learn(traffic.train, traffic.data.range, method.type, control)

### Predicting step: Predict newdata
res.test <- predict(object.cls, traffic.tst)

source("output.r")

