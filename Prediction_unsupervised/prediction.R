##task - PREDICTION_UNSUPERVISED ML
dt<-read.csv("Iris.csv")
head(dt)
tail(dt)                 
str(dt)                        
summary(dt)                    

#Using K-means method for clustering data
Data<-dt[2:7]
str(Data)
plot(Data,main="The width and length of sepal and petal",pch = 20,cex=2)

#calculating The optimum No. of clusters
tot_wss<-c()
for(i in 1:15)
{
  cl<-kmeans(Data,centers = i)
  tot_wss[i]<-cl$tot.withinss
}
plot(x=1:15,col="Red",y=tot_wss,type="b",                      
     xlab="Number of Clusters",
     ylab="Within groups sum of squares")

## By seeing gragh we can say optimmun No. of cluster is because 
## line changes immediately after cluster 2

## Perform K-Means with 2 clusters
km1 = kmeans(Data, 2, nstart=100)
print(km1)
plot(Data,col=(km1$cluster),main="K-Means result with 2 clusters",pch=20,cex=2)