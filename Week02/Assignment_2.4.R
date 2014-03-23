#assignment 2, problem 4
FluTrain = read.csv("FluTrain.csv")
str(FluTrain)
which.max(ILI)
which.max(FluTrain$ILI)
FluTrain[303]
FluTrain[303,]
which.max(FluTrain$Queries)
hist(FluTrain$ILI)
plot(log(FluTrain$ILI), FluTrain$Queries)
plot(FluTrain$ILI, FluTrain$Queries)
plot(log(FluTrain$ILI), FluTrain$Queries)
plot(FluTrain$ILI, FluTrain$Queries)
plot(log(FluTrain$ILI), FluTrain$Queries)
plot(FluTrain$ILI, FluTrain$Queries)
plot(log(FluTrain$ILI), FluTrain$Queries)
FluTrend1 = lm(log(ILI) ~ Queries, data=FluTrain)
summary(FluTrend1)
cor(log(FluTrain$ILI), FluTrain$Queries)
corr = cor(log(FluTrain$ILI), FluTrain$Queries)
corr^2
FluTest = read.csv("FluTest.csv")
PredTest1 = exp(predict(FluTrend1, newdata=FluTest))
fix(PredTest1)
fix(PredTest1)
FluTest
predTest1[[11]]
predTest1[11]
predTest
predTest1
fix(PredTest1)
PredTest1
PredTest1[11]
FluTest[11]
FluTest[11,]
estILI = 2.187378
obsILI = 2.293422
(obsILI - estILI)/obsILI
sqrt(sum((FluTest$ILI - PredTest1)^2)/52)
install.packages("zoo")
library(zoo)
ILILag2 = lag(zoo(FluTrain$ILI), -2, na.pad=TRUE)
FluTrain$ILILag2 = coredata(ILILag2)
is.na(FluTrain$ILILag2)
sum(is.na(FluTrain$ILILag2))
cor(FluTrain$ILILag2, FluTrain$ILI)
cor(FluTrain$ILILag2, FluTrain$ILI, na.rm=TRUE)
plot(log(FluTrain$ILILag2), log(FluTrain$ILI)
)
FluTrend2 = lm(log(ILI) ~ Queries + log(ILILag2), data = FluTrain)
summary(FluTrend2)
predTest2 = predict(FluTrend2, newdata = FluTest)
ILILag2 = lag(zoo(FluTest$ILI), -2, na.pad=TRUE)
FluTest$ILILag2 = coredata(ILILag2)
predTest2 = predict(FluTrend2, newdata = FluTest)
sqrt(sum((FluTest$ILI - predTest2)^2)/52)
sqrt(sum((FluTest$ILI - predTest2)^2)/52)
FluTest$ILI - predTest2
(FluTest$ILI - predTest2)^2
sum((FluTest$ILI - predTest2)^2)
sum((FluTest$ILI - predTest2)^2, na.rm = TRUE)
sqrt(sum((FluTest$ILI - predTest2)^2, na.rm = TRUE)/52)
nrow(FluTrain)
FluTrain$ILILag2[417]
FluTest$ILILag2[1] = FluTrain$ILI[416]
FluTest$ILILag2[2] = FluTrain$ILI[417]
FluTest$ILILag2[1]
FluTest$ILILag2[2]
