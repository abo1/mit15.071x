#week 3 assigment 1
setwd("C:/Thirumal/Learning/edX/The Analytics Edge/Week 03/Assignments")
songs = read.csv("songs.csv")
str(songs)
songs_2010 = subset(songs, year == 2010)
str(songs_2010)
songs_MJ = subset(songs, artistname == "Michael Jackson")
songs_MJ = subset(songs, artistname == "Michael Jackson")
table(songs_MJ$Top10)
songs_MJ_Top10 = subset(songs, Top10 == 1)
songs_MJ_Top10$songtitle
songs_MJ_Top10 = subset(songs_MJ, Top10 == 1)
songs_MJ_Top10$songtitle
songs_MJ_Top10$songtitle[1,]
songs_MJ_Top10[1,]
songs_MJ_Top10[5,]$songtitle
songs_MJ_Top10[4,]$songtitle
songs_MJ_Top10[3,]$songtitle
songs_MJ_Top10[2,]$songtitle
songs_MJ_Top10[1,]$songtitle
table(songs$timesignature)
which.max(songs$tempo)
songs[6206]
songs[6206,]
songs[6206,]$songtitle
SongsTrain = subset(songs, year <= 2009)
SongsTest = subset(songs, year == 2010)
nonvars = c("year", "songtitle", "artistname", "songID", "artistID")
SongsTrain = SongsTrain[ , !(names(SongsTrain) %in% nonvars) ]
SongsTest = SongsTest[ , !(names(SongsTest) %in% nonvars) ]
SongsLog1 = glm(Top10 ~ ., data=SongsTrain, family=binomial)
summary(SongsLog1)
corr(SongsTrain$loudness, SongsTrain$energy)
cor(SongsTrain$loudness, SongsTrain$energy)
SongsLog2 = glm(Top10 ~ . - loudness, data=SongsTrain, family=binomial)
summary(SongsLog2)
SongsLog3 = glm(Top10 ~ . - energy, data=SongsTrain, family=binomial)
summary(SongsLog3)
SongsPred1 = predict(SongsLog3, type="response")
summary(SongsPred1)
table(SongsTrain$Top10,SongsPred1 > 0.45)
5953+248
6201/7201
SongsPred1 = predict(SongsLog3, newdata = SongsTest, type="response")
table(SongsTrain$Top10,SongsPred1 > 0.45)
table(SongsTest$Top10,SongsPred1 > 0.45)
309+19
328+45
328/373
table(songs$Top10)
6455/7574
table(SongsTest$Top10)
314/(314+59)
SongsPred2 = predict(SongsLog3, type="response")
table(SongsTrain$Top10,SongsPred1 > 0.45)
table(SongsTrain$Top10,SongsPred2 > 0.45)
19/59
309/314
