#Week 03, assignment 03
parole = read.csv("parole.csv")
str(parole)
table(parole$violator == TRUE)
table(parole$male)
table(parole$race)
table(parole$age)
table(parole$state)
table(parole$time.served)
table(parole$max.sentence)
table(parole$multiple.offences)
table(parole$multiple.offenses)
table(parole$crime)
table(parole$violator)
str(parole$crime)
parole$state = as.factor(parole$state)
str(parole)
parole$crime = as.factor(parole$crime)
summary(crime)
summary(parole$crime)
set.seed(144)
library(caTools)
split = sample.split(parole$violator, SplitRatio = 0.7)
train = subset(parole, split == TRUE)
test = subset(parole, split == FALSE)
View(test)
View(train)
train2 = subset(parole, split == TRUE)
View(train2)
View(train2)
View(train)
View(train)
set.seed(144)
library(caTools)
split = sample.split(parole$violator, SplitRatio = 0.7)
train = subset(parole, split == TRUE)
test = subset(parole, split == FALSE)
rm(train2)
model1 = glm(voilator ~ ., data=parole, family="binomial")
model1 = glm(violator ~ ., data=parole, family="binomial")
summary(model1)
model1 = glm(violator ~ ., data=train, family="binomial")
summary(model1)
View(train)
model1
model1$coefficients
vector1 = c(1 \#Intercept
vector1 = c(1 #Intercept
, 1 #male
, 1 #race
, 50 #age
, 0 #state2
, 0 #state3
, 1 #state4
, 3 #time.served
, 12 #max.sentence
, 0 #multiple.offenses
, 1 #crime2
, 0 #crime3
, 0 #crime4
)
vector1
vector1 * model1$coefficients
model1$coefficients
model1$coefficients * vector1
sum(model1$coefficients * vector1)
model1$coefficients
str(model1$coefficients)
model1$coefficients$num
model1$coefficients$[1]
model1$coefficients$[1,]
model1$coefficients[[1]]
mapply
mapply('*', model1$coefficients, vector1)
mapply(`*`, model1$coefficients, vector1)
data.frame(mapply(`*`, model1$coefficients, vector1))
model1
model1 = glm(violator ~ ., data=parole, family="binomial")
summary(model1)
model1$coefficients
model1 = glm(violator ~ ., data=train, family="binomial")
summary(model1)
model1$coefficients
vector1
model1$coefficients * vector1
sum(model1$coefficients * vector1)
1/(e^-(-5.097418) + 1)
1/(exp(-(-5.097418)) + 1)
exp(-5.097418)
exp(-5.097418)
vector1 = c(1 #Intercept
, 1 #male
, 1 #race
, 50 #age
, 0 #state2
, 0 #state3
, 0 #state4
, 3 #time.served
, 12 #max.sentence
, 0 #multiple.offenses
, 1 #crime2
, 0 #crime3
, 0 #crime4
)
vector1
sum(model1$coefficients * vector1)
exp(-1.70063)
1/(exp(1.70063) + 1)
pred1 = predict(model1, newdata = test, type = "response")
summary(pred1)
table(test$violator, pred1 > 0.5)
#sensitivity = tp/(actual 1's)
12/33
#specificity = tn/(actual 0's)
167/(167+12)
(167+12)/(167+12 + 11+ 12)
12/(11+12)
table(test$violator)
179/(179+23)
table(test$violator, pred1 > 0.3)
table(test$violator, pred1 > 0.7)
table(test$violator, pred1 > 0.5)
hist(pred1)
hist(test$violator)
hist(test$violator, pred1 > 0.5)
hist(pred1 > 0.5, test$violator)
pred2 = predict(model1)
summary(pred2)
pred2 = predict(model1, type = "response")
summary(pred2)
table(train$violator, pred2 > 0.5)
table(train$violator, pred2 > 0.3)
library(ROCR)
ROCRpred = prediction(test, test$violator)
ROCRpred = prediction(pred1, test$violator)
ROCRpred
ROCRperf = performance(ROCRpred, "tpr", "fpr")
ROCRperf
plot(ROCRperf)
as.numeric(performance(ROCRpred, "auc")@y.values)
