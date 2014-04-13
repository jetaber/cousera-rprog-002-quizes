#question 1,2,3 are non-programming questions

print("question 4")
x <- 4L
print(class(x))

print("question 5")
x <- c(4, TRUE)
print(class(x))

print("question 6")
x <- c(1,3, 5) 
y <- c(3, 2, 10)
print(cbind(x, y))

#question 7 is not a programming question

print("question 8")
x <- list(2, "a", "b", TRUE)
print(x[[2]])

print("question 9")
x <- 1:4
y <- 2:3
print(x + y)

print("question 10 - replace all numbers above 10 with 4")
x <- c(17, 14, 4, 5, 13, 12, 10)
print(x[x > 10] <- 4)

#for remaining questions, read in the data file
data <- read.table(unz("rprog-data-quiz1_data.zip", "hw1_data.csv"), header=T, quote="\"", sep=",")

print("question 11 - dump column names")
print(colnames(data))

print("question 12 - dump first two rows")
print(data[1:2,])

print("question 13 - row count")
print(nrow(data))

print("question 14 - dump last two rows")
print(data[(nrow(data)-1):(nrow(data)),])

print("question 15 - What is the value of Ozone in the 47th row?")
print(data[47,])

print("question 16 - How many missing values are in the Ozone column of this data frame?")
print(sum(is.na(data$Ozone)))

print("question 17 -What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation ")
print(mean(data$Ozone,na.rm=TRUE))

print("question 18 - Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?")
completeData <- data[complete.cases(data),]
matchingData <- subset(completeData, Ozone > 31 & Temp > 90)
print(mean(matchingData$Solar.R))

print("question 19 - What is the mean of \"Temp\" when \"Month\" is equal to 6?")
print(mean(subset(data, Month==6)$Temp))

print("question 20 - What was the maximum ozone value in the month of May (i.e. Month = 5)?")
print(max(subset(completeData, Month==5)$Ozone))






