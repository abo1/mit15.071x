setwd("C:/Thirumal/Learning/edX/The Analytics Edge/Week 01")
data = read.csv('mvtWeek1.csv')
data
summary(data)
str(data)
max(data$ID)
max(data$ID)
min(data$Beat)
count(data$Arrest == TRUE)
summary(data)
Sys.Date()
data$Date[1]
summary(data$Date)
DateConvert = as.Date(strptime(data$Date, "%m/%d/%y %H:%M"))
median(DateConvert)
median(data$Date)
DateConvert = as.Date(strptime(data$Date, "%m/%d/%y %H:%M"))
median(DateConvert)
mvt = data
mvt
summary(mvt)
mvt$Month = months(DateConvert)
mvt$Weekday = weekdays(DateConvert)
mvt$Date = DateConvert
summary(mvt)
mvt[1,]
summary(mvt$Month)
min(mvt$Month)
tabulate(mvt$Month)
summary(mvt)
table(mvt$Month)
min(table(mvt$Month))
max(table(mvt$Weekday))
table(mvt$Weekday)
sort(table(mvt$Weekday))
arrestedTheft = mvt[mvt$Arrest = TRUE]
arrestedTheft = mvt[mvt$Arrest == TRUE]
arrestedTheft = mvt[mvt$Arrest == TRUE,]
summary(arrestedTheft)
summary(mvt)
table(arrestedTheft)
summary(arrestedTheft$Month)
table(arrestedTheft$Month)
max(table(arrestedTheft$Month))
hist(mvt$Date, breaks=100)

#BOXPLOT EXAMPLES
x=c(0,4,15, 1, 6, 3, 20, 5, 8, 1, 3)
x
sum(x)
length(x)
mean(x)
median(x)
hist(x)
sort(x)
y=1:6
y
median(y)
sort(x)
quantile(x,0.25)
quantile(x,0.75)
quantile(x,c(0,0.25,0.5,0.75,1))
summary(x)
range(x)
IQR(x)
boxplot(x,range = 0)
boxplot(x)
#BOXPLOT EXAMPLE END

View(arrestedTheft)
boxplot(arrestedTheft)
boxplot(arrestedTheft$Date)
boxplot(arrestedTheft$Date, range = 0)
arrestedTheft(1,)
arrestedTheft[1,]
noArrestTheft = mvt[mvt$Arrest == FALSE,]
table(arrestedTheft)
table(arrestedTheft$Date)
arrestedTheft[Year(arrestedTheft$Date) == 2001]
arrestedTheft[year(arrestedTheft$Date) == 2001]
Now = Sys.Date()
Now
year(Now)
as.numeric(format(Now, "%Y"))
arrestedTheft[as.numeric(format(arrestedTheft, "%Y")) == 2001]
arrestedTheft[as.numeric(format(arrestedTheft$Date, "%Y")) == 2001]
Years = as.numeric(format(d, "%Y")) == 2001
Years = as.numeric(format(arrestedTheft$Date, "%Y")) == 2001
Years
arrestedTheft[1,]
arrestedTheft[1,2]
table(format(arrestedTheft$Date, "%Y"))
table(format(noArrestTheft$Date, "%Y"))
table(format(mvt$Date, "%Y"))
1212/14280
550/14092
sort(table(mvt$LocationDescription))
sort(table(mvt$LocationDescription), decreasing=TRUE)
sort(table(mvt$LocationDescription), decreasing=TRUE, drop=5)
sort(table(mvt$LocationDescription), decreasing=TRUE)[1:5]
sort(table(mvt$LocationDescription), decreasing=TRUE)[1:10]
sort(table(mvt$LocationDescription), decreasing=TRUE)[1:6]
summary(mvt$LocationDescription)
summary(mvt)
Top5 = subset(mvt, LocationDescription == "STREET" | LocationDescription == "ALLEY" | LocationDescription == "PARKING LOT/GARAGE(NON.RESID.)" | LocationDescription == "GAS STATION" | LocationDescription == "DRIVEWAY - RESIDENTIAL")
summary(Top5)
table(mvt$LocationDescription)
sort(table(mvt$LocationDescription), decreasing=TRUE)[1:6]
table(Top5$LocationDescription)
sort(table(mvt$LocationDescription), decreasing=TRUE)[1:6]
sort(table(Top5$LocationDescription), decreasing=TRUE)[1:6]
summary(Top5)
str(Top5)
Top5$LocationDescription = factor(Top5$LocationDescription)
table(Top5$LocationDescription)
arrestedTop5 = Top5[Arrest = TRUE]
arrestedTop5 = Top5[Top5$Arrest = TRUE]
arrestedTop5 = Top5[Top5$Arrest == TRUE]
Top5[1,]
Top5$Arrest == TRUE]
Top5$Arrest == TRUE
Top5[Top5$Arrest == TRUE]
Top5Arrest = Top5[Top5$Arrest == TRUE]
Top5Arrest = mvt[Top5$Arrest == TRUE]
table(Top5$Arrest, Top5$LocationDescription)
table(Top5$LocationDescription, Top5$Arrest == TRUE)
table(Top5$LocationDescription, Top5$Arrest)
table(Top5$LocationDescription)
table(Top5$LocationDescription)[2,]
table(Top5$LocationDescription)[1]
table(Top5$LocationDescription)[1,1]
table(Top5$LocationDescription)[2]
table(Top5$LocationDescription, Top5$Arrest)[1]
table(Top5$LocationDescription, Top5$Arrest)[2,]
table(Top5$LocationDescription, Top5$Arrest)[,2]
table(Top5$LocationDescription, Top5$Arrest)[,2]/table(Top5$LocationDescription)
sort(table(Top5$LocationDescription, Top5$Arrest)[,2]/table(Top5$LocationDescription)), decreasing = TRUE)
sort(table(Top5$LocationDescription, Top5$Arrest)[,2]/table(Top5$LocationDescription)))
sort(table(Top5$LocationDescription, Top5$Arrest)[,2]/table(Top5$LocationDescription))
sort(table(Top5$LocationDescription, Top5$Arrest)[,2]/table(Top5$LocationDescription), decreasing = TRUE)
table(Top5$LocationDescription, Top5$Weekday)
table(Top5$LocationDescription, Top5$Weekday)[3,]
sort(table(Top5$LocationDescription, Top5$Weekday)[3,], decreasing = TRUE)
sort(table(Top5$LocationDescription, Top5$Weekday)[2,], decreasing = FALSE)
