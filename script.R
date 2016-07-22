
linm <- lm(faithful$eruptions ~ faithful$waiting)
plot(faithful$waiting, faithful$eruptions)
abline(linm)

library(cluster) # Make sure cluster package is loaded
clusters <- clara(faithful, k = 2, metric = "euclidean", stand = FALSE, samples = 5)
summary(clusters)
