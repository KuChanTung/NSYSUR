#N054020006
#N064220008
#N064220009

#load CSV #
titanic=read.csv("titanic.csv")

#set all empty strings as NA #
#sum(is.na(titanic))#
titanic$Age[titanic$Age==""]=NA
titanic$Cabin[titanic$Cabin==""]=NA

#Sort your data by "Age" in ascending order #
SA=sort(titanic$Age)

#Convert "Survived", "Sex", "Embarked", "Pclass" into factors #
Survived=factor(titanic$Survived)
Sex=factor(titanic$Sex)
Embarked=factor(titanic$Embarked)
Pclass=factor(titanic$Pclass)

#Count the number of missing values (NAs) for each column  #
NA_sum_na=sum(is.na(titanic))


#3
data("mtcars")
mtcars_data = subset(mtcars, gear >= 4 & mtcars$carb > 2, select = c(mpg, disp, hp, drat))
mtcars_data
mtcars_data_or <- mtcars_data[order(mtcars_data$mpg),]
mtcars_data_or