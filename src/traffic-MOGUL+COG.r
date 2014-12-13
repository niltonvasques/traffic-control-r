source("traffic-base.r")

## Set the method and its parameters. In this case we use WM algorithm
method.type <- "GFS.FR.MOGUL"

control <- list(persen_cross = 0.6, max.iter = 100, max.gen = 2, max.tune = 10, persen_mutant = 0.3,
	       	epsilon = 0.4, name = "Traffic")

## Learning step: Generate fuzzy model
object.cls <- frbs.learn(traffic.train, traffic.data.range, method.type, control)

### Predicting step: Predict newdata
res.test <- predict(object.cls, traffic.tst)

source("output.r")

