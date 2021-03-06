setwd("C:/Thirumal/Learning/edX/The Analytics Edge/Week 02/Assignment")
#assignment 2, problem 3
pisaTrain = read.csv("pisa2009train.csv")
pisaTest = read.csv("pisa2009test.csv")
str(pisaTrain)
tapply(pisaTrain$readingScore, pisaTrain$male, mean )
summary(pisaTrain)
pisaTrain = na.omit(pisaTrain)
pisaTest = na.omit(pisaTest)
str(pisaTrain)
str(pisaTest)
isfactor(pisaTrain$grade)
is.factor(pisaTrain$grade)
is.factor(pisaTrain$raceeth)
levels(pisaTrain$raceeth)
pisaTrain$raceeth = relevel(pisaTrain$raceeth, "White")
pisaTest$raceeth = relevel(pisaTest$raceeth, "White")
levels(pisaTrain$raceeth)
lmScore = lm(readingScore ~ grade + male + raceeth + preschool + expectBachelors + motherHS + motherBachelors + fatherHS + fatherBachelors + motherWork + fatherWork + selfBornUS + motherBornUS + fatherBornUS + englishAtHome + computerForSchoolWork + read30MinsADay + minutesPerWeekEnglish + studentsInEnglish + schoolHasLibrary + publicSchool + urban + schoolSize)
lmScore = lm(readingScore ~ grade + male + raceeth + preschool + expectBachelors + motherHS + motherBachelors + fatherHS + fatherBachelors + motherWork + fatherWork + selfBornUS + motherBornUS + fatherBornUS + englishAtHome + computerForSchoolWork + read30MinsADay + minutesPerWeekEnglish + studentsInEnglish + schoolHasLibrary + publicSchool + urban + schoolSize, data = pisaTrain)
lmScore = lm(readingScore ~ grade + male + raceeth + preschool + expectBachelors + motherHS + motherBachelors + fatherHS + fatherBachelors + motherWork + fatherWork + selfBornUS + motherBornUS + fatherBornUS + englishAtHome + computerForSchoolwork + read30MinsADay + minutesPerWeekEnglish + studentsInEnglish + schoolHasLibrary + publicSchool + urban + schoolSize, data = pisaTrain)
summary(lmScore)
SSE = sum((lmScore$residuals)^2)
SSE
SSE/2414
sqrt(SSE/2414)
predictTest = predict(lmScore, newdata = pisaTest)
summary(predictTest)
637.7 - 353.2
SSE_test = sum((pisaTest$readingScore - predictTest)^2)
SSE_test
sqrt(SSE_test/990)
mean(pisaTrain$readingScore)
SST_test = sum((pisaTest$readingScore - mean(pisaTrain$readingScore))^2)
SST_test
1 - (SSE_test/SST_test)
