.libPaths()\
library(rmarkdown)



getwd()

#Read the .csv into a data frame
Cars<-as.data.frame(read.csv("ToyotaCorolla.csv"))

# A Quick Exploration of the data structure
colnames(Cars)
str(Cars)

#Comparing the Max, min and mean of price
#and the age of the cars
Price_mean<-mean(Cars$Price)
Price_max<-max(Cars$Price)
Price_Min<-min(Cars$Price)

Age_mean<-mean(Cars$Age_08_04)
Age_max<-max(Cars$Age_08_04)
Age_Min<-min(Cars$Age_08_04)

#Loading the necessary package for Regressions trees
library(rpart)

#A simple Regression tree 
#with a single node limited to 30 splits, 
#and cp=0.001
fit<-rpart(Price ~ Age_08_04+KM+Fuel_Type+HP+Automatic+Doors+Quarterly_Tax+Mfr_Guarantee+
             Guarantee_Period+Airco+Automatic_airco+CD_Player+Powered_Windows+Sport_Model
           +Tow_Bar,data = Cars, method = "anova", control = rpart.control(minsplit=30L, cp=0.001))


#plotting the tree and adding text
plotcp(fit)
plot(fit, uniform=TRUE, 
     main="Regression Tree for Price ")
text(fit, use.n=TRUE, all=TRUE, cex=.8)

Houses<-as.data.frame(read.csv("BostonHousing.csv"))