getwd()
setwd("C:/Users/dca80/Desktop/DATA/R_DATA")
getwd()
Cars<-as.data.frame(read.csv("ToyotaCorolla.csv"))

colnames(Cars)
str(Cars)

Price_mean<-mean(Cars$Price)
Price_max<-max(Cars$Price)
Price_Min<-min(Cars$Price)

Age_mean<-mean(Cars$Age_08_04)
Age_max<-max(Cars$Age_08_04)
Age_Min<-min(Cars$Age_08_04)

library(rpart)

fit<-rpart(Price ~ Age_08_04+KM+Fuel_Type+HP+Automatic+Doors+Quarterly_Tax+Mfr_Guarantee+
                  Guarantee_Period+Airco+Automatic_airco+CD_Player+Powered_Windows+Sport_Model
                 +Tow_Bar,data = Cars, method = "anova", control = rpart.control(minsplit=30L, cp=0.001))

fit<-rpart(Price ~ .,data = Cars, Method = "anova", control = rpart.control(minsplit=30L, cp=0.001))

help(rpart)

plotcp(fit)
plot(fit, uniform=TRUE, 
     main="Regression Tree for Price ")
text(fit, use.n=TRUE, all=TRUE, cex=.8)