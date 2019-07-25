


##for class Option 2
getwd()
cereals<- as.data.frame(read.csv("Cereals.csv"))
head(cereals)
summary(cereals)
str(cereals)


#Compute mean,standard dev., min, max, median,length, and missing values 
#of CRIM

colnames(cereals)
cer_qval<-cereals[,-1:-3]

data.frame(mean=sapply(cer_qval,mean,na.rm=TRUE),
             sd=sapply(cer_qval,sd,na.rm=TRUE),
            min=sapply(cer_qval,min,na.rm=TRUE),
            max=sapply(cer_qval,max,na.rm=TRUE),
            median=sapply(cer_qval,median,na.rm=TRUE),
            length=sapply(cer_qval,length),
            mis.val=sapply(cer_qval, function(x)
            sum(length(which(is.na(x)))))) 
            
            
