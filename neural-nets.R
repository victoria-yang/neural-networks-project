#  title: "Neural Networks"
#  author: "Chieh-An Yang"

library(neuralnet)
library(dplyr)

## Data
D1 <-read.csv("attention1.csv")
D2 <-read.csv("attention2.csv")

## Build a neural net that predicts attention based on webcam images
net <- neuralnet(attention ~ eyes + face.forward + chin.up, D1, hidden = 1, threshold = 0.01)
plot(net)

## Alternative
net2 <- neuralnet(attention ~ eyes + face.forward + chin.up, D1, hidden = 2, threshold = 0.01)
plot(net2)

## Create a new data frame that only includes the input layers
D3 <- D2[,1:3]

## Create predictions using neural net
net.prediction <- neuralnet::compute(net, D3)
pred.attention<-net.prediction$net.result
class_prediction <- data.frame(ifelse(pred.attention > 0.50,1,0))

test<-cbind(D2$attention,class_prediction)
names(test)[names(test) == "D2$attention"] <- "actual"
names(test)[names(test) == "ifelse.pred.attention...0.5..1..0."] <- "predict"
test$correct <-ifelse(test$actual==test$predict,1,0)
accuracy<- sum(test$correct)/nrow(test)
# 0.94

confusionMatrix(D2[,4],class_prediction)
