library(dplyr)
#Consider the following student score data. 
score=data.frame(
  Math=c(85,86,67,87,96,73),
  English=c(70,87,84,87,89,87),
  History=c(85,87,78,97,70,90),
  stringsAsFactors = F
)

score %>% str()
# Calculate the mean for each subject and total score for each student.#
#Feel free to copy & paste below if you'd like. #

subject_mean=summarise(score,mean(Math),mean(English),mean(History));subject_mean
stu_total=rowSums(score);stu_total

#Find those students in the student score dataset whose scores are all above 85.#
score_filter=filter(score,Math>85&English>85&History>85);score_filter

require("datasets")
data("airquality")
# airquality %>% str()
# NA_sum=sum(is.na(airquality));NA_sum
filter_NA=na.omit(airquality);filter_NA