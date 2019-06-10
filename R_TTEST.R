# R Hypothesis Tests

install.packages("dplyr")

tScore_before <- c(40, 62, 74, 22, 64, 65, 49, 49, 49)

tScore_after <- c(68, 61, 64, 76, 90, 75, 66, 60, 63)

# Create a data frame

my_data <- data.frame(
  
  group = rep(c("Score Before", "Score After"), each = 9),
  
  scores = c(tScore_before,  tScore_after)
  
)

# Print all data

print(my_data)

#Compute summary statistics by groups

library(dplyr)

group_by(my_data, group) %>%
  
  summarise(
    
    count = n(),
    
    mean = mean(scores, na.rm = TRUE),
    
    sd = sd(scores, na.rm = TRUE)
    
  )

# Compute Unpaired Two Sample t-test

res <- t.test(tScore_before, tScore_after, var.equal = TRUE)

res


# Compute independent t-test

res <- t.test(scores ~ group, data = my_data, var.equal = TRUE)

res

#test whether the average score before score 
#is less than the average after score, type this:

t.test(scores ~ group, data = my_data,
       
       var.equal = TRUE, alternative = "less")



