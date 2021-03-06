library(caTools)
library(rpart)
library(rpart.plot)
library(tm)
library(SnowballC)
setwd("C:/Thirumal/Learning/edX/The Analytics Edge/Week 05/Assignment")
wiki = read.csv("wiki.csv", stringsAsFactors = FALSE)
wiki$Vandal = as.factor(wiki$Vandal)
str(wiki)
table(wiki$Vandal)
corpusAdded = Corpus(VectorSource(wiki$Added))
length(stopwords("english")
)
corpusAdded = tm_map(corpusAdded, removeWords, stopwords("english"))
corpusAdded = tm_map(corpusAdded, stemDocument)
dtmAdded = DocumentTermMatrix(corpusAdded)
dtmAdded
sparseAdded = removeSparseTerms(dtmAdded, 0.997)
sparseAdded
wordsAdded = as.data.frame(as.matrix(sparseAdded))
colnames(wordsAdded) = paste("A", colnames(wordsAdded))
corpusRemoved = Corpus(VectorSource(wiki$Removed))
corpusRemoved = tm_map(corpusRemoved, removeWords, stopwords("english"))
corpusRemoved = tm_map(corpusRemoved, stemDocument)
dtmRemoved = DocumentTermMatrix(corpusRemoved)
sparseRemoved = removeSparseTerms(dtmRemoved, 0.997)
wordsRemoved = as.data.frame(as.matrix(sparseRemoved))
colnames(wordsRemoved) = paste("R", colnames(wordsRemoved))
wikiWords = cbind(wordsAdded, wordsRemoved)
wikiWords$Vandal = wiki$Vandal
set.seed(123)
split = sample.split(wikiWords$Vandal, 0.7)
train = subset(wikiWords, split == TRUE)
test = subset(wikiWords, split == FALSE)
table(test$Vandal)
618/1163
wikiCART = rpart(Vandal ~ ., data = train, method = "class")
predictWikiCART = predict(wikiCART, newdata = test, type = "class")
table(test$Vandal, predictWikiCART)
(618+12)/1163
prp(wikiCART)
wikiWords2 = wikiWords
wikiWords2$HTTP = ifelse(grepl("http",wiki$Added,fixed=TRUE), 1, 0)
table(wikiWords2$HTTP)
wikiTrain2 = subset(wikiWords2, spl==TRUE)
wikiTrain2 = subset(wikiWords2, split==TRUE)
wikiTest2 = subset(wikiWords2, split==FALSE)
wikiCART2 = rpart(Vandal ~ ., data = wikiTrain2, method = "class" )
predWikiCART2 = predict(wikiCART2, newdata = wikiTest2, type = "class")
table(wikiTest2$Vandal, predictWikiCART2)
table(wikiTest2$Vandal, predWikiCART2)
(609+57)/(1163)
wikiWords2$NumWordsAdded = rowSums(as.matrix(dtmAdded))
wikiWords2$NumWordsRemoved = rowSums(as.matrix(dtmRemoved))
mean(wikiWords2$NumWordsAdded)
wikiTrain3 = subset(wikiWords2, split == TRUE)
wikiTest3 = subset(wikiWords2, split == FALSE)
wikiCART3 = rpart(Vandal ~ ., data = wikiTrain3, method = "class")
predWikiCART3 = predict(wikiCART3, newdata = wikiTest3, type = "class")
table(wikiTest3$Vandal, predWikiCART3)
(514+248)/1163
wikiWords3 = wikiWords2
wikiWords3$Minor = wiki$Minor
wikiWords3$Loggedin = wiki$Loggedin
wikitrain4 = subset(wikiWords3, split == TRUE)
wikitest4 = subset(wikiWords3, split == FALSE)
wikicart4 = rpart(Vandal ~ ., data = wikitrain4, method = "class")
pred4 = predict(wikicart4, newdata = wikitest4, type ="class")
table(wikitest4$Vandal, pred4)
(595+241)/1163
prp(wikicart4)
