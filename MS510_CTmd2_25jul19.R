


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
                           
generate a simple histogram for each variable
hist(cer_qval$calories, xlab = "Calories")
#use Par to split the panels into columns
par(mfcol = c(4,4))
# All 13 histograms
hist(cer_qval$calories, xlab = "Calories")
hist(cer_qval$protein, xlab = "Protein")
hist(cer_qval$fat, xlab = "Fat")
hist(cer_qval$sodium, xlab = "Sodium")
hist(cer_qval$fiber, xlab = "Fiber")
hist(cer_qval$carbo, xlab = "Carbohydrates")
hist(cer_qval$sugars, xlab = "Sugars")
hist(cer_qval$potass, xlab = "Potassium")
hist(cer_qval$vitamins, xlab = "Vitamins")
hist(cer_qval$shelf, xlab = "Shelf Height")
hist(cer_qval$weight, xlab = "Weight")
hist(cer_qval$cups, xlab = "Cups")
hist(cer_qval$rating, xlab = "Customer Rating")

#Generate a box plot of consumer rating 
#vs Shelf height
par(mfcol = c(1,2))
hist(cer_qval$rating, xlab = "Customer Rating")
boxplot(cereals$rating ~ cereals$shelf, xlab = "Shelf Height",
        ylab = "Customer Rating")
     

#Option 1
par(mfcol = c(1,2))
hist(cereals$calories, xlab = "Calories")
boxplot(cereals$calories ~ cereals$type, xlab = "Cold or Hot",
        ylab = "Calories")                          
                           
                           
                           
 
            
            
