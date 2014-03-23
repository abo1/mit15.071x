setwd("C:/Thirumal/Learning/edX/The Analytics Edge/Week 02/Assignment")
#assignment 2, problem 2
climate_change = read.csv("climate_change.csv")
#make subset till including 2006 year
str(climate_change)
tset1 = subset(climate_change, climate_change$Year <= 2006)
tset2 = subset(climate_change, climate_change$Year > 2006)
model1 = lm(Temp ~ MEI + CO2 + CH4 + N2O + CFC.11 + CFC.12 + TSI + Aerosols, data=tset1)
summary(model1)
View(climate_change)
View(climate_change)
cor(tset1)
cor(tset1)
sort(cor(tset1))
cor(tset1) > 0.7
reducedModel = lm(Temp ~ MEI + TSI + Aerosols + N20, data=tset1)
reducedModel = lm(Temp ~ MEI + TSI + Aerosols + N2O, data=tset1)
summary(reducedModel)
simplifiedModel = step(model1)
summary(simplifiedModel)
summary(model1)
predictedModel = predict(model1, data=tset2)
summary(predictedModel)
predictedModel
predict(simplifiedModel, tset2)
summary(predict(simplifiedModel, tset2))
summary(predict(simplifiedModel, newdata=tset2))
predictions = predict(simplifiedModel, newdata=tset2)
predictions
tset2$Temp
tset2$Temp - predictions
(tset2$Temp - predictions)^2
sum((tset2$Temp - predictions)^2)
simplifiedModel$residuals
SSE = sum((tset2$Temp - predictions)^2)
SST = sum((tset2$Temp - mean(tset2$Temp))^2)
SST
SSE
1 - (SSE/SST)
tset2
predictTest = predict(simplifiedModel, newdata = tset2)
dim(predictTest)
size(predictTest)
summary(predictTest)
SSE = sum((tset2$Temp - predictTest)^2)
SSE
SST = sum((tset2$Temp - mean(tset2$Temp))^2)
SST
SST = sum((tset2$Temp - mean(tset1$Temp))^2)
SST
1 - (SSE/SST)
