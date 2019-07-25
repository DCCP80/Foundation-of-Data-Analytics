#Hypothesis testing
#Read the .csv in as dataframe
samplesbycounty= as.data.frame(
  read.csv("C:/Users/damrine/Desktop/STUFF/DATA/Samples_by_County.csv")
)
#checking the first ten rows
samplesbycounty[1:10,]
#Testing the third column only or percent of samples by county
prcnt<-samplesbycounty[,3]
#Had to convert this from factor to numeric because of the "%" sign.
prcnt_test<-as.numeric(sub("%","",prcnt))/100
#checking the data
prcnt_test
#Run the simple t-test with null hypothesis as the mean is greater than 50%
t.test(prcnt_test,mu=50, alternative = "less")