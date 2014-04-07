install.packages("tm")
install.packages("SnowballC")
setwd("C:/Thirumal/Learning/edX/The Analytics Edge/Week 05/Assignment")
tweets = read.csv("tweets.csv", stringAsFactors = FALSE)
library(tm)
library(SnowballC)
tweets = read.csv("tweets.csv", stringAsFactors = FALSE)
tweets = read.csv("tweets.csv", stringsAsFactors = FALSE)
tweets[1]
tweets[[1]]
str(tweets)
tweets$Negative = as.factor(tweets$Avg <= -1)
table(tweets$Negative)
corpus = Corpus(VectorSource(tweets$Tweet))
corpus
corpus[[1]]
corpus = tm_map(corpus, tolower)
corpus[[1]]
corpus = tm_map(corpus, removePunctuation)
corpus[[1]]
stopwords("english")[1:5]
corpus = tm_map(corpus, removeWords, c("apple", stopwords("english")))
corpus = tm_map(corpus, stemDocument)
frequencies = DocumentTermMatrix(corpus)
inspect(frequencies[1000:1005, 505:515])
sparse = removeSparseTerms(frequencies, 0.995)
sparse
tweetsSparse = as.data.frame(as.matrix(sparse))
colnames(tweetSparse) = make.names(colnames(tweetSparse))
tweetsSparse$Negative = tweets$Negative
library(caTools)
set.seed(123)
split = sample.split(tweetsSparse$Negative, SplitRatio = 0.7)
trainSparse = subset(tweetsSparse, split == TRUE)
testSparse = subset(tweetsSparse, split == FALSE)
library(rpart)
library(rpart.plot)
findFreqTerms(frequencies, lowfreq=100)
tweetLog = glm(Negative ~ ., data = trainSparse, family = "binomial")
predictions = predict(tweetLog, newdata=testSparse, type="response")
table(testSparse$Negative, predictions >= 0.5)
(253+33)/355
