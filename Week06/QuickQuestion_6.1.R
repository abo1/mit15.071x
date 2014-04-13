godfather = c(0,1,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0)
titanic = c(0,1,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0)
diff = godfather-titanic
diff
diff2 = diff^2
sqrt(diff2)
sqrt(sum(diff2))
setwd("C:/Thirumal/Learning/edX/The Analytics Edge/Week 06/Assignment")
movies = read.table("u.item")
movies = read.table("u.item", header = FALSE, sep="|")
movies = read.table("u.item", header = FALSE, sep="|", quote="\"")
str(movies)
colnames(movies) = c("ID", "Title", "ReleaseDate", "VideoReleaseDate", "IMDB", "Unknown", "Action", "Adventure", "Animation", "Childrens", "Comedy", "Crime", "Documentary", "Drama", "Fantasy", "FilmNoir", "Horror", "Musical", "Mystery", "Romance", "SciFi", "Thriller", "War", "Western")
str(movies)
movies$ID = NULL
movies$Release = NULL
str(movies)
movies$ReleaseDate = NULL
movies$VideoReleaseDate = NULL
movies$IMDB = NULL
str(movies)
movies = unique(movies)
str(movies)
distances = dist(movies[2:20], method="euclidean")
clusterMovies = hclust(distances, method="ward")
plot(clusterMovies)
plot(clusterMovies)
clusterGroups = cutree(clusterMovies, k=10)
tapply(movies$Action, clusterGroups, mean)
tapply(movies$Romance, clusterGroups, mean)
subset(movies, Title=="Men in Black (1997)")
clusterGroups[257]
cluster2 = subset(movies, clusterGroups == 2)
cluster2$Title[1:10]
table(movies$Comedy)
table(movies$Western)
table(movies$Comedy, movies$Drama)
table(movies$Romance, movies$Drama)
clusterGroups2 = cutree(clusterMovies, k=2)
myq2 = subset(movies, clusterGroups2 == 2)
myq2 = subset(movies, clusterGroups2 == 1)
str(myq2)
myq2 = subset(movies, clusterGroups2 == 2)
str(myq2)
