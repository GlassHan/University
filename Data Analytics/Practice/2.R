wages<-read.csv("wages.csv")
lm(earn~poly(height,3,raw=T),data=wages)
lm(earn~height+I(height^2)+I(height^3),data=wages)
lm(earn~(height+sex+race)^3,data=wages)

install.packages("class")
library(class)
iris<-read.csv("iris.csv")
idx<-sample(
            x=c("train","valid"),
            size=nrow(iris),
            replace=T,
            prob=c(6,4))
train_x<-iris[idx=="train",1:4]
train_y<-iris[idx=="train",5]
valid_x<-iris[idx=="valid",1:4]
valid_y<-iris[idx=="valid",5]

class.model<-knn(train=train_x,test=valid_x,cl=train_y,k=5)
accuracy(valid_y,class.model)
